program WorldEditor;

uses
  Windows,
  Vcl.Forms,
  Form in 'src\Form.pas',
  DGLE2 in '..\..\..\Engines\DGLE 2 Engine\Include\Delphi\DGLE2.pas',
  DGLE2_EXT in '..\..\..\Engines\DGLE 2 Engine\Include\Delphi\DGLE2_EXT.pas',
  DGLE2_types in '..\..\..\Engines\DGLE 2 Engine\Include\Delphi\DGLE2_types.pas',
  SubSystems in 'src\SubSystems.pas',
  Resources in 'src\Resources.pas',
  Settings in 'src\Settings.pas',
  Input in 'src\Input.pas',
  Convert in 'src\Convert.pas',
  Map in 'src\Map.pas',
  Main in 'src\Main.pas',
  Camera in 'src\Camera.pas',
  UI in 'src\UI.pas',
  NMForm in 'src\NMForm.pas' {NewMapForm},
  RMForm in 'src\RMForm.pas' {ResizeMapForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm( Form.TMainForm, Form.MainForm );
  Application.CreateForm( TResizeMapForm, RMForm.ResizeMapForm);
  Application.CreateForm( TNewMapForm, NMForm.NewMapForm );
  Application.Run;
end.
