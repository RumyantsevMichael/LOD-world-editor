unit Map;

interface

uses
  DGLE2_types;

type

  TBrushShape = ( bsPoint, bsSquare, bsCircle );

  TBrush = class
    private
      fsize  : Byte;
      fshape : TBrushShape;
      fID    : Byte;
      fLayer : Byte;

      procedure SetSize( value : Byte );
      procedure SetShape( value : TBrushShape );
      procedure SetLayer( value : Byte );
    public
      procedure Draw;

      property size  : Byte        read fsize  write SetSize;
      property shape : TBrushShape read fshape write SetShape;
      property ID    : Byte        read fID    write fID;
      property layer : Byte        read fLayer write SetLayer;
  end;

  PRegion = ^TRegion;
  TRegion = record

    collision  : array [ 1..16, 1..16 ] of Byte;
    ground     : array [ 1..16, 1..16 ] of Byte;
    decoration : array [ 1..16, 1..16 ] of Byte;
    objects    : array [ 1..16, 1..16 ] of Byte;

    x : Integer;
    y : Integer;
    rect : TRectf;
    rect_s : TRectf;

    procedure Generate( x, y : Integer );
    procedure Load;
    procedure Save;

    procedure Render( line : Byte; layer : Byte );
    procedure Update( dt : Single );
    procedure Free;
  end;

  PArea = ^TArea;
  TArea = record
    region : array of array of TRegion;

    x : Integer;
    y : Integer;
    rect : TRectf;
    rect_s : TRectf;

    procedure Generate( x, y : Integer );
    procedure Load;
    procedure Save;

    procedure Render( layer : Byte );
    procedure Update( dt : Single );
    procedure Free;
  end;

  TMap = record
    area : array of array of TArea;

    counter : Integer;
    isFree : Boolean;

    procedure Load( dir : string );
    procedure Save( dir : string );

    procedure Paint( layer : Byte; x, y : Integer; brush : TBrushShape; size : Byte; material : Byte );

    procedure Resize( MapWidth, MapHeight, AreaWidth, AreaHeight : Integer );

    procedure Generate( MapWidth, MapHeight, AreaWidth, AreaHeight : Integer; TileSize : Byte );
    procedure Render( layer : Byte );
    procedure Update( dt : Single );
    procedure Free;
  end;

var
  MAP_WIDTH   : Integer = 1;
  MAP_HEIGHT  : Integer = 1;
  AREA_WIDTH  : Integer = 1;
  AREA_HEIGHT : Integer = 1;

  TILE_SIZE   : Byte = 1;

  TSX : Byte;
  TSY : Byte;

  Brush : TBrush;
  visible : array [ 1..5 ] of Boolean = ( True, True, True, True, True );

implementation

uses
  System.SysUtils, Dialogs,
  System.Math,
  Vcl.ComCtrls,
  Classes,
  IniFiles,

  DGLE2,

  SubSystems,
  Resources,
  Settings,
  Convert,

  Main,
  Form;

var
  MapFile : TMemoryStream;

function ExtractFileNameEx(FileName: string; ShowExtension: Boolean): string;
var
  I: Integer;
  S, S1: string;
