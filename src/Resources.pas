unit Resources;

interface

uses
  DGLE2;

type

  PTexture = ^ITexture;
  TTexture = record
    Name : string;
    Data : ITexture;
    isFree : Boolean;
  end;

  TTxtPack = record
    Item : array of TTexture;

    function Add( Name : string ): PTexture;
    function Find( Name : string ): PTexture;
    procedure Free;
  end;

////////////////////////////////////////////////////////////////////////////////

  PFont = ^IBitmapFont;
  TFont = record
    Name : string;
    Data : array [5..50] of IBitmapFont;
  end;

  TFntPack = record
    Item : array of TFont;

    function Add( Name : string; Size : Byte ): PFont;
    function Find( Name : string; Size : Byte = 10 ): PFont;
    procedure Free;
  end;

////////////////////////////////////////////////////////////////////////////////

  PSound = ^ISoundSample;
  TSound = record
    Name : string;
    Data : ISoundSample;
    isFree : Boolean;
  end;

  TSndPack = record
    Item : array of TSound;

    function Add( Name : string ): PSound;
    function Find( Name : string ): PSound;
    procedure Free;
  end;

////////////////////////////////////////////////////////////////////////////////

const
  RES_PATH = 'Data\';
  TXT_PATH = RES_PATH + 'Textures\';
  SND_PATH = RES_PATH + 'Sound\';

var

  TLF : Integer = TLF_FILTERING_NONE;

  FntPack : TFntPack;

  tp_txt: array [0..4] of TTxtPack;
  tp_GUI: TTxtPack;
  txt_pack_Mob: TTxtPack;

  ts_ground : ITexture;
  ts_decoration : ITexture;
  ts_background : ITexture;

  ground_name : string;
  decorations_name : string;

  tp_object : TTxtPack;

procedure Load;
procedure Free;

implementation

uses
  System.SysUtils,

  SubSystems,
  Settings,
  Convert;

procedure Load;
var
  i: Integer;
