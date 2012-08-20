unit Main;

interface

uses
  DGLE2_types,

  Camera,
  Map;

procedure Init;
procedure Render;
procedure Update;
procedure Quit;

function GetMapFocusedPoint: TPoint2;

var
  Map : TMap;

  camera : TCamera;

  foc_area : PArea;
  foc_reg : PRegion;
  foc_x : Byte;
  foc_y : Byte;

implementation

uses
  System.SysUtils,
  System.Math,

  DGLE2,
  Resources,
  SubSystems,
  Settings,
  Convert,
  Form,

  Input,
  UI;

var
  counter : Byte;

  bShowArea : Boolean = True;
  bShowRegion : Boolean = True;

function GetMapFocusedPoint: TPoint2;
begin
  Result.x := ( mouse.state.ix/camera.scl + camera.pos.x - Window.Width/camera.scl/2 ) * TILE_SIZE/TSX ;
  Result.y := ( mouse.state.iy/camera.scl + camera.pos.y - Window.Height/camera.scl/2 ) * TILE_SIZE/TSY ;
end;

procedure Quit;
begin
  EngineCore.QuitEngine;
  MainForm.Close;
end;

procedure Init;
begin
  Input.Init;
  UI.Init;

  Map.isFree := True;

  camera.scl := 1;

  Brush := TBrush.Create;
  Brush.shape := bsPoint;
  Brush.size := 1;
end;

procedure Render;
var
  i : Byte;
  j : Byte;
  rect : TRectf;
begin
  Render2d.SetCamera( camera.pos, 0, Point2( camera.scl, camera.scl ));

    Map.Render( 0 );
    Map.Render( 2 );
    Map.Render( 3 );
    Map.Render( 4 );
    Map.Render( 1 );
    Map.Render( 5 );

    if foc_area <> nil then
    begin
      if bShowArea then
      begin
        Render2D.DrawRect( foc_area.rect_s, Color4($9d1414) );
        FntPack.Find('Tahoma').Draw2D( Round(foc_area.rect_s.x), Round(foc_area.rect_s.y),
          StrToPAChar(IntToStr(foc_area.x)+', '+IntToStr(foc_area.y)), Color4 );
      end;

      if foc_reg <> nil then
      begin
        if bShowRegion then
        begin
          Render2D.DrawRect( foc_reg.rect_s, Color4($9d1414) );
          FntPack.Find('Tahoma').Draw2D( Round(foc_reg.rect_s.x), Round(foc_reg.rect_s.y),
            StrToPAChar(IntToStr(foc_reg.x)+', '+IntToStr(foc_reg.y)), Color4 );
        end;

        Brush.Draw;

        //FntPack.Find('Tahoma').Draw2D( Round(rect.x), Round(rect.y),
        //  StrToPAChar(IntToStr(foc_x)+', '+IntToStr(foc_y)), Color4 );
      end;
    end;

  Render2d.SetCamera( Point2(0,0), 0, Point2( 1, 1 ));

    UI.Render;
end;

procedure Update;
var
  i: Integer;
  j: Integer;
  pos : TPoint2;
begin
  Inc( counter );

  Input.Update;

  UI.Update;

  Map.Update( 1 );

  if EnableUpdate then
  begin
    if keyboard.bLShift then
      Brush.size := Brush.size + mouse.state.iDeltaWheel div 120
    else
      camera.Update;

    pos := GetMapFocusedPoint;

    foc_area := nil;
    for j := 0 to MAP_HEIGHT - 1 do
    for i := 0 to MAP_WIDTH - 1 do
      if PointInRect( pos, map.area[ i, j ].rect ) then
        foc_area := @map.area[ i, j ];

    foc_reg := nil;
    if foc_area <> nil then
      for j := 0 to AREA_HEIGHT - 1 do
      for i := 0 to AREA_WIDTH - 1 do
        if PointInRect( pos, foc_area.region[ i, j ].rect ) then
        begin
          foc_reg := @foc_area.region[ i, j ];
          foc_x := Round( pos.x - foc_reg.rect.x ) div TIlE_SIZE;
          foc_y := Round( pos.y - foc_reg.rect.y ) div TIlE_SIZE;
        end;

    if foc_reg <> nil then
    begin
      if mouse.state.bLeftButton then
      case Brush.layer of
        0: Map.Paint( 0, Ceil( Pos.x / TIlE_SIZE ), Ceil( pos.y / TIlE_SIZE ), Brush.shape, Brush.size, Brush.ID );
        1: Map.Paint( 1, Ceil( Pos.x / TIlE_SIZE ), Ceil( pos.y / TIlE_SIZE ), Brush.shape, Brush.size, Brush.ID );
        2: Map.Paint( 2, Ceil( Pos.x / TIlE_SIZE ), Ceil( pos.y / TIlE_SIZE ), Brush.shape, Brush.size, Brush.ID );
        3: Map.Paint( 3, Ceil( Pos.x / TIlE_SIZE ), Ceil( pos.y / TIlE_SIZE ), Brush.shape, Brush.size, Brush.ID );
      end;

      if mouse.state.bRightButton then
      case Brush.layer of
        0: Map.Paint( 0, Ceil( Pos.x / TIlE_SIZE ), Ceil( pos.y / TIlE_SIZE ), Brush.shape, Brush.size, 0 );
        1: Map.Paint( 1, Ceil( Pos.x / TIlE_SIZE ), Ceil( pos.y / TIlE_SIZE ), Brush.shape, Brush.size, 0 );
        2: Map.Paint( 2, Ceil( Pos.x / TIlE_SIZE ), Ceil( pos.y / TIlE_SIZE ), Brush.shape, Brush.size, 0 );
        3: foc_reg.objects[ foc_x + 1, foc_y + 1 ] := 0;
        //3: Map.Paint( 3, Ceil( Pos.x / TIlE_SIZE ), Ceil( pos.y / TIlE_SIZE ), Brush.shape, Brush.size, 0 );
      end;
    end;
  end;
end;

end.
