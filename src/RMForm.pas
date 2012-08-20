unit RMForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components;

type
  TResizeMapForm = class(TForm)
    gb_map: TGroupBox;
    lbl_mapwidth: TLabel;
    lbl_mapheight: TLabel;
    edt_mapwidth: TSpinEdit;
    edt_mapheight: TSpinEdit;
    gb_area: TGroupBox;
    lbl_areawidth: TLabel;
    lbl_areaheight: TLabel;
    edt_areawidth: TSpinEdit;
    edt_areaheight: TSpinEdit;
    lbl_size_px: TLabel;
    lbl_size_m: TLabel;
    btn_cancel: TButton;
    btn_ok: TButton;
    MapParamBind: TBindScope;
    BindingsList: TBindingsList;
    exp_MapWidth: TBindExpression;
    exp_MapHeight: TBindExpression;
    exp_AreaWidth: TBindExpression;
    exp_AreaHeight: TBindExpression;
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

    public
      property MapWidth   : Integer read fMapWidth   write fMapWidth;
      property MapHeight  : Integer read fMapHeight  write fMapHeight;
      property AreaWidth  : Integer read fAreaWidth  write fAreaWidth;
      property AreaHeight : Integer read fAreaHeight write fAreaHeight;
  end;

var
  ResizeMapForm: TResizeMapForm;

  Map_width_px  : integer;
  Map_height_px : Integer;
  Map_width_m   : Integer;
  Map_height_m  : Integer;

  MapParam : TMapParam;

implementation

uses
  Main,
  Map;

{$R *.dfm}

procedure TResizeMapForm.FormCreate(Sender: TObject);
begin
  MapParam := TMapParam.Create;
  MapParamBind.DataObject := MapParam;

  ChangeMapSize( Sender );
end;

procedure TResizeMapForm.ChangeMapSize(Sender: TObject);
begin
  exp_MapWidth.Evaluate;
  exp_MapHeight.Evaluate;
  exp_AreaWidth.Evaluate;
  exp_AreaHeight.Evaluate;

  if
    ( edt_mapwidth.Text   <> '' ) and
    ( edt_mapheight.Text  <> '' ) and
    ( edt_areawidth.Text  <> '' ) and
    ( edt_areaheight.Text <> '' )
  then
  begin
    Map_width_px := 16 *
      StrToInt( edt_mapwidth.Text  ) *
      StrToInt( edt_areawidth.Text ) *
      TILE_SIZE;

    Map_height_px := 16 *
      StrToInt( edt_mapheight.Text  ) *
      StrToInt( edt_areaheight.Text ) *
      TILE_SIZE;

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

procedure TResizeMapForm.BlockNil(Sender: TObject);
begin
  if ( Sender as TSpinEdit ).Text = '' then ( Sender as TSpinEdit ).Text := '1';
end;


procedure TResizeMapForm.btn_cancelClick(Sender: TObject);
begin
  Close;
end;

procedure TResizeMapForm.btn_okClick(Sender: TObject);
begin
  with MapParam do Main.Map.Resize( MapWidth, MapHeight, AreaWidth, AreaHeight );
  Close;
end;

end.
