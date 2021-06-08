unit TesteJson.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  REST.Json,
{$IF VER330}
  System.Json,
{$ELSE}
  Data.DBXJSON,
{$ENDIF}
  Vcl.ExtCtrls, TPedido;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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

uses
  Serialize,
  Ecommerce.DTO;

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

  Memo1.Lines.Add(jPedido.ToString);
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

procedure TForm1.Button4Click(Sender: TObject);
var
  itemDto: TItemDTO;
  produtoDTO: TProdutosDTO;
begin
  produtoDTO := TProdutosDTO.Create;
  itemDto := TItemDTO.Create;
  try
    produtoDTO.Items.Add(itemDto);
    produtoDTO.Items.Items[0].CodigoProduto := '1';
    produtoDTO.Items.Items[0].DescCategoriaProduto := 'Alvernaria';
    produtoDTO.Items.Items[0].DescProduto := 'Cimento';
    produtoDTO.Items.Items[0].IdCategoriaProduto := '1.1';
    produtoDTO.Items.Items[0].NomeProduto := 'Cimento poty';
    produtoDTO.Items.Items[0].Preco := 100.56;
    produtoDTO.Items.Items[0].Unidade := 'SC';
    produtoDTO.Items.Items[0].UnidadeCompleta := 'SACO';
    itemDto := TItemDTO.Create;
    produtoDTO.Items.Add(itemDto);
    produtoDTO.Items.Items[1].CodigoProduto := '2';
    produtoDTO.Items.Items[1].DescCategoriaProduto := 'Alvenaria';
    produtoDTO.Items.Items[1].DescProduto := 'Cimento';
    produtoDTO.Items.Items[1].IdCategoriaProduto := '2.1';
    produtoDTO.Items.Items[1].NomeProduto := 'Cimento Portland';
    produtoDTO.Items.Items[1].Preco := 200.56;
    produtoDTO.Items.Items[1].Unidade := 'SC';
    produtoDTO.Items.Items[1].UnidadeCompleta := 'SACO';

    Memo1.Lines.Add(TSerialize<TItemDTO>.New.ObjectToJsonArray
      (produtoDTO.Items));
  finally
    produtoDTO.Free;
  end;

end;

end.
