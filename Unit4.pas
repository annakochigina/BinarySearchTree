unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Menus;

type
  TForm4 = class(TForm)
    Form4Image1: TImage;
    LbZad: TLabel;
    N1: TEdit;
    N2: TEdit;
    N3: TEdit;
    N5: TEdit;
    N4: TEdit;
    N7: TEdit;
    N6: TEdit;
    N9: TEdit;
    N8: TEdit;
    N10: TEdit;
    N11: TEdit;
    N12: TEdit;
    N13: TEdit;
    N15: TEdit;
    N14: TEdit;
    LbName: TLabel;
    BtAnswer: TButton;
    LbTrue: TLabel;
    LbFalse: TLabel;
    LbCountTrue: TLabel;
    LbCountFalse: TLabel;
    BtTrueAnswer: TButton;
    BtOurAnswer: TButton;
    LbChange: TLabel;
    LbNumChange: TLabel;
    BtChange: TButton;
    BtOther: TButton;
    BBMainMenuForm4: TBitBtn;
    MainMenu1: TMainMenu;
    N16: TMenuItem;
    procedure MainMenuForm3Click(Sender: TObject);
    procedure AddTree(n : integer);
    procedure printtree4foraddnode;
    procedure NumberForm4 (nform4 : integer);
    procedure Visible_Edit;
    procedure AddEdit;
    procedure Qsort(l,r: integer);
    procedure BtAnswerClick(Sender: TObject);
    procedure Check;
    procedure EditFalse;
    procedure BtTrueAnswerClick(Sender: TObject);
    procedure BtOurAnswerClick(Sender: TObject);
    procedure BtChangeClick(Sender: TObject);

    procedure RandomTree (var number_tree : integer);
    procedure BtOtherClick(Sender: TObject);
    procedure BBMainMenuForm4Click(Sender: TObject);
    procedure N16Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  massiv_edit_visible : array [1..15] of boolean;
  massiv_edit : array [1..15] of TEdit;
  massiv_node : array [1..15] of integer;
  massiv_true_answer : array [1..15] of integer;
  massiv_answer_student : array [1..15] of integer;
  count_true, change, number_tree : integer;
  flag_key, flag : boolean;

implementation

{$R *.dfm}

uses Unit1, Unit7;

procedure TForm4.MainMenuForm3Click(Sender: TObject);
var i : integer;
begin
        for i := 1 to 15 do begin
            massiv_edit_visible[i] := False;
            massiv_edit[i].Visible := False;
            massiv_node[i] := 0;
            massiv_true_answer[i] := 0;
            massiv_answer_student[i] := 0;
        end;
    Form4.Hide;
    MainForm.Show;
end;

procedure TForm4.N16Click(Sender: TObject);
begin
    Form7.Show;
end;

procedure TForm4.NumberForm4 (nform4 : integer);
var i: Integer;
begin
    BtAnswer.Enabled := True;
    BtAnswer.Visible := True;
    BtTrueAnswer.Enabled := True;
    BtTrueAnswer.Visible := False;
    BtOurAnswer.Enabled := True;
    BtOurAnswer.Visible := False;
    BtChange.Enabled := True;
    BtChange.Visible := False;

    case nform4 of
      1: begin
          change := 1;
          LbNumChange.Caption := IntToStr(change);
          AddEdit;
          RandomTree(number_tree);
      end;
      2: begin
//          for i := 1 to 15 do
//              massiv_balance[i] := False;
//          AddButton;

//          tree4 := TSortTree.Create(9);
//          tree4.AddNode(5, tree4);
//          tree4.AddNode(2, tree4);
//          tree4.AddNode(1, tree4);
//          tree4.AddNode(3, tree4);
//          tree4.AddNode(7, tree4);
//          tree4.AddNode(8, tree4);
//          tree4.AddNode(6, tree4);
//          tree4.AddNode(14, tree4);
//          tree4.AddNode(16, tree4);
//          tree4.AddNode(15, tree4);
//          tree4.AddNode(12, tree4);
//          tree4.AddNode(11, tree4);
//          tree4.AddNode(13, tree4);

//          count_nodes := 1;
//          number_node := 1;
//          tree4.Visiting_Nodes_ForBalance(tree4, 1);
//          for i := 1 to 15 do begin
//            if massiv_button_visible[i] = True then begin
//                massiv_button[i].Visible := True;
//                massiv_button[i].Enabled := True;
//            end;
//          end;
//          tree4.Visiting_Nodes_Balance(tree4, 1);
//          flag := false;
//          tree4.BalanceTree(tree4);
//          printtree4foraddnode;
      end;
      end;
end;

//???????? 1 - ?????????? ?????? ??????//
procedure TForm4.RandomTree (var number_tree : integer);
begin
    number_tree := random(10) + 1;
    AddTree(number_tree);
end;

