unit Settings;

interface

uses
  DGLE2_types;

type

  TWindow = record
    Width : Integer;
    Height : Integer;
    FullScreen : Boolean;
    VSync : Boolean;
    MSAA : Integer;

  private
    form : TEngWindow;
  end;

  TGraphics = record
    Filtration : Integer;
  end;

  TSound = record
    Sound : Boolean;
    Music : Boolean;
  end;

var
  Window : TWindow;
  Graphics : TGraphics;
  Sound : TSound;

procedure Load;
procedure Update;

implementation

uses
  Form;

procedure Load;
begin
  Window.Width := MainForm.RenderPanel.Width;
  Window.Height := MainForm.RenderPanel.Height;
  Window.FullScreen := False;
  Window.VSync := True;
  Window.MSAA := 0;
end;

procedure Update;
begin
  Window.Width := MainForm.RenderPanel.Width;
  Window.Height := MainForm.RenderPanel.Height;
end;

end.
