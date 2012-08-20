unit UI;

interface

procedure Init;
procedure Render;
procedure Update;

implementation

uses
  System.SysUtils,

  DGLE2,
  DGLE2_types,

  SubSystems,
  Resources,
  Settings,
  Input,
  Convert,
  Main,
  Map;

procedure Init;
begin

end;

procedure Render;
var
  i : Integer;
begin

  for i := 0 to KeyStack.count - 1 do
    FntPack.Find('Tahoma').Draw2D( 10, 110 + 20*i, StrToPAChar( IntToStr(i) +': '+ IntToStr( KeyStack.key[i] )), Color4($0));

  //FntPack.Find('Tahoma').Draw2D( 10, 10, FloatToPAChar( camera.scl ), Color4 );
  FntPack.Find('Tahoma').Draw2D( 10, 30, FloatToPAChar( Brush.layer ), Color4 );
  FntPack.Find('Tahoma').Draw2D( 10, 50, FloatToPAChar( Brush.ID ), Color4 );

  FntPack.Find('Tahoma').Draw2D(
    mouse.state.iX, mouse.state.iY,
    StrToPAChar(
      FloatToStr( Round( GetMapFocusedPoint.x ))+', ' +
      FloatToStr( Round( GetMapFocusedPoint.y ))), Color4 );
end;

procedure Update;
begin

end;

end.
