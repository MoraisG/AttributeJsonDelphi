unit Ecommerce.DTO;

interface

uses
  System.Generics.Collections,
  REST.Json,
  Serialize.Attributes,
  Serialialize.Types;

{$M+}

type

  TItemDTO = class
  private
    FCodigoProduto: String;
    FDescCategoriaProduto: string;
    FDescProduto: string;
    [JsonNameAttribute('codigo')]
    FIdCategoriaProduto: string;
    FNomeProduto: string;
    FPreco: Double;
    FUnidade: string;
    FUnidadeCompleta: string;
  public
    property CodigoProduto: String read FCodigoProduto write FCodigoProduto;
    property DescCategoriaProduto: string read FDescCategoriaProduto
      write FDescCategoriaProduto;
    property DescProduto: string read FDescProduto write FDescProduto;
    property IdCategoriaProduto: string read FIdCategoriaProduto
      write FIdCategoriaProduto;
    property NomeProduto: string read FNomeProduto write FNomeProduto;
    property Preco: Double read FPreco write FPreco;
    property Unidade: string read FUnidade write FUnidade;
    property UnidadeCompleta: string read FUnidadeCompleta
      write FUnidadeCompleta;
  end;

  TProdutosDTO = class
  private
    [ArrayObjects(tpObjectList)]
    FItems: TObjectList<TItemDTO>;
    function GetItems: TObjectList<TItemDTO>;
  public
    property Items: TObjectList<TItemDTO> read GetItems;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TRootDTO }

constructor TProdutosDTO.Create;
begin
  FItems := TObjectList<TItemDTO>.Create(true);
  // FItemsArray := TArray<TItemDTO>.Create();
  // FItems.AddRange(FItemsArray);
end;

destructor TProdutosDTO.Destroy;
begin
  GetItems.Free;
  inherited;
end;

function TProdutosDTO.GetItems: TObjectList<TItemDTO>;
begin
  Result := FItems;
end;

end.
