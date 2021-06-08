program TesteJson;

uses
  Vcl.Forms,
  TesteJson.View.Main in 'TesteJson.View.Main.pas' {Form1},
  TPedido in 'src\TPedido.pas',
  Ecommerce.DTO in 'src\dtos\Ecommerce.DTO.pas',
  Serialialize.JSON.Interfaces in 'src\contracts\Serialialize.JSON.Interfaces.pas',
  Serialialize.JSON in 'src\core\Serialialize.JSON.pas',
  Serialialize.Types in 'src\types\Serialialize.Types.pas',
  Serialize in 'src\core\Serialize.pas',
  Serialize.Attributes in 'src\types\Serialize.Attributes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
