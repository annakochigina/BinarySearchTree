unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    procedure BBMainMenuForm4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm7.BBMainMenuForm4Click(Sender: TObject);
begin
    Form7.Hide;
    MainForm.Show;
end;

end.
