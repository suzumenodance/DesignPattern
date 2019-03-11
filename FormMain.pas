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

implementation

{$R *.dfm}

procedure TFormMain.ButtonIteratorClick(Sender: TObject);
    begin
    //
    end;

end.
