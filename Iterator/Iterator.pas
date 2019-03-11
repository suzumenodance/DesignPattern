unit Iterator;

interface

type
    TStudent = class
        private
            p_Name : String;
            p_Sex : Integer;
        public
            constructor AfterConstruction(name : String; sex : Integer);

            function GetName : String;
            function GetSex : Integer;
    end;

    TIterator = class

    end;

implementation

{ TStudent }

constructor TStudent.AfterConstruction(name : String; sex : Integer);
    begin
    p_Name := name;
    p_Sex := sex;
    end;

function TStudent.GetName: String;
    begin
    Result := p_Name;
    end;

function TStudent.GetSex: Integer;
    begin
    Result := p_Sex;
    end;

end.
