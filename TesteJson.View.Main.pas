unit TesteJson.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  REST.Json, System.Json, Vcl.ExtCtrls, TPedido;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    jPedido: TJSONObject;
    LPedido: TPedidoJson;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

begin
  Memo1.Lines.Clear;
  LPedido := TPedidoJson.Create;
  LPedido.codigo := '123';
  LPedido.nomeSepardor := 'Gabriel';

  jPedido := TJson.ObjectToJsonObject(LPedido);

  jPedido.RemovePair('valorTotal').Free;

  Memo1.Lines.Add(jPedido.ToString);
  FreeAndNil(LPedido);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  LPedido := TPedidoJson.Create;
  LPedido.codigo := '123';
  LPedido.nomeSepardor := 'Gabriel';

  jPedido := TJson.ObjectToJsonObject(LPedido);

  jPedido.RemovePair('valorTotal').Free;

  Memo1.Lines.Add(jPedido.Format);
  FreeAndNil(LPedido);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  vsJSON: String;
begin
  Memo1.Lines.Clear;
  LPedido := TPedidoJson.Create;
  LPedido.codigo := '123';
  LPedido.nomeSepardor := 'Gabriel';

  vsJSON := TJson.ObjectToJsonString(LPedido);

  Memo1.Lines.Add(vsJSON);
  FreeAndNil(LPedido);
end;

end.