procedure TForm4.AddTree (n : integer);
var i : integer;
begin

    LbCountTrue.Caption := '';
    LbCountFalse.Caption := '';
    BtTrueAnswer.Visible := False;
    BtOurAnswer.Visible := False;
    BtChange.Visible := False;
    BtAnswer.Enabled := True;
    EditFalse;
    for i := 1 to 15 do begin
        massiv_edit_visible[i] := False;
        massiv_edit[i].Visible := False;
        massiv_node[i] := 0;
        massiv_true_answer[i] := 0;
        massiv_answer_student[i] := 0;
    end;

    case n of
        1: begin
            tree4 := TSortTree.Create(9);
            tree4.AddNode(5, tree4);
            tree4.AddNode(2, tree4);
            tree4.AddNode(1, tree4);
            tree4.AddNode(3, tree4);
            tree4.AddNode(7, tree4);
            tree4.AddNode(8, tree4);
            tree4.AddNode(6, tree4);
            tree4.AddNode(14, tree4);
            tree4.AddNode(16, tree4);
            tree4.AddNode(15, tree4);
            tree4.AddNode(12, tree4);
            tree4.AddNode(11, tree4);
            tree4.AddNode(13, tree4);
        end;
        2: begin
            tree4 := TSortTree.Create(9);
            tree4.AddNode(5, tree4);
            tree4.AddNode(2, tree4);
            tree4.AddNode(7, tree4);
            tree4.AddNode(14, tree4);
            tree4.AddNode(12, tree4);
            tree4.AddNode(11, tree4);
            tree4.AddNode(13, tree4);
        end;
        3: begin
            tree4 := TSortTree.Create(9);
            tree4.AddNode(7, tree4);
            tree4.AddNode(8, tree4);
            tree4.AddNode(14, tree4);
            tree4.AddNode(16, tree4);
            tree4.AddNode(15, tree4);
            tree4.AddNode(12, tree4);
            tree4.AddNode(11, tree4);
            tree4.AddNode(13, tree4);
        end;
        4: begin
            tree4 := TSortTree.Create(9);
            tree4.AddNode(2, tree4);
            tree4.AddNode(1, tree4);
            tree4.AddNode(7, tree4);
            tree4.AddNode(8, tree4);
            tree4.AddNode(6, tree4);
            tree4.AddNode(14, tree4);
            tree4.AddNode(16, tree4);
            tree4.AddNode(11, tree4);
            tree4.AddNode(13, tree4);
        end;
        5: begin
            tree4 := TSortTree.Create(9);
            tree4.AddNode(5, tree4);
            tree4.AddNode(2, tree4);
            tree4.AddNode(1, tree4);
            tree4.AddNode(3, tree4);
            tree4.AddNode(7, tree4);
            tree4.AddNode(8, tree4);
            tree4.AddNode(6, tree4);
            tree4.AddNode(14, tree4);
        end;
        6: begin
            tree4 := TSortTree.Create(9);
            tree4.AddNode(5, tree4);
            tree4.AddNode(3, tree4);
            tree4.AddNode(7, tree4);
            tree4.AddNode(6, tree4);
            tree4.AddNode(14, tree4);
            tree4.AddNode(15, tree4);
            tree4.AddNode(12, tree4);
            tree4.AddNode(13, tree4);
        end;
        7: begin
            tree4 := TSortTree.Create(5);
            tree4.AddNode(2, tree4);
            tree4.AddNode(1, tree4);
            tree4.AddNode(3, tree4);
            tree4.AddNode(8, tree4);
            tree4.AddNode(6, tree4);
        end;
        8: begin
            tree4 := TSortTree.Create(9);
            tree4.AddNode(8, tree4);
            tree4.AddNode(7, tree4);
            tree4.AddNode(6, tree4);
            tree4.AddNode(14, tree4);
            tree4.AddNode(16, tree4);
            tree4.AddNode(15, tree4);
            tree4.AddNode(12, tree4);
            tree4.AddNode(11, tree4);
        end;
        9: begin
            tree4 := TSortTree.Create(9);
            tree4.AddNode(5, tree4);
            tree4.AddNode(7, tree4);
            tree4.AddNode(6, tree4);
            tree4.AddNode(14, tree4);
            tree4.AddNode(12, tree4);
            tree4.AddNode(11, tree4);
            tree4.AddNode(13, tree4);
        end;
        10: begin
            tree4 := TSortTree.Create(9);
            tree4.AddNode(5, tree4);
            tree4.AddNode(14, tree4);
            tree4.AddNode(16, tree4);
            tree4.AddNode(17, tree4);
            tree4.AddNode(15, tree4);
            tree4.AddNode(11, tree4);
            tree4.AddNode(13, tree4);
        end;
    end;
    count_nodes := 1;
    number_node := 1;
    tree4.Visiting_Nodes(tree4, 1);

    Visible_Edit;

    Qsort(1, count_nodes - 1);

    tree4.Visiting_Nodes2_ForKeys (tree4);
    printtree4foraddnode;
end;

procedure TForm4.EditFalse;
var i : integer;
begin
    for i := 1 to 15 do begin
      massiv_edit[i].Visible := False;
      massiv_edit[i].clear;
    end;
end;

