program FontFit;

uses
  Vcl.Forms,
  u_Main in 'u_Main.pas' {MainForm},
  profixxml in 'profixxml.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
