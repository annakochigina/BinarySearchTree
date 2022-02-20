unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm2 = class(TForm)
    NameLb: TLabel;
    Image1: TImage;
    Image2: TImage;
    BBNext: TBitBtn;
    BBBack: TBitBtn;
    BBMainMenu: TBitBtn;
    procedure BackForm2Click(Sender: TObject);
    procedure NextForm2Click(Sender: TObject);
    procedure BBMainMenuClick(Sender: TObject);
    procedure BBNextClick(Sender: TObject);
    procedure BBBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

Uses Unit1;
{$R *.dfm}

//теоретическая часть//
procedure TForm2.BackForm2Click(Sender: TObject);
begin
    dec(nform2);
    MainForm.NumberForm2(nform2);
end;

procedure TForm2.BBBackClick(Sender: TObject);
begin
    dec(nform2);
    MainForm.NumberForm2(nform2);
end;

procedure TForm2.BBMainMenuClick(Sender: TObject);
begin
    Form2.Hide;
    MainForm.Show;
end;

procedure TForm2.BBNextClick(Sender: TObject);
begin
    inc(nform2);
    MainForm.NumberForm2(nform2);
end;

procedure TForm2.NextForm2Click(Sender: TObject);
begin
    inc(nform2);
    MainForm.NumberForm2(nform2);
end;
//...//
end.