begin

  for i := 5 to 18 do
    ResMan.Load(
                StrToPAChar( RES_PATH + 'UI\Fonts\Tahoma\' + IntToStr( i ) + '.dft'),
                IEngBaseObj( FntPack.Add('Tahoma', i  )^)
                );

  ResMan.Load( RES_PATH + 'Mob\player.png', IEngBaseObj(txt_pack_Mob.Add('player')^), TLF );
                                                        txt_pack_Mob.Find('player').SetFrameSize( 32, 32 );
  ResMan.Load( RES_PATH + 'Mob\bot.png',    IEngBaseObj(txt_pack_Mob.Add('bot')^),    TLF );
                                                        txt_pack_Mob.Find('bot').SetFrameSize( 32, 32 );

  ResMan.Load( RES_PATH + 'eraser.png', IEngBaseObj(tp_txt[ 0 ].Add('eraser')^), TLF);

  ResMan.Load( RES_PATH + 'eraser.png', IEngBaseObj(tp_txt[ 1 ].Add('eraser')^), TLF);
  ResMan.Load( RES_PATH + 'terrain\dirt.png',  IEngBaseObj(tp_txt[ 1 ].Add('dirt')^), TLF);
  ResMan.Load( RES_PATH + 'terrain\grass.png', IEngBaseObj(tp_txt[ 1 ].Add('grass')^), TLF);
  ResMan.Load( RES_PATH + 'terrain\water.png', IEngBaseObj(tp_txt[ 1 ].Add('water')^), TLF);

  ResMan.Load( RES_PATH + 'eraser.png', IEngBaseObj(tp_txt[ 2 ].Add('eraser')^), TLF);
  ResMan.Load( RES_PATH + 'bush_1.png', IEngBaseObj(tp_txt[ 2 ].Add('bush_1')^), TLF);
  ResMan.Load( RES_PATH + 'bush_2.png', IEngBaseObj(tp_txt[ 2 ].Add('bush_2')^), TLF);
  ResMan.Load( RES_PATH + 'bush_3.png', IEngBaseObj(tp_txt[ 2 ].Add('bush_3')^), TLF);

  ResMan.Load( RES_PATH + 'eraser.png',  IEngBaseObj(tp_txt[ 3 ].Add('eraser')^), TLF);
  ResMan.Load( RES_PATH + 'tree_1.png',  IEngBaseObj(tp_txt[ 3 ].Add('tree_1')^), TLF);
  ResMan.Load( RES_PATH + 'tree_2.png',  IEngBaseObj(tp_txt[ 3 ].Add('tree_2')^), TLF);
  ResMan.Load( RES_PATH + 'tree_3.png',  IEngBaseObj(tp_txt[ 3 ].Add('tree_3')^), TLF);
  ResMan.Load( RES_PATH + 'tree_4.png',  IEngBaseObj(tp_txt[ 3 ].Add('tree_4')^), TLF);
  ResMan.Load( RES_PATH + 'tree_5.png',  IEngBaseObj(tp_txt[ 3 ].Add('tree_5')^), TLF);
  ResMan.Load( RES_PATH + 'tree_6.png',  IEngBaseObj(tp_txt[ 3 ].Add('tree_6')^), TLF);
  ResMan.Load( RES_PATH + 'tree_7.png',  IEngBaseObj(tp_txt[ 3 ].Add('tree_7')^), TLF);
  ResMan.Load( RES_PATH + 'tree_8.png',  IEngBaseObj(tp_txt[ 3 ].Add('tree_8')^), TLF);
  ResMan.Load( RES_PATH + 'tree_9.png',  IEngBaseObj(tp_txt[ 3 ].Add('tree_9')^), TLF);
  ResMan.Load( RES_PATH + 'tree_10.png', IEngBaseObj(tp_txt[ 3 ].Add('tree_10')^), TLF);
  ResMan.Load( RES_PATH + 'tree_11.png', IEngBaseObj(tp_txt[ 3 ].Add('tree_11')^), TLF);
  ResMan.Load( RES_PATH + 'tree_12.png', IEngBaseObj(tp_txt[ 3 ].Add('tree_12')^), TLF);
  ResMan.Load( RES_PATH + 'tree_13.png', IEngBaseObj(tp_txt[ 3 ].Add('tree_13')^), TLF);
  ResMan.Load( RES_PATH + 'tree_14.png', IEngBaseObj(tp_txt[ 3 ].Add('tree_14')^), TLF);
  ResMan.Load( RES_PATH + 'tree_15.png', IEngBaseObj(tp_txt[ 3 ].Add('tree_15')^), TLF);
  ResMan.Load( RES_PATH + 'tree_16.png', IEngBaseObj(tp_txt[ 3 ].Add('tree_16')^), TLF);
  ResMan.Load( RES_PATH + 'tree_17.png', IEngBaseObj(tp_txt[ 3 ].Add('tree_17')^), TLF);
  ResMan.Load( RES_PATH + 'tree_18.png', IEngBaseObj(tp_txt[ 3 ].Add('tree_18')^), TLF);

  ResMan.Load( RES_PATH + 'pillar.png', IEngBaseObj(tp_txt[ 4 ].Add('pillar')^), TLF);
  ResMan.Load( RES_PATH + 'wall.png',   IEngBaseObj(tp_txt[ 4 ].Add('wall')^),   TLF);

  // GUI
  ResMan.Load( RES_PATH + 'UI\border.png', IEngBaseObj(tp_GUI.Add('border')^), TLF);
  ResMan.Load( RES_PATH + 'UI\angle.png',  IEngBaseObj(tp_GUI.Add('angle')^),  TLF);
  ResMan.Load( RES_PATH + 'UI\back.png',   IEngBaseObj(tp_GUI.Add('back')^),   TLF);

  ResMan.Load( RES_PATH + 'UI\bag.png',    IEngBaseObj(tp_GUI.Add('bag')^),    TLF);
  ResMan.Load( RES_PATH + 'UI\bag_d.png',  IEngBaseObj(tp_GUI.Add('bag_d')^),  TLF);
  ResMan.Load( RES_PATH + 'UI\bag_f.png',  IEngBaseObj(tp_GUI.Add('bag_f')^),  TLF);

  ResMan.Load( RES_PATH + 'UI\button\button.png',   IEngBaseObj(tp_GUI.Add('button')^),   TLF);
  ResMan.Load( RES_PATH + 'UI\button\button_f.png', IEngBaseObj(tp_GUI.Add('button_f')^), TLF);

  ResMan.Load( RES_PATH + 'UI\potion_r.png', IEngBaseObj(tp_GUI.Add('potion_r')^), TLF);
  ResMan.Load( RES_PATH + 'UI\potion_b.png', IEngBaseObj(tp_GUI.Add('potion_b')^), TLF);
  ResMan.Load( RES_PATH + 'UI\potion_y.png', IEngBaseObj(tp_GUI.Add('potion_y')^), TLF);
  ResMan.Load( RES_PATH + 'UI\potion.png',   IEngBaseObj(tp_GUI.Add('potion')^),   TLF);

  ResMan.Load( RES_PATH + 'UI\pict.png', IEngBaseObj(tp_GUI.Add('pict')^), TLF);

  ResMan.Load( RES_PATH + 'UI\+.png',   IEngBaseObj(tp_GUI.Add('+')^),   TLF);
  ResMan.Load( RES_PATH + 'UI\+_f.png', IEngBaseObj(tp_GUI.Add('+_f')^), TLF);
  ResMan.Load( RES_PATH + 'UI\-.png',   IEngBaseObj(tp_GUI.Add('-')^),   TLF);
  ResMan.Load( RES_PATH + 'UI\-_f.png', IEngBaseObj(tp_GUI.Add('-_f')^), TLF);
end;

procedure Free;
begin
  tp_txt[ 0 ].Free;
  tp_txt[ 1 ].Free;
  tp_txt[ 2 ].Free;
  tp_txt[ 3 ].Free;
  tp_txt[ 4 ].Free;

  ts_ground := nil;
  ts_decoration := nil;
  ts_background := nil;
  tp_object.Free;

  txt_pack_Mob.Free;

  tp_GUI.Free;

  FntPack.Free;
end;

{ TTxttxt_pack_Txt }

function TTxtPack.Add( Name : string ): PTexture;
var
  i: Integer;
  j: Integer;
  N: Boolean;
  L: Integer;
begin

  N := True;

  L := Length( Item );

  for i := 0 to L - 1 do
  begin
    if Item[ i ].isFree then
    begin
      j := i;
      N := False;
    end;
  end;

  if N then
  begin
    SetLength( Item, L + 1 );
    j := L;
  end;

  Item[ j ].Name := Name;
  Item[ j ].isFree := False;
  Result := @Item[ j ].Data;

end;

function TTxtPack.Find(Name: string): PTexture;
var
  i: Integer;
begin
  Result := nil;

  for i := 0 to Length( Item ) - 1 do
    if Item[ i ].Name = Name then
      if not Item[ i ].isFree then
        Result := @Item[ i ].Data;
end;

procedure TTxtPack.Free;
var
  i: Integer;
begin
  for i := 0 to Length( Item ) - 1 do
  begin
    Item[ i ].Data := nil;
    Item[ i ].isFree := True;
  end;
end;

{ TFntPack }////////////////////////////////////////////////////////////////////

function TFntPack.Add(Name: string; Size : Byte): PFont;
var
  i: Integer;
  l: Integer;
begin
  l := Length( Item );

  for i := 0 to l - 1 do
  if item[ i ].Name = Name then
  begin
    Item[ i ].Name := Name;
    Result := @Item[ i ].Data[ Size ];
    Exit;
  end;

  SetLength( Item, l + 1 );
  Item[ l ].Name := Name;
  Result := @Item[ l ].Data[ Size ];
end;

function TFntPack.Find(Name: string; Size : Byte = 10): PFont;
var
  i: Integer;
begin
  Result := nil;

  for i := 0 to Length( Item ) - 1 do
    if Item[ i ].Name = Name then
      if Item[ i ].Data[ Size ] <> nil then
        Result := @Item[ i ].Data[ Size ];
end;

procedure TFntPack.Free;
var
  i: Integer;
  j: Integer;
begin
  for i := 0 to Length( Item ) - 1 do
  begin
    Item[ i ].Name := '';

    for j := 5 to 50 do
      Item[ i ].Data[ j ] := nil;
  end;
end;

{ TSndPack }

function TSndPack.Add(Name: string): PSound;
var
  i: Integer;
  j: Integer;
  N: Boolean;
  L: Integer;
begin
  N := True;

  L := Length( Item );

  for i := 0 to L - 1 do
  begin
    if Item[ i ].isFree then
    begin
      j := i;
      N := False;
    end;
  end;

  if N then
  begin
    SetLength( Item, L + 1 );
    j := L;
  end;

  Item[ j ].Name := Name;
  Item[ j ].isFree := False;
  Result := @Item[ j ].Data;
end;

function TSndPack.Find(Name: string): PSound;
var
  i: Integer;
begin
  Result := nil;

  for i := 0 to Length( Item ) - 1 do
    if Item[ i ].Name = Name then
      if not Item[ i ].isFree then
        Result := @Item[ i ].Data;
end;

procedure TSndPack.Free;
var
  i: Integer;
begin
  for i := 0 to Length( Item ) - 1 do
  begin
    Item[ i ].Data := nil;
    Item[ i ].isFree := True;
  end;
end;

end.
