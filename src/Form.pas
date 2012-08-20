unit Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  NMForm,
  RMForm,
  DGLE2,
  DGLE2_EXT,
  DGLE2_types,
  SubSystems,
  Resources,
  Settings,
  Input,
  Convert,
  Map,
  Main,
  Camera,
  UI,
  Vcl.Menus, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ImgList, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.CheckLst,
  Vcl.ExtDlgs, Vcl.Imaging.pngimage, Vcl.Tabs, Vcl.Grids, Vcl.ValEdit,
  Vcl.FileCtrl;

type
  TMainForm = class(TForm)
    RenderPanel: Vcl.ExtCtrls.TPanel;
    MainMenu: TMainMenu;
    btn_menu: TMenuItem;
    btn_edit: TMenuItem;
    btn_view: TMenuItem;
    btm_map: TMenuItem;
    btn_layer: TMenuItem;
    btn_help: TMenuItem;
    btn_new: TMenuItem;
    btn_open: TMenuItem;
    N9: TMenuItem;
    btn_save: TMenuItem;
    btn_saveas: TMenuItem;
    N12: TMenuItem;
    btn_close: TMenuItem;
    btn_quit: TMenuItem;
    btn_undo: TMenuItem;
    btn_redo: TMenuItem;
    N17: TMenuItem;
    btn_cut: TMenuItem;
    btn_copy: TMenuItem;
    btn_past: TMenuItem;
    btn_delete: TMenuItem;
    N22: TMenuItem;
    btn_selectall: TMenuItem;
    btn_selectnone: TMenuItem;
    N25: TMenuItem;
    btn_settings: TMenuItem;
    btn_showgrid: TMenuItem;
    btn_highlight: TMenuItem;
    N29: TMenuItem;
    btn_zoomin: TMenuItem;
    btn_zoomout: TMenuItem;
    btn_normalsize: TMenuItem;
    N33: TMenuItem;
    btn_showlayers: TMenuItem;
    btn_newtileset: TMenuItem;
    N37: TMenuItem;
    btn_resize: TMenuItem;
    btn_loadback: TMenuItem;
    btn_selectprev: TMenuItem;
    btn_selectnext: TMenuItem;
    N49: TMenuItem;
    btn_showhide: TMenuItem;
    ToolBar: TToolBar;
    BindingsList: TBindingsList;
    ToolButton2: TToolButton;
    BindScope: TBindScope;
    OpenTilesetDialog: TOpenDialog;
    btn_newdecor: TMenuItem;
    btn_newobject: TMenuItem;
    Splitter1: TSplitter;
    TilePanel: TPanel;
    ctrl_Layer: TPageControl;
    page_collision: TTabSheet;
    page_terrain: TTabSheet;
    page_decoration: TTabSheet;
    page_objects: TTabSheet;
    sb_terrain: TScrollBox;
    img_Tileset: TImage;
    sb_decoration: TScrollBox;
    img_decoration: TImage;
    tool_terrain: TToolBar;
    ToolButton1: TToolButton;
    ToolButton5: TToolButton;
    tool_objects: TToolBar;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    tool_collision: TToolBar;
    ToolButton13: TToolButton;
    ToolBar1: TToolBar;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    pnl_collision: TPanel;
    tb_collision: TTrackBar;
    exp_BrushID: TBindExpression;
    sb_object: TScrollBox;
    img_object: TImage;
    sp_Object: TSplitter;
    lv_object: TListView;
    exp_BrushLayer: TBindExpression;
    imglist_layer: TImageList;
    btn_brush_point: TToolButton;
    btn_brush_square: TToolButton;
    btn_brush_circle: TToolButton;
    edt_BrushSize: TEdit;
    edt_collision: TEdit;
    gb_collision: TGroupBox;
    exp_collision: TBindExpression;
    exp_BrushSize: TBindExpression;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    procedure FormCreate( Sender: TObject );
    procedure RenderPanelMouseEnter( Sender: TObject );
    procedure RenderPanelMouseLeave( Sender: TObject );

    procedure BrushChangeID(Sender: TObject);
    procedure BrushChangeShape( Sender: TObject );
    procedure BrushChange( Sender: TObject );

    procedure MainMenuFile( Sender: TObject );
    procedure MainMenuView( Sender: TObject );
    procedure MainMenuMap( Sender : TObject );
    procedure MainMenuLayer(Sender: TObject );

    procedure LoadTileSet( FileName : string );
    procedure LoadDecorations( FileName : string );
    procedure LoadObject( FileName : string );

    procedure img_TilesetMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SetLayerVisible(Sender: TObject);
    procedure lv_objectChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure CheckGrid(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  APP_CAPTION = 'World Editor';
  APP_VERSION = '0.0.0.8';
  LIB_PATH = 'Lib\';

var
  MainForm : TMainForm;
  EnableUpdate : Boolean;

implementation

{$R *.dfm}

procedure pInit( pParametr: Pointer ); stdcall;
begin
  SubSystems.Init;
  Resources.Load;

  Main.Init;
end;

procedure pDraw( pParametr: Pointer ); stdcall;
begin
  Render2D.Begin2D;

    if not Main.Map.isFree then Main.Render;

  Render2D.End2D;
end;

procedure pProcess( pParametr: Pointer ); stdcall;
begin
  Settings.Update;

  if not Main.Map.isFree then Main.Update;
end;

procedure pFree( pParametr: Pointer ); stdcall;
begin
  Resources.Free;

  SubSystems.Free;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  if ( GetEngine( LIB_PATH + 'DGLE2.dll', EngineCore )) then
  begin

    Settings.Load;

    if ( SUCCEEDED( EngineCore.InitializeEngine( MainForm.RenderPanel.Handle, APP_CAPTION+' v.'+APP_VERSION,
      EngWindow( Window.Width, Window.Height, Window.FullScreen, Window.VSync, Window.MSAA ))))
    then
    begin
      EngineCore.ConsoleVisible( False );
      EngineCore.AddProcedure( EPT_INIT, @pInit );
      EngineCore.AddProcedure( EPT_FREE, @pFree );
      EngineCore.AddProcedure( EPT_PROCESS, @pProcess );
      EngineCore.AddProcedure( EPT_RENDER, @pDraw );

      Randomize;
      EngineCore.StartEngine();
    end;

    MainForm.BindScope.DataObject := Map.Brush;
  end
  else
    MessageBox( 0, 'Не удалось загрузить ' + LIB_PATH + 'DGLE2.dll',
      APP_CAPTION, MB_OK or MB_ICONERROR or MB_SETFOREGROUND );
end;


procedure TMainForm.MainMenuFile(Sender: TObject);
begin
  case ( Sender as TMenuItem ).Tag of
    1: NMForm.NewMapForm.Show;
    2: if OpenDialog.Execute then Main.Map.Load( OpenDialog.FileName );
    3: ;
    4: if SaveDialog.Execute then Main.Map.Save( SaveDialog.FileName );
    5: Main.Map.Free;
    6: Quit;
  end;
end;

procedure TMainForm.MainMenuView( Sender: TObject );
begin
  case ( Sender as TMenuItem ).Tag of
    1:
    begin
      ( Sender as TMenuItem ).Default := not ( Sender as TMenuItem ).Default;
      Map.visible[ 5 ] := ( Sender as TMenuItem ).Default;
      BindingsList.Notify( Sender, 'Default' );
    end;
    2: ;
    3: ;
    4: ;
    5: ;
    6: ;
  end;
end;

procedure TMainForm.MainMenuMap(Sender: TObject);
begin
  case ( Sender as TMenuItem ).Tag of
    1: if OpenTilesetDialog.Execute then LoadTileSet     ( OpenTilesetDialog.FileName );
    2: if OpenTilesetDialog.Execute then LoadDecorations ( OpenTilesetDialog.FileName );
    3: if OpenTilesetDialog.Execute then LoadObject      ( OpenTilesetDialog.FileName );
    4: if OpenTilesetDialog.Execute then ResMan.Load( StrToPAChar( OpenTilesetDialog.FileName ), IEngBaseObj( ts_background ));
    5: RMForm.ResizeMapForm.Show;
  end;
end;

procedure TMainForm.MainMenuLayer(Sender: TObject);
begin
  case ( Sender as TMenuItem ).Tag  of
    1: ;
    2: ;
    3: ;
    4: ;
    5: ;
    6: ;
    7: ;
    8: ;
    9: ;
    10: ;
  end;
end;


procedure TMainForm.RenderPanelMouseEnter(Sender: TObject);
begin
  EnableUpdate := True;
  ActiveControl :=nil;
end;

procedure TMainForm.RenderPanelMouseLeave(Sender: TObject);
begin
  EnableUpdate := False;
end;

procedure TMainForm.SetLayerVisible(Sender: TObject);
begin
  case ( Sender as TToolButton ).Tag of
    1: Map.Visible[ 1 ] := ( Sender as TToolButton ).Down;
    2: Map.Visible[ 2 ] := ( Sender as TToolButton ).Down;
    3: Map.Visible[ 3 ] := ( Sender as TToolButton ).Down;
    4: Map.Visible[ 4 ] := ( Sender as TToolButton ).Down;
  end;
end;

procedure TMainForm.CheckGrid(Sender: TObject);
begin
  BindingsList.Notify( Sender, 'Down' );
end;


procedure TMainForm.img_TilesetMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i : Integer;
  j : Integer;
begin
  case ( Sender as TImage ).tag of
    1:
    begin
      i := X div ( TIlE_SIZE + TIlE_SIZE div 2 );
      j := Y div ( TIlE_SIZE + TIlE_SIZE div 2 );
      Map.Brush.ID := j * img_Tileset.Width div ( TIlE_SIZE + TIlE_SIZE div 2 ) + i + 1;
    end;

    2:
    begin
      i := X div TIlE_SIZE ;
      j := Y div TIlE_SIZE ;
      Map.Brush.ID := j * img_Tileset.Width div TIlE_SIZE + i + 1;
    end;
  end;
end;

procedure TMainForm.lv_objectChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  img_object.Picture.LoadFromFile( Item.SubItems[ 1 ] );
  Map.Brush.ID := Item.Index + 1;
end;


procedure TMainForm.BrushChangeShape(Sender: TObject);
begin
  case ( Sender as TToolButton ).Tag of
    1: Map.Brush.shape := bsPoint;
    2: Map.Brush.shape := bsSquare;
    3: Map.Brush.shape := bsCircle;
  end;
end;

procedure TMainForm.BrushChange(Sender: TObject);
begin
  exp_BrushSize.Evaluate;
  exp_BrushLayer.Evaluate;
end;

procedure TMainForm.BrushChangeID(Sender: TObject);
begin
  BindingsList.Notify( Sender, 'Position' );
  exp_BrushID.Evaluate;
end;


procedure TMainForm.LoadTileSet(FileName: string);
begin
  MainForm.img_Tileset.Picture.LoadFromFile( FileName );
  ground_name := ExtractFileName( FileName );

  ResMan.Load( StrToPAChar( FileName ), IEngBaseObj( ts_ground ));
  ts_ground.SetFrameSize( TIlE_SIZE + TIlE_SIZE div 2, TIlE_SIZE + TIlE_SIZE div 2 );
end;

procedure TMainForm.LoadDecorations(FileName: string);
begin
  MainForm.img_decoration.Picture.LoadFromFile( FileName );
  decorations_name := ExtractFileName( FileName );

  ResMan.Load( StrToPAChar( FileName ), IEngBaseObj( ts_decoration ));
  ts_decoration.SetFrameSize( TIlE_SIZE, TIlE_SIZE );
end;

procedure TMainForm.LoadObject(FileName: string);
var
  item : TListItem;
begin
  MainForm.img_object.Picture.LoadFromFile( FileName );

  item := TListItem.Create( lv_object.Items );
  item.SubItems.Add('Object'+' '+IntToStr( lv_object.Items.Count + 1 ));
  item.SubItems.Add( FileName );

  lv_object.Items.AddItem( item, lv_object.Items.Count ).Caption := IntToStr( lv_object.Items.Count );;

  ResMan.Load( StrToPAChar( FileName ),
    IEngBaseObj( tp_object.Add( IntToStr( lv_object.Items.Count ))^ ));
end;

end.
