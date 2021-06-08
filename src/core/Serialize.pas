unit Serialize;

interface

uses
  Serialialize.JSON.Interfaces,
  System.Generics.Collections;

type
  TSerialize<T: Class> = class(TInterfacedObject, ISerialize<T>)
  private
    FJson: IJSON<T>;
  public
    constructor Create;
    Destructor Destroy; override;
    function ObjectToJsonArray(AObject: TObjectList<T>): String;
    class function New: ISerialize<T>;
  end;

implementation

uses
  System.SysUtils,
  Serialialize.JSON;
{ TSerialize<T> }

constructor TSerialize<T>.Create;
begin

end;

destructor TSerialize<T>.Destroy;
begin

  inherited;
end;

class function TSerialize<T>.New: ISerialize<T>;
begin
  Result := Self.Create;
end;

function TSerialize<T>.ObjectToJsonArray(AObject: TObjectList<T>): String;
var
  I: Integer;
begin
  Result := EmptyStr;

  FJson := TJsonSerialize<T>.New;

  for I := 0 to pred(AObject.Count) do
    FJson.Add(AObject.Items[I]);

  Result := FJson.JsonArray;
end;

end.
