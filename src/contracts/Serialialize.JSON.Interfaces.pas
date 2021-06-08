unit Serialialize.JSON.Interfaces;

interface

uses
  System.Generics.Collections;

type
  ISerialize<T: Class> = interface
    ['{E688C149-C82E-4E21-8FB3-110E41248E47}']
    function ObjectToJsonArray(AObject: TObjectList<T>): String;
  end;

  IJSON<T: Class> = interface
    ['{888E35D0-04B9-42BE-B953-987E98A3A6BB}']
    function Add(AJsonObjct: String): IJSON<T>; overload;
    function Add(AJsonObjct: T): IJSON<T>; overload;
    function JsonArray: String;
  end;

implementation

end.
