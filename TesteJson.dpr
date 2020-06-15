program TesteJson;

uses
  Vcl.Forms,
  TesteJson.View.Main in 'TesteJson.View.Main.pas' {Form1},
  TPedido in 'src\TPedido.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
