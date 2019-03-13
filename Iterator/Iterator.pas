unit Iterator;

interface

uses
    Winapi.Windows,
    Vcl.Dialogs,
    System.SysUtils;

const
    //student list number
    STUDENTS_COUNT = 5;

    //sex
    BOY = 0;
    GIRL = 1;

type
    TStudent = class
        private
            p_Name : String;
            p_Sex : Integer;
        public
            constructor Create(name : String; sex : Integer);
            destructor Destroy; override;

            function GetName : String;
            function GetSex : Integer;
        end;


    TStudentList = class
        private
            p_students : array of TStudent;
            p_last : Integer;
        public
            constructor Create(studentCount : Integer);
            destructor Destroy; override;

            procedure Add(student : TStudent);
            function GetStudentAt(index : Integer) : TStudent;
            function GetLastNum : Integer;
        end;

    TTeacher = class
        protected
            studentList : TStudentList;

        public
            procedure createStudentList(); virtual; abstract;
            procedure callStudents(); virtual; abstract;

        end;

    TMyTeacher = class(TTeacher)
        public
            constructor Create;
            destructor Destroy; override;

            procedure createStudentList(); override;
            procedure callStudents(); override;

        end;

implementation

{ TStudent }

constructor TStudent.Create(name : String; sex : Integer);
    begin
    Self.p_Name := name;
    Self.p_Sex := sex;
    end;

destructor TStudent.Destroy;
    begin
    Self.p_Name := '';
    Self.p_Sex := 0;
    inherited;
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

destructor TStudentList.Destroy;
    begin

    inherited;
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

{ TMyTeacher }

constructor TMyTeacher.Create;
    begin
    Self.studentList := TStudentList.Create(STUDENTS_COUNT);
    end;

destructor TMyTeacher.Destroy;
    var
        i : Integer;
    begin
    for i := 0 to Self.studentList.GetLastNum - 1 do
        Self.studentList.GetStudentAt(i).Free;
    Self.studentList.Free;
    inherited;
    end;

procedure TMyTeacher.createStudentList;
    begin
    Self.studentList.Add(TStudent.Create('Ôˆä—º‘¾', BOY));
    Self.studentList.Add(TStudent.Create('Ô‰H—¢”ü', GIRL));
    Self.studentList.Add(TStudent.Create('‰ª“c”ü‰›', GIRL));
    Self.studentList.Add(TStudent.Create('¼Xr‰î', BOY));
    Self.studentList.Add(TStudent.Create('’†ƒmX—æØ', GIRL));
    end;

procedure TMyTeacher.callStudents;
    var
        i : Integer;
        student : TStudent;
        text : String;
    begin
    text := '';
    for i := 0 to STUDENTS_COUNT - 1 do
        begin
        student := Self.studentList.GetStudentAt(i);
        text := text + student.GetName + ' : ' + IntToStr(student.GetSex);
        if i < (STUDENTS_COUNT - 1) then
            text := text + #13#10;
        end;

    ShowMessage(text);
    end;

end.
