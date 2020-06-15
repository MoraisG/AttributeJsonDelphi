unit TPedido;

interface

uses
  REST.JSON.Types;
{$M+}

type
  TPedidoJson = class
  private
    FnomeSepardor: String;
    Fcodigo: String;
    [JSONMarshalledAttribute(false)]
    FvalorTotal: Double;
    procedure Setcodigo(const Value: String);
    procedure SetnomeSepardor(const Value: String);
    procedure SetvalorTotal(const Value: Double);
  public
  published
    property codigo: String read Fcodigo write Setcodigo;
    property nomeSepardor: String read FnomeSepardor write SetnomeSepardor;
    property valorTotal: Double read FvalorTotal write SetvalorTotal;
  end;

implementation

{ TPedidoJson }

procedure TPedidoJson.Setcodigo(const Value: String);
begin
  Fcodigo := Value;
end;

procedure TPedidoJson.SetnomeSepardor(const Value: String);
begin
  FnomeSepardor := Value;
end;

procedure TPedidoJson.SetvalorTotal(const Value: Double);
begin
  FvalorTotal := Value;
end;

end.
