unit FormMain;

interface

uses
    Winapi.Windows,
    Winapi.Messages,
    System.SysUtils,
    System.Variants,
    System.Classes,
    Vcl.Graphics,
    Vcl.Controls,
    Vcl.Forms,
    Vcl.Dialogs,
    Vcl.StdCtrls;

type
    TFormMain = class(TForm)
    ButtonIterator: TButton;
    procedure ButtonIteratorClick(Sender: TObject);

    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    MainForm : TFormMain;

implementation

uses
    Iterator;

{$R *.dfm}

procedure TFormMain.ButtonIteratorClick(Sender: TObject);
    var
        you : TMyTeacher;
    begin
    you := TMyTeacher.Create;
    you.createStudentList;
    you.callStudents;
    you.Free;
    end;

end.
