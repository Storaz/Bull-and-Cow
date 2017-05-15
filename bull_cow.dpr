program bull_cow;

uses
  Vcl.Forms,
  bull_and_cow in 'bull_and_cow.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
