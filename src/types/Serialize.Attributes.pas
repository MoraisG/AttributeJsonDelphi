unit Serialize.Attributes;

interface

uses Serialialize.Types;

type
  ArrayObjects = class(TCustomAttribute)
  private
    FTypeArray: TEnumTypeDelphiGenerics;
    procedure SetTypeArray(const Value: TEnumTypeDelphiGenerics);
  public
    constructor Create(AType: TEnumTypeDelphiGenerics);
    destructor destroy; override;
    property TypeArray: TEnumTypeDelphiGenerics read FTypeArray
      write SetTypeArray;
  end;

  JsonNameAttribute = class(TCustomAttribute)
  private
    FName: string;
  public
    constructor Create(AName: string);
    property Name: String read FName;
  end;

  JSONBooleanAttribute = class(TCustomAttribute)
  private
    FValue: Boolean;
  public
    constructor Create(val: Boolean = true);
    property Value: Boolean read FValue;
  end;

implementation

{ ArrayObjects }

constructor ArrayObjects.Create(AType: TEnumTypeDelphiGenerics);
begin
  TypeArray := AType;
end;

destructor ArrayObjects.destroy;
begin

  inherited;
end;

procedure ArrayObjects.SetTypeArray(const Value: TEnumTypeDelphiGenerics);
begin
  FTypeArray := Value;
end;

{ JSONBooleanAttribute }

constructor JSONBooleanAttribute.Create(val: Boolean);
begin
  FValue := val;
end;

{ JsonNameAttribute }

constructor JsonNameAttribute.Create(AName: string);
begin
  FName := AName;
end;

end.