begin
  I := Length(FileName);

  if I <> 0 then
  begin
    while (FileName[i] <> '\') and (i > 0) do
      i := i - 1;

    S := Copy(FileName, i + 1, Length(FileName) - i);
    i := Length(S);

    if i = 0 then
    begin
      Result := '';
      Exit;
    end;

    while (S[i] <> '.') and (i > 0) do
      i := i - 1;

    S1 := Copy(S, 1, i - 1);

    if s1 = '' then
      s1 := s;

    if ShowExtension = TRUE then
      Result := s
    else
      Result := s1;
  end
  else
    Result := '';
end;

{ TMap }

procedure TMap.Generate( MapWidth, MapHeight, AreaWidth, AreaHeight : Integer; TileSize : Byte );
var
  i: Integer;
  j: Integer;
begin
  MAP_WIDTH   := MapWidth;
  MAP_HEIGHT  := MapHeight;
  AREA_WIDTH  := AreaWidth;
  AREA_HEIGHT := AreaHeight;

  TILE_SIZE := TileSize;
  TSX := TILE_SIZE;
  TSY := TILE_SIZE;

  SetLength( area, MAP_WIDTH, MAP_HEIGHT );

  for j := 0 to MAP_HEIGHT - 1 do
  for i := 0 to MAP_WIDTH - 1 do
    area[ i, j ].Generate( i, j );

  Free;

  isFree := False;
end;

procedure TMap.Resize(MapWidth, MapHeight, AreaWidth, AreaHeight: Integer);
var
  i: Integer;
  j: Integer;
begin
  MAP_WIDTH   := MapWidth;
  MAP_HEIGHT  := MapHeight;
  AREA_WIDTH  := AreaWidth;
  AREA_HEIGHT := AreaHeight;

  SetLength( area, MAP_WIDTH, MAP_HEIGHT );

  for j := 0 to MAP_HEIGHT - 1 do
  for i := 0 to MAP_WIDTH - 1 do
    area[ i, j ].Generate( i, j );
end;

procedure TMap.Load( dir : string );
var
  i: Integer;
  j: Integer;
  Link : TIniFile;
  ValueList : TStringList;
  item : TListItem;
begin
  MapFile := TMemoryStream.Create;
  MapFile.LoadFromFile( dir );

  MapFile.ReadBuffer( MAP_WIDTH,   1 );
  MapFile.ReadBuffer( MAP_HEIGHT,  1 );
  MapFile.ReadBuffer( AREA_WIDTH,  1 );
  MapFile.ReadBuffer( AREA_HEIGHT, 1 );
  MapFile.ReadBuffer( TILE_SIZE,   1 );

  Generate( MAP_WIDTH, MAP_HEIGHT, AREA_WIDTH, AREA_HEIGHT, TILE_SIZE );

  for j := 0 to MAP_HEIGHT - 1 do
  for i := 0 to MAP_WIDTH - 1 do
    area[ i, j ].Load;

  MapFile.Free;

  Link := TIniFile.Create( ExtractFilePath( dir )+ExtractFileNameEx( dir, false )+'.lodlink' );

    ground_name := Link.ReadString('Ground', 'texture', '' );
    decorations_name := Link.ReadString('Decorations', 'texture', '' );

    if ground_name <> '' then
      MainForm.LoadTileSet( TXT_PATH + ground_name );

    if decorations_name <> '' then
      MainForm.LoadDecorations( TXT_PATH + decorations_name );

    ValueList := TStringList.Create;
    Link.ReadSection('Objects', ValueList);

    for i := 0 to ValueList.Count - 1 do
    begin
      MainForm.LoadObject( TXT_PATH + Link.ReadString('Objects', IntToStr( i + 1 ), '' ) );
    end;

  Link.Free;
end;

procedure TMap.Save( dir : string );
var
  i: Integer;
  j: Integer;
  Link : TIniFIle;
  name : string;
begin
  MapFile := TMemoryStream.Create;

  MapFile.WriteBuffer( MAP_WIDTH,   1 );
  MapFile.WriteBuffer( MAP_HEIGHT,  1 );
  MapFile.WriteBuffer( AREA_WIDTH,  1 );
  MapFile.WriteBuffer( AREA_HEIGHT, 1 );
  MapFile.WriteBuffer( TILE_SIZE,   1 );

  for j := 0 to MAP_HEIGHT - 1 do
  for i := 0 to MAP_WIDTH - 1 do
    area[ i, j ].Save;

  MapFile.SaveToFile( dir );
  MapFile.Free;

  Link := TIniFile.Create( ExtractFilePath( dir )+ExtractFileNameEx( dir, false )+'.lodlink' );

    Link.WriteString('Ground', 'texture', ground_name );
    Link.WriteString('Decorations', 'texture', decorations_name );

    for i := 0 to MainForm.lv_object.Items.Count - 1 do
    begin
      name := ExtractFileName( MainForm.lv_object.Items.Item[ i ].SubItems[ 1 ] );
      Link.WriteString('Objects', IntToStr( i + 1 ), name );
    end;

  Link.Free;
end;

procedure TMap.Render( layer : Byte );
var
  j: Integer;
  i: Integer;
begin
  if layer = 0 then
  begin
    if ts_background <> nil then
      ts_background.Draw2D(
        0, 0,
        MAP_WIDTH * AREA_WIDTH * 16 * TILE_SIZE,
        MAP_HEIGHT * AREA_HEIGHT * 16 * TILE_SIZE
      );
  end;

  for j := 0 to MAP_HEIGHT - 1 do
  for i := 0 to MAP_WIDTH - 1 do
    if IntersectRect( area[ i, j ].rect_s, camera.screen )then
      area[ i, j ].Render( layer );
end;

procedure TMap.Update(dt: Single);
var
  i : Integer;
  j : Integer;
begin
  Inc( counter );

  for j := 0 to MAP_HEIGHT - 1 do
  for i := 0 to MAP_WIDTH - 1 do
  begin
    if IntersectRect( area[ i, j ].rect_s, camera.screen )then
      area[ i, j ].Update( dt );

    area[ i, j ].rect := Rectf(
      area[ i, j ].x * TILE_SIZE * 16 * AREA_WIDTH,
      area[ i, j ].y * TILE_SIZE * 16 * AREA_HEIGHT,
      TILE_SIZE * 16 * AREA_WIDTH,
      TILE_SIZE * 16 * AREA_HEIGHT );

    area[ i, j ].rect_s := Rectf(
      area[ i, j ].rect.x * TSX / TILE_SIZE,
      area[ i, j ].rect.y * TSY / TILE_SIZE,
      area[ i, j ].rect.width * TSX / TILE_SIZE,
      area[ i, j ].rect.height * TSY / TILE_SIZE );
  end;
end;

procedure TMap.Free;
var
  i: Integer;
  j: Integer;
begin
  for j := 0 to MAP_HEIGHT - 1 do
  for i := 0 to MAP_WIDTH - 1 do
    area[ i, j ].Free;

  isFree := True;
end;


procedure TMap.Paint( layer : Byte; x, y : Integer; brush : TBrushShape; size : Byte; material : Byte );
var
  i : Byte;
  j : Byte;
  cX : Integer;
  cY : Integer;
  area_x, area_y : Byte;
  region_x, region_y : Byte;
  tile_x, tile_y : Byte;
  region : PRegion;
begin
  if brush = bsCircle then
    if size mod 2 = 0 then
      inc( size );

  for j := 0 to size - 1 do
  for i := 0 to size - 1 do
  begin
    cX := x - size div 2 + i;
    cY := y - size div 2 + j;

    area_x := Ceil( cX / ( 16 * AREA_WIDTH )) - 1;
    area_y := Ceil( cY / ( 16 * AREA_HEIGHT )) - 1;
    region_x := Ceil( cX / 16 ) - AREA_WIDTH * area_x - 1;
    region_y := Ceil( cY / 16 ) - AREA_HEIGHT * area_y - 1;
    tile_x := cX - ( Ceil( cX / 16 ) - 1 ) * 16;
    tile_y := cY - ( Ceil( cY / 16 ) - 1 ) * 16;

    if
      ( area_x < 0 ) or ( area_x > MAP_WIDTH - 1 ) or ( area_y < 0 ) or ( area_y > MAP_HEIGHT - 1 ) or
      ( region_x < 0 ) or ( region_x > AREA_WIDTH - 1 ) or ( region_y < 0 ) or ( region_y > AREA_HEIGHT - 1 ) or
      ( tile_x < 1 ) or ( tile_x > 16 ) or ( tile_y < 1 ) or ( tile_y > 16 )
    then
      Continue;

    region := @area[ area_x, area_y ].region[ region_x, region_y ];

    case brush of
      bsSquare:
      case layer of
        0: region.collision[ tile_x, tile_y ] := material;
        1: region.ground[ tile_x, tile_y ] := material;
        2: if Random( 15 ) = 1 then region.decoration[ tile_x, tile_y ] := material;
        3: region.objects[ tile_x, tile_y ] := material;
      end;

      bsCircle:
      case layer of
        0: if Sqrt( Sqr( cX - x ) + Sqr( cY - y )) <= size div 2 then
             region.collision[ tile_x, tile_y ] := material;
        1: if Sqrt( Sqr( cX - x ) + Sqr( cY - y )) <= size div 2 then
             region.ground[ tile_x, tile_y ] := material;
        2: if Sqrt( Sqr( cX - x ) + Sqr( cY - y )) <= size div 2 then
             if Random( 15 ) = 1 then
               region.decoration[ tile_x, tile_y ] := material;
        3:
      end;
    end;
  end;
end;

{ TArea }

procedure TArea.Generate( x, y : Integer );
var
  j: Integer;
  i: Integer;
begin
  Self.x := x;
  Self.y := y;
  rect := Rectf(
    x * TIlE_SIZE * 16 * AREA_WIDTH,
    y * TIlE_SIZE * 16 * AREA_HEIGHT,
    TIlE_SIZE * 16 * AREA_HEIGHT,
    TIlE_SIZE * 16 * AREA_WIDTH );

  SetLength( region, AREA_WIDTH, AREA_HEIGHT );

  for j := 0 to AREA_HEIGHT - 1 do
  for i := 0 to AREA_WIDTH - 1 do
    region[ i, j ].Generate( i, j );
end;

procedure TArea.Render(layer: Byte);
var
  l: Byte;
  x: Integer;
  y: Integer;
begin
  for y := 0 to AREA_HEIGHT - 1 do
  for x := 0 to AREA_WIDTH - 1 do
  for l := 0 to 15 do
    if IntersectRect( region[ x, y ].rect_s, camera.screen ) then
      region[ x, y ].Render( l, layer );

  Render2D.DrawRect( rect_s, Color4($0, 96));
end;

procedure TArea.Update(dt: Single);
var
  j: Integer;
  i: Integer;
begin
  for j := 0 to AREA_HEIGHT  - 1 do
  for i := 0 to AREA_WIDTH - 1 do
  begin
    if IntersectRect( region[ i, j ].rect_s, camera.screen ) then
    begin
      region[ i, j ].Update( dt );
    end;

    region[ i, j ].rect := Rectf(
      rect.x + region[ i, j ].x * TILE_SIZE * 16,
      rect.y + region[ i, j ].y * TILE_SIZE * 16,
      TILE_SIZE * 16,
      TILE_SIZE * 16 );

    region[ i, j ].rect_s := Rectf(
      region[ i, j ].rect.x * TSX / TILE_SIZE,
      region[ i, j ].rect.y * TSY / TILE_SIZE,
      region[ i, j ].rect.width * TSX / TILE_SIZE,
      region[ i, j ].rect.height * TSY / TILE_SIZE );
  end;
end;

procedure TArea.Save;
var
  j: Integer;
  i: Integer;
begin
  for j := 0 to AREA_HEIGHT - 1 do
  for i := 0 to AREA_WIDTH - 1 do
    region[ i, j ].Save;
end;

procedure TArea.Load;
var
  j: Integer;
  i: Integer;
begin
  for j := 0 to AREA_HEIGHT - 1 do
  for i := 0 to AREA_WIDTH - 1do
    region[ i, j ].Load;
end;

procedure TArea.Free;
var
  j: Integer;
  i: Integer;
begin
  for j := 0 to AREA_HEIGHT - 1 do
  for i := 0 to AREA_WIDTH - 1 do
    region[ i, j ].Free;
end;

{ TRegion }

procedure TRegion.Generate( x, y : Integer );
var
  i: Integer;
  j: Integer;
begin
  Self.x := x;
  Self.y := y;
end;

procedure TRegion.Load;
var
  i : Byte;
  j : Byte;
begin
  MapFile.Seek( 0, soCurrent );

  for j := 1 to 16 do
  for i := 1 to 16 do
  begin
    MapFile.Read( collision [ i, j ], 1 );
    MapFile.Read( ground    [ i, j ], 1 );
    MapFile.Read( decoration[ i, j ], 1 );
    MapFile.Read( objects   [ i, j ], 1 );
  end;
end;

procedure TRegion.Save;
var
  i : Byte;
  j : Byte;
begin
  for j := 1 to 16 do
  for i := 1 to 16 do
  begin
    MapFile.WriteBuffer( collision  [ i, j ], 1 );
    MapFile.WriteBuffer( ground     [ i, j ], 1 );
    MapFile.WriteBuffer( decoration [ i, j ], 1 );
    MapFile.WriteBuffer( objects    [ i, j ], 1 );
  end;
end;

procedure TRegion.Render( line : Byte; layer : Byte );
var
  i: Integer;
  j: Integer;
  w: Cardinal;
  h: Cardinal;
begin
  j := line;

  case layer of
    1: // collision
    begin
      if visible[ 1 ] then
        for i := 0 to 15 do
          if collision[ i + 1, j + 1 ] <> 0 then
          begin
            Render2D.DrawRect( Rectf(
              rect.x * TSX / TILE_SIZE + TSX * i,
              rect.y * TSY / TILE_SIZE + TSY * j,
              TSX, TSY ), Color4($9d1414, collision[ i + 1, j + 1 ] ), PF_FILL);
            FntPack.Find('Tahoma').Draw2D(
              Round( rect.x * TSX / TILE_SIZE + TSX * i ),
              Round( rect.y * TSY / TILE_SIZE + TSY * j ),
              IntToPAChar( collision[ i + 1, j + 1 ] ), Color4($0) );
          end;
    end;

    2: // terrain
    begin
      Render2D.BatchRender( BM_AUTO );

      if visible[ 2 ] then
        for i := 0 to 15 do
          if ground[ i + 1, j + 1 ] <> 0 then
            if ts_ground <> nil then
              ts_ground.Draw2D(
                Round( rect.x * TSX/TILE_SIZE + TSX*i - TSX/4 ),
                Round( rect.y * TSY/TILE_SIZE + TSY*j - TSX/4 ),
                TSX + TSX div 2 , TSY + TSY div 2,
                0, ground[ i + 1, j + 1 ] - 1 );

      Render2D.BatchRender( BM_DISABLED );
    end;

    3: // decoration
    begin
      Render2D.BatchRender( BM_AUTO );

      if visible[ 3 ] then
        for i := 0 to 15 do
          if decoration[ i + 1, j + 1 ] <> 0 then
            if ts_decoration <> nil then
              ts_decoration.Draw2D(
                Round( rect.x * TSX/TILE_SIZE + TSX*i ),
                Round( rect.y * TSY/TILE_SIZE + TSY*j ),
                TSX , TSY, 0, decoration[ i + 1, j + 1 ] - 1 );

      Render2D.BatchRender( BM_DISABLED );
    end;

    4: // object
    begin
      if visible[ 4 ] then
        for i := 0 to 15 do
          if objects[ i + 1, j + 1 ] <> 0 then
            if tp_object.Find(IntToStr( objects[ i + 1, j + 1 ] )) <> nil then
            begin
              tp_object.Find(IntToStr( objects[ i + 1, j + 1 ] )).GetDimension( w, h );
              tp_object.Find(IntToStr( objects[ i + 1, j + 1 ] )).Draw2D(
                Round( rect.x * TSX/TILE_SIZE + TSX*i - w / 2 + TSX/2 ),
                Round( rect.y * TSY/TILE_SIZE + TSY*j - h + TSY ),
                w, h );
            end;
    end;

    5: // grid
    begin
      if visible[ 5 ] then
        if camera.scl >= 0.3 then
        begin
          for i := 0 to 15 do
            Render2D.DrawRect( Rectf(
              rect.x * TSX / TILE_SIZE + TSX * i,
              rect.y * TSY / TILE_SIZE + TSY * j,
              TSX, TSY ), Color4($0, 96) );
        end
        else
        if camera.scl >= 0.03 then
          Render2D.DrawRect( rect_s, Color4($0, 96));
    end;
  end;
end;

procedure TRegion.Update(dt: Single);
var
  i: Integer;
  j: Integer;
begin
  for j := 1 to 16 do
  for i := 1 to 16 do
  begin
    //if terrain[ i, j ] = 3 then collision[ i, j ] := 1;
    //if vegetation[ i, j ] <> 0 then collision[ i, j ] := 1;
  end;
end;

procedure TRegion.Free;
var
  i: Integer;
  j: Integer;
begin
  for j := 1 to 16 do
  for i := 1 to 16 do
  begin
    collision [ i, j ] := 0;
    ground    [ i, j ] := 0;
    decoration[ i, j ] := 0;
    objects   [ i, j ] := 0;
  end;
end;

{ TBrush }

procedure TBrush.Draw;
var
  rect : TRectf;
begin
  case shape of
    bsPoint:
    begin
      rect.x := foc_x * TSX + foc_reg.rect_s.x;
      rect.y := foc_y * TSY + foc_reg.rect_s.y;
      rect.width := TSX;
      rect.height := TSY;

      Render2D.DrawRect( rect, Color4($9d1414, 128), PF_FILL );
      Render2D.DrawRect( rect, Color4($9d1414), PF_SMOOTH );
    end;

    bsSquare:
    begin
      rect.x := foc_x * TSX + foc_reg.rect_s.x - (( size div 2 ) * TSX );
      rect.y := foc_y * TSY + foc_reg.rect_s.y - (( size div 2 ) * TSY );
      rect.width := TSX * Brush.size;
      rect.height := TSY * Brush.size;

      Render2D.DrawRect( rect, Color4($9d1414, 128), PF_FILL );
      Render2D.DrawRect( rect, Color4($9d1414), PF_SMOOTH );
    end;

    bsCircle:
    begin
      Render2D.DrawEllipse(
        Point2( foc_x * TSX + foc_reg.rect_s.x + TSX/2, foc_y * TSY + foc_reg.rect_s.y + TSY/2 ),
        Point2( size/2 * TSX * TSX/TILE_SIZE + TSX/2, size/2 * TSY * TSY/TILE_SIZE + TSY/2 ),
        size * TSX, Color4($9d1414, 128), PF_FILL );

      Render2D.DrawEllipse(
        Point2( foc_x * TSX + foc_reg.rect_s.x + TSX/2, foc_y * TSY + foc_reg.rect_s.y + TSY/2 ),
        Point2( size/2 * TSX * TSX/TILE_SIZE + TSX/2, size/2 * TSY * TSY/TILE_SIZE + TSY/2 ),
        size * TSX, Color4($9d1414), PF_SMOOTH );
    end;
  end;
end;

procedure TBrush.SetLayer(value: Byte);
begin
  ID := 0;
  fLayer := value;
end;

procedure TBrush.SetShape(value: TBrushShape);
begin
  fshape := TBrushShape( value );
  if value = bsPoint then size := 1;
end;

procedure TBrush.SetSize(value: Byte);
begin
  if shape <> bsPoint then
  begin
    if value = 0 then value := 1;
    if value < 1 then value := 255;

    fsize := value;

    if MainForm.BindScope.DataObject <> nil then MainForm.exp_BrushSize.Evaluate;
  end;
end;

end.
