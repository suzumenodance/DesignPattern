program DesignPatternProject;

uses
  Vcl.Forms,
  FormMain in 'FormMain.pas' {FormMain},
  Iterator in 'Iterator\Iterator.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, MainForm);
  Application.Run;
end.