procedure TForm4.BBMainMenuForm4Click(Sender: TObject);
var i : integer;
begin
    for i := 1 to 15 do begin
            massiv_edit_visible[i] := False;
            massiv_edit[i].Visible := False;
            massiv_node[i] := 0;
            massiv_true_answer[i] := 0;
            massiv_answer_student[i] := 0;
    end;
    Form4.Hide;
    MainForm.Show;
end;

procedure TForm4.BtAnswerClick(Sender: TObject);
var i, count, count1, s : integer;
begin
    count := 0;
    count1 := 0;
    for i := 1 to 15 do begin
      if (massiv_edit_visible[i] = True) and (massiv_edit[i].Text = '') then
        inc(count);
      if (massiv_edit_visible[i] = True) and (TryStrToInt(massiv_edit[i].Text, s) = False) and (massiv_edit[i].Text <> '') then
        inc(count1);
    end;
    if count > 0 then
      MessageDlg('?? ????????? ?? ??? ????', mtInformation, [mbOk], 0);
    if count1 > 0 then
      MessageDlg('?? ????? ?????? ???????????', mtInformation, [mbOk], 0);
    if ((count = 0) and (count1 = 0)) then begin
      if change = 3 then
          BtChange.Visible := False
      else
          BtChange.Visible := True;
      BtTrueAnswer.Visible := True;
      BtOurAnswer.Visible := True;
      BtAnswer.Enabled := False;

      for i := 1 to 15 do
          if massiv_true_answer[i] <> 0 then
              massiv_answer_student[i] := StrToInt(massiv_edit[i].Text);
      tree4.Visiting_Nodes2_ForKeysStud (tree4);
      Check;
    end;
end;


procedure TForm4.BtChangeClick(Sender: TObject);
begin
    inc(change);
    LbNumChange.Caption := IntToStr(change);
    if change = 3 then
        BtChange.Visible := False;

    LbCountTrue.Caption := '';
    LbCountFalse.Caption := '';
    BtTrueAnswer.Visible := False;
    BtOurAnswer.Visible := False;
    BtChange.Visible := False;
    BtAnswer.Enabled := True;
    EditFalse;

    Visible_Edit;

    tree4.Visiting_Nodes2_ForKeysStud (tree4);
    printtree4foraddnode;
end;

procedure TForm4.BtOtherClick(Sender: TObject);
begin
    change := 1;
    LbCountTrue.Caption := '';
    LbCountFalse.Caption := '';
    LbNumChange.Caption := IntToStr(change);
    RandomTree(number_tree);
end;

procedure TForm4.BtOurAnswerClick(Sender: TObject);
begin
    EditFalse;
    flag_key := False;
    printtree4foraddnode;
end;

procedure TForm4.BtTrueAnswerClick(Sender: TObject);
begin
    EditFalse;
    flag_key := True;
    printtree4foraddnode;
end;

procedure TForm4.printtree4foraddnode;
begin
    tree4.Depth(tree4,countdepth);
    lvly:= Form4Image1.Width div (countdepth+1)-30;
    Form4Image1.Canvas.Brush.Color:=clGradientActiveCaption;
    Form4Image1.Canvas.FillRect(rect(0,0,Form4Image1.Width,Form4Image1.Height));
    tree4.WritelnTreeforForm4(tree4,0,Form4Image1.Width,20,1, Canvas, flag_key);
end;

procedure TForm4.AddEdit;
begin
    massiv_edit[1] := N1;
    massiv_edit[2] := N2;
    massiv_edit[3] := N3;
    massiv_edit[4] := N4;
    massiv_edit[5] := N5;
    massiv_edit[6] := N6;
    massiv_edit[7] := N7;
    massiv_edit[8] := N8;
    massiv_edit[9] := N9;
    massiv_edit[10] := N10;
    massiv_edit[11] := N11;
    massiv_edit[12] := N12;
    massiv_edit[13] := N13;
    massiv_edit[14] := N14;
    massiv_edit[15] := N15;
end;

procedure TForm4.Visible_Edit;
var i: Integer;
begin
    for i := 1 to 15 do
      if massiv_edit_visible[i] = True then
          massiv_edit[i].Visible := True;
end;

procedure TForm4.Qsort(l,r: integer);
var i,j,tmp,x,y:integer;
begin
     x:= massiv_node[(l+r) div 2];
     i:=l;
     j:=r;
     repeat
     while massiv_node[i]<x do inc(i);
     while x<massiv_node[j] do dec(j);
     if i<=j
        then begin
             tmp:=massiv_node[i];
             massiv_node[i]:=massiv_node[j];
             massiv_node[j]:=tmp;
             inc(i);
             dec(j);
             end;
     until (i>j);
     if l<j
        then Qsort(l,j);
     if i<r
        then Qsort(i,r);
end;

procedure TForm4.Check;
var i: Integer;
begin
    count_true := 0;
    for i := 1 to 15 do
      if massiv_true_answer[i] <> 0 then
          if massiv_true_answer[i] = massiv_answer_student[i] then
              inc(count_true);
    LbCountTrue.Caption := IntToStr(count_true);
    LbCountFalse.Caption := IntToStr(count_nodes - count_true - 1);
end;
//???????? 2 - ???????? ??????? ??? ?????????? ?????????????????//

end.
