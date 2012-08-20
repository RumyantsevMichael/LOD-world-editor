unit Input;

interface

uses
  DGLE2_types;

type

  TKeyStack = record
    key : array of Byte;
    count : Byte;

    procedure Push( key_code : Integer );
    procedure Free;
  end;

  TMemKeyStack = record
    key : array of Byte;
    count : Byte;
    time : Integer;

    procedure Push( key_code : Integer );
    procedure Update;
    procedure Free;
  end;

  TMouse = record
    state : TMouseStates;

    bLeftClick : Boolean;
    bRightClick : Boolean;
    bMiddleClick : Boolean;

    bLeftUp : Boolean;
    bRightUp : Boolean;
    bMiddleUp : Boolean;

  private
    click : array [1..3] of Integer;
    up : array [1..3] of Integer;

    procedure Update;
  end;

  TKeyboard = record
    state : TKeyboardStates;

    bCapsLock	: Boolean;
		bLShift		: Boolean;
		bRShift		: Boolean;
		bLCtrl		: Boolean;
		bRCtrl		: Boolean;
		bLAlt		: Boolean;
		bRAlt		: Boolean;
   private
    procedure Update;
  end;

procedure Init;
procedure Update;

procedure null;

var
  KeyStack : TKeyStack;
  KeyBind : array [1..220] of procedure;

  MemKeyStack : TMemKeyStack;

  mouse : TMouse;
  keyboard : TKeyboard;

implementation

uses
  SubSystems;

var
  wait : Integer;

procedure null;
begin
end;

procedure Init;
var
  i: Integer;
begin
  for i := 1 to 220 do
    KeyBind[ i ] := null;
end;

procedure Update;
var
  Pressed : Boolean;
  key : Integer;
  i : Integer;
begin
  mouse.Update;
  keyboard.Update;

  KeyStack.Free;

  for key := 1 to 220 do
  begin
    SubSystems.Input.GetKey( key, Pressed );
    if Pressed then
      KeyStack.Push( key );
  end;

  Dec( wait );
  if wait <= 0 then
  for i := 0 to KeyStack.count - 1 do
  begin
    KeyBind[ KeyStack.key[ i ]];
    wait := 10;
  end;

  if KeyStack.count > 0 then
  begin
    if MemKeyStack.time <= 15 then
      MemKeyStack.Push( KeyStack.key[0] );
  end;

  MemKeyStack.Update;

end;

{ TKeyStack }

procedure TKeyStack.Push(key_code: Integer);
begin
  SetLength( key, count + 1 );

  key[ count ] := key_code;

  Inc( count );
end;

procedure TKeyStack.Free;
begin
  SetLength( key, 0 );
  count := 0;
end;

{ TMemKeyStack }

procedure TMemKeyStack.Push(key_code: Integer);
begin
  SetLength( key, count + 1 );
  key[ count ] := key_code;
  Inc( count );
  time := 20;
end;

procedure TMemKeyStack.Update;
begin
  Dec( time );
  if time <= 0 then
    Free;
end;

procedure TMemKeyStack.Free;
begin
  SetLength( key, 0 );
  count := 0;
  time := 0;
end;

{ TMouse }

procedure TMouse.Update;
begin
  SubSystems.Input.GetMouseStates( state );

  Dec( click[1] );
  Dec( click[2] );
  Dec( click[3] );
  Dec( up[1] );
  Dec( up[2] );
  Dec( up[3] );

  if state.bLeftButton then
    click[1] := 20;

  if ( not state.bLeftButton ) and ( click[1] > 0 ) then
  begin
    bLeftClick := True;
    click[1] := 0;

    bLeftUp := True;
    up[1] := 20;
  end
  else
    bLeftClick := False;

  if state.bRightButton then
    click[2] := 20;

  if ( not state.bRightButton ) and ( click[2] > 0 ) then
  begin
    bRightClick := True;
    click[2] := 0;

    bRightUp := True;
    up[2] := 20;
  end
  else
    bRightClick := False;

  if state.bMiddleButton then
    click[3] := 20;

  if ( not state.bMiddleButton ) and ( click[3] > 0 ) then
  begin
    bMiddleClick := True;
    click[3] := 0;

    bMiddleUp := True;
    up[3] := 20;
  end
  else
    bMiddleClick := False;

  if up[1] <= 0 then bLeftUp := False;
  if up[2] <= 0 then bRightUp := False;
  if up[3] <= 0 then bMiddleUp := False;
end;

{ TKeyboard }

procedure TKeyboard.Update;
var
  Pressed : Boolean;
begin
  SubSystems.Input.GetKey( KEY_LSHIFT, Pressed );
  if Pressed then bLShift := True else bLShift := False;

  SubSystems.Input.GetKey( KEY_RSHIFT, Pressed );
  if Pressed then bRShift := True else bRShift := False;

  SubSystems.Input.GetKey( KEY_LCONTROL, Pressed );
  if Pressed then bLCtrl := True else bLCtrl := False;

  SubSystems.Input.GetKey( KEY_RCONTROL, Pressed );
  if Pressed then bRCtrl := True else bRCtrl := False;

  SubSystems.Input.GetKey( KEY_LALT, Pressed );
  if Pressed then bLAlt := True else bLAlt := False;

  SubSystems.Input.GetKey( KEY_RALT, Pressed );
  if Pressed then bRAlt := True else bRAlt := False;
end;

end.
