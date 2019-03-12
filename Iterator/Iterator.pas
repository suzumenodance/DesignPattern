unit Iterator;

interface

type
    TStudent = class
        private
            p_Name : String;
            p_Sex : Integer;
        public
            constructor Create(name : String; sex : Integer);

            function GetName : String;
            function GetSex : Integer;
        end;


    TStudentList = class
        private
            p_students : array of TStudent;
            p_last : Integer;
        public
            constructor Create(studentCount : Integer);

            procedure Add(student : TStudent);
            function GetStudentAt(index : Integer) : TStudent;
            function GetLastNum : Integer;

        end;

    TIterator = class

        end;



implementation

{ TStudent }

constructor TStudent.Create(name : String; sex : Integer);
    begin
    Self.p_Name := name;
    Self.p_Sex := sex;
    end;

function TStudent.GetName: String;
    begin
    Result := Self.p_Name;
    end;

function TStudent.GetSex: Integer;
    begin
    Result := Self.p_Sex;
    end;

{ TStudentList }

constructor TStudentList.Create(studentCount: Integer);
    begin
    SetLength(Self.p_students, studentCount);
    end;

procedure TStudentList.Add(student: TStudent);
    begin
    Self.p_students[Self.p_last] := student;
    Inc(Self.p_last, 1);
    end;

function TStudentList.GetStudentAt(index: Integer): TStudent;
    begin
    Result := Self.p_students[index];
    end;

function TStudentList.GetLastNum: Integer;
    begin
    Result := Self.p_last;
    end;



end.
