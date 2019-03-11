program DesignPatternProject;

uses
  Vcl.Forms,
  FormMain in 'FormMain.pas' {FormMain},
  Iterator in 'Iterator\Iterator.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
end.
