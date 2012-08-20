unit NMForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Data.Bind.Components, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors;

type

  TNewMapForm = class(TForm)
    gb_map: TGroupBox;
    btn_ok: TButton;
    btn_cancel: TButton;
    gb_tile: TGroupBox;
    edt_TileSize: TSpinEdit;
    edt_mapwidth: TSpinEdit;
    edt_mapheight: TSpinEdit;
    lbl_mapwidth: TLabel;
    lbl_mapheight: TLabel;
    lbl_TileSize: TLabel;
    gb_area: TGroupBox;
    lbl_areawidth: TLabel;
    lbl_areaheight: TLabel;
    edt_areawidth: TSpinEdit;
    edt_areaheight: TSpinEdit;
    lbl_size_px: TLabel;
    MapParamBind: TBindScope;
    BindingsList: TBindingsList;
    exp_MapWidth: TBindExpression;
    exp_MapHeight: TBindExpression;
    exp_AreaWidth: TBindExpression;
    exp_AreaHeight: TBindExpression;
    exp_TileSize: TBindExpression;
    lbl_size_m: TLabel;

    procedure ChangeMapSize(Sender: TObject);
    procedure BlockNil(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
  end;

  TMapParam = class
    private
      fMapWidth   : Integer;
      fMapHeight  : Integer;
      fAreaWidth  : Integer;
      fAreaHeight : Integer;
      fTileSize   : Integer;

    public
      property MapWidth   : Integer read fMapWidth   write fMapWidth;
      property MapHeight  : Integer read fMapHeight  write fMapHeight;
      property AreaWidth  : Integer read fAreaWidth  write fAreaWidth;
      property AreaHeight : Integer read fAreaHeight write fAreaHeight;
      property TileSize   : Integer read fTileSize   write fTileSize;
  end;

var
  NewMapForm: TNewMapForm;

  Map_width_px  : integer;
  Map_height_px : Integer;
  Map_width_m   : Integer;
  Map_height_m  : Integer;

  MapParam : TMapParam;

implementation

uses
  Main;

{$R *.dfm}

procedure TNewMapForm.FormCreate(Sender: TObject);
begin
  MapParam := TMapParam.Create;
  MapParamBind.DataObject := MapParam;

  ChangeMapSize( Sender );
end;

procedure TNewMapForm.ChangeMapSize(Sender: TObject);
begin
  exp_MapWidth.Evaluate;
  exp_MapHeight.Evaluate;
  exp_AreaWidth.Evaluate;
  exp_AreaHeight.Evaluate;
  exp_TileSize.Evaluate;

  if
    ( edt_mapwidth.Text   <> '' ) and
    ( edt_mapheight.Text  <> '' ) and
    ( edt_areawidth.Text  <> '' ) and
    ( edt_areaheight.Text <> '' ) and
    ( edt_TileSize.Text   <> '' )
  then
  begin
    Map_width_px := 16 *
      StrToInt( edt_mapwidth.Text  ) *
      StrToInt( edt_areawidth.Text ) *
      StrToInt( edt_TileSize.Text  );

    Map_height_px := 16 *
      StrToInt( edt_mapheight.Text  ) *
      StrToInt( edt_areaheight.Text ) *
      StrToInt( edt_TileSize.Text   );

    lbl_size_px.Caption :=
      IntToStr( Map_width_px ) +
      ' x ' +
      IntToStr( Map_height_px ) +
      ' пикс.';

    Map_width_m := 16 *
      StrToInt( edt_mapwidth.Text  ) *
      StrToInt( edt_areawidth.Text );

    Map_height_m := 16 *
      StrToInt( edt_mapheight.Text  ) *
      StrToInt( edt_areaheight.Text );

    lbl_size_m.Caption :=
      IntToStr( Map_width_m ) +
      ' x ' +
      IntToStr( Map_height_m ) +
      ' тайлов';
  end;
end;

procedure TNewMapForm.BlockNil(Sender: TObject);
begin
  if ( Sender as TSpinEdit ).Text = '' then ( Sender as TSpinEdit ).Text := '1';
end;


procedure TNewMapForm.btn_cancelClick(Sender: TObject);
begin
  Close;
end;

procedure TNewMapForm.btn_okClick(Sender: TObject);
begin
  with MapParam do Main.Map.Generate( MapWidth, MapHeight, AreaWidth, AreaHeight, TileSize );
  Close;
end;

end.
