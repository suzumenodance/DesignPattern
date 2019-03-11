program DesignPatternProject;

uses
  Vcl.Forms,
  FormMain in 'FormMain.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
end.
