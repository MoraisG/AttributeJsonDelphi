unit Serialialize.JSON;

interface

uses
{$IF VER330}
  System.JSON,
{$ELSE}
  Data.DBXJSON,
{$ENDIF}
  Serialialize.JSON.Interfaces;

type

  TJsonSerialize<T: Class> = class(TInterfacedObject, IJSON<T>)
  private
    FArrayJson: TJSONArray;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IJSON<T>;
    function Add(AJsonObjct: String): IJSON<T>; overload;
    function Add(AJsonObjct: T): IJSON<T>; overload;
    function JsonArray: String;
  end;

implementation

uses
{$IF VER330}
  Rest.JSON.types,
{$ENDIF}
  Rest.JSON;
{ TJsonSerialize }

function TJsonSerialize<T>.Add(AJsonObjct: T): IJSON<T>;
begin
  Result := Self;
  FArrayJson.Add(TJson.ObjectToJsonObject(AJsonObjct
    {$IFDEF VER330}, [joDateFormatParse]{$ENDIF}));
end;

function TJsonSerialize<T>.Add(AJsonObjct: String): IJSON<T>;
begin
  Result := Self;
  FArrayJson.Add(AJsonObjct);
end;

constructor TJsonSerialize<T>.Create;
begin
  FArrayJson := TJSONArray.Create;
end;

destructor TJsonSerialize<T>.Destroy;
begin
  FArrayJson.Free;
  inherited;
end;

function TJsonSerialize<T>.JsonArray: String;
begin
  Result := FArrayJson.ToString;
end;

class function TJsonSerialize<T>.New: IJSON<T>;
begin
  Result := Self.Create;
end;

end.
