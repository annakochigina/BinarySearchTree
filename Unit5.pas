unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Menus;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Form5Image1: TImage;
    B1: TButton;
    B2: TButton;
    B3: TButton;
    B4: TButton;
    B5: TButton;
    B6: TButton;
    B7: TButton;
    B9: TButton;
    B8: TButton;
    B11: TButton;
    B10: TButton;
    B13: TButton;
    B12: TButton;
    B15: TButton;
    B14: TButton;
    B17: TButton;
    B16: TButton;
    B19: TButton;
    B18: TButton;
    B21: TButton;
    B20: TButton;
    B23: TButton;
    B22: TButton;
    B25: TButton;
    B24: TButton;
    B27: TButton;
    B26: TButton;
    B29: TButton;
    B28: TButton;
    B31: TButton;
    B30: TButton;
    BtAnswer: TButton;
    LbAnswer: TLabel;
    BtChange: TButton;
    BtTrueAnswer: TButton;
    BtOther: TButton;
    LbName: TLabel;
    BBMainMenuForm5: TBitBtn;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure NumberForm5 (nform5 : integer);
    procedure MainMenuForm3Click(Sender: TObject);
    procedure AddButton;
    procedure printtree5foraddnode;
    procedure B1Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure B5Click(Sender: TObject);
    procedure B6Click(Sender: TObject);
    procedure B7Click(Sender: TObject);
    procedure B8Click(Sender: TObject);
    procedure B9Click(Sender: TObject);
    procedure B10Click(Sender: TObject);
    procedure B11Click(Sender: TObject);
    procedure B12Click(Sender: TObject);
    procedure B13Click(Sender: TObject);
    procedure B14Click(Sender: TObject);
    procedure B15Click(Sender: TObject);
    procedure B16Click(Sender: TObject);
    procedure B17Click(Sender: TObject);
    procedure B18Click(Sender: TObject);
    procedure B19Click(Sender: TObject);
    procedure B20Click(Sender: TObject);
    procedure B21Click(Sender: TObject);
    procedure B22Click(Sender: TObject);
    procedure B23Click(Sender: TObject);
    procedure B24Click(Sender: TObject);
    procedure B25Click(Sender: TObject);
    procedure B26Click(Sender: TObject);
    procedure B27Click(Sender: TObject);
    procedure B28Click(Sender: TObject);
    procedure B29Click(Sender: TObject);
    procedure B30Click(Sender: TObject);
    procedure B31Click(Sender: TObject);
    procedure BtAnswerClick(Sender: TObject);
    procedure BtChangeClick(Sender: TObject);
    procedure ButtonFalse;
    procedure Visible_Button;
    procedure BtTrueAnswerClick(Sender: TObject);
    procedure BtOtherClick(Sender: TObject);
    procedure RandomTree (number_tree : integer);
    procedure AddTree (n : integer);
    procedure RandomNodes;
    procedure BBMainMenuForm5Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  massiv_node2 : array [1..31] of integer;
  massiv_chisel : array [1..31] of integer;
  massiv_balance_true : array [1..31] of boolean;
  massiv_balance_stud : array [1..31] of boolean;
  massiv_property_true : array [1..31] of integer;
  massiv_property_stud : array [1..31] of integer;
  massiv_button_visible : array [1..31] of boolean;
  massiv_button : array [1..31] of TButton;
  count_true, count_answer_stud, count_answer_stud_true, number_tree, count_stud, count_stud_true : integer;

implementation

{$R *.dfm}

uses Unit1, Unit7;

procedure TForm5.B10Click(Sender: TObject);
begin
    B10.Enabled := False;
end;

procedure TForm5.B11Click(Sender: TObject);
begin
    B11.Enabled := False;
end;

procedure TForm5.B12Click(Sender: TObject);
begin
    B12.Enabled := False;
end;

procedure TForm5.B13Click(Sender: TObject);
begin
    B13.Enabled := False;
end;

procedure TForm5.B14Click(Sender: TObject);
begin
    B14.Enabled := False;
end;

procedure TForm5.B15Click(Sender: TObject);
begin
    B15.Enabled := False;
end;

procedure TForm5.B16Click(Sender: TObject);
begin
    B16.Enabled := False;
end;

procedure TForm5.B17Click(Sender: TObject);
begin
    B17.Enabled := False;
end;

procedure TForm5.B18Click(Sender: TObject);
begin
    B18.Enabled := False;
end;

procedure TForm5.B19Click(Sender: TObject);
begin
    B19.Enabled := False;
end;

procedure TForm5.B1Click(Sender: TObject);
begin
    B1.Enabled := False;
end;

procedure TForm5.B20Click(Sender: TObject);
begin
    B20.Enabled := False;
end;

procedure TForm5.B21Click(Sender: TObject);
begin
    B21.Enabled := False;
end;

procedure TForm5.B22Click(Sender: TObject);
begin
    B22.Enabled := False;
end;

procedure TForm5.B23Click(Sender: TObject);
begin
    B23.Enabled := False;
end;

procedure TForm5.B24Click(Sender: TObject);
begin
    B24.Enabled := False;
end;

procedure TForm5.B25Click(Sender: TObject);
begin
    B25.Enabled := False;
end;

procedure TForm5.B26Click(Sender: TObject);
begin
    B26.Enabled := False;
end;

procedure TForm5.B27Click(Sender: TObject);
begin
    B27.Enabled := False;
end;

procedure TForm5.B28Click(Sender: TObject);
begin
    B28.Enabled := False;
end;

procedure TForm5.B29Click(Sender: TObject);
begin
    B29.Enabled := False;
end;

procedure TForm5.B2Click(Sender: TObject);
begin
    B2.Enabled := False;
end;

procedure TForm5.B30Click(Sender: TObject);
begin
    B30.Enabled := False;
end;

procedure TForm5.B31Click(Sender: TObject);
begin
    B31.Enabled := False;
end;

procedure TForm5.B3Click(Sender: TObject);
begin
    B3.Enabled := False;
end;

procedure TForm5.B4Click(Sender: TObject);
begin
    B4.Enabled := False;
end;

procedure TForm5.B5Click(Sender: TObject);
begin
    B5.Enabled := False;
end;

procedure TForm5.B6Click(Sender: TObject);
begin
    B6.Enabled := False;
end;

procedure TForm5.B7Click(Sender: TObject);
begin
    B7.Enabled := False;
end;

procedure TForm5.B8Click(Sender: TObject);
begin
    B8.Enabled := False;
end;

procedure TForm5.B9Click(Sender: TObject);
begin
    B9.Enabled := False;
end;

procedure TForm5.BBMainMenuForm5Click(Sender: TObject);
begin
    Form5.Hide;
    MainForm.Show;
end;

procedure TForm5.BtAnswerClick(Sender: TObject);
var i: Integer;
begin
    BtAnswer.Enabled := False;
    BtChange.Visible := True;
    BtTrueAnswer.Visible := True;
    case nform5 of
      1 : begin
          BtAnswer.Enabled := False;
          BtChange.Visible := True;
          BtTrueAnswer.Visible := True;
          count_answer_stud := 0;
          count_answer_stud_true := 0;
          count_true := 0;
          for i := 1 to 31 do begin
            if massiv_button[i].Enabled = False then
                massiv_balance_stud[i] := True
            else
                massiv_button[i].Visible := False;
            if massiv_balance_true[i] = True then
                inc(count_true);
            if massiv_balance_stud[i] = True then
                inc(count_answer_stud);
            if (massiv_balance_true[i] = True) and (massiv_balance_true[i] = massiv_balance_stud[i])then
                inc(count_answer_stud_true);
          end;
          if (count_true = count_answer_stud_true) and (count_true = count_answer_stud) then
              LbAnswer.Caption := '??? ????? ??????????'
          else if count_answer_stud_true = 0 then
              LbAnswer.Caption := '??? ????? ????????'
          else
              LbAnswer.Caption := '??? ????? ???????? ??????';
      end;
      2 : begin
          count_stud := 0;
          count_stud_true := 0;
          for i := 1 to 31 do begin
              if massiv_button[i].Enabled = False then begin
                  massiv_property_stud[i] := 0;
                  inc(count_stud);
              end
              else
                  massiv_property_stud[i] := 1;
              if (massiv_property_true[i] = 0) and (massiv_property_true[i] = massiv_property_stud[i]) then
                  inc(count_stud_true);
          end;
          if (count_stud = 0) then
              LbAnswer.Caption := '?? ?? ???? ?????!'
          else if (count_true <> 0) and (count_stud_true = count_true) and (count_true = count_stud) then
              LbAnswer.Caption := '??? ????? ??????????!'
          else if count_stud_true = 0 then
              LbAnswer.Caption := '??? ????? ????????!'
          else
              LbAnswer.Caption := '??? ????? ???????? ??????!'
      end;
      end;
end;


procedure TForm5.BtChangeClick(Sender: TObject);
var i : integer;
begin
    case nform5 of
      1 : begin
          for i := 1 to 31 do begin
              massiv_button_visible[i] := False;
              massiv_button[i].Visible := False;
          end;
          LbAnswer.Caption := '';
          BtChange.Visible := False;
          BtAnswer.Enabled :=  True;
          BtTrueAnswer.Visible := False;

          ButtonFalse;

          count_nodes := 1;
          number_node := 1;
          tree5.Visiting_Nodes_ForBalance (tree5, 1);

          Visible_Button;
          tree5.BalanceTree(tree5);
          printtree5foraddnode;
      end;
      2 : begin
          LbAnswer.Caption := '';
          BtChange.Visible := False;
          BtAnswer.Enabled :=  True;
          BtTrueAnswer.Visible := False;
          tree5.Visiting_Nodes_ForBalance(tree5, 1);
          Visible_Button;
          for i := 1 to 31 do begin
              massiv_property_stud[i] := 1;
          end;
      end;
    end;

end;

procedure TForm5.BtOtherClick(Sender: TObject);
var i : integer;
begin
    LbAnswer.Caption := '';
    ButtonFalse;
    BtAnswer.Enabled := True;
    BtTrueAnswer.Visible := False;
    BtChange.Visible := False;
    RandomTree(number_tree);
    count_nodes := 1;
    number_node := 1;
    count_true := 0;
    tree5.Visiting_Nodes_ForBalance(tree5, 1);
    Visible_Button;
    case nform5 of
      1 : begin
          tree5.BalanceTree(tree5);
          printtree5foraddnode;
      end;
      2 : begin
          RandomNodes;
          number_chislo := 0;
          tree5.Visiting_Nodes_ForProperty (tree5);
          printtree5foraddnode;

          tree5.Visiting_Property(tree5);
      end;
    end;
end;

procedure TForm5.RandomTree (number_tree : integer);
begin
    number_tree := random(5) + 1;
    AddTree(number_tree);
end;

procedure TForm5.RandomNodes;
var i, j, x : integer;
begin
    i := 1;
    repeat
      flag := False;
      x := random(100)+ 1;
      for j := 1 to count_nodes do
        if massiv_chisel[j] = x then
          flag := True;
      if flag = False then begin
          massiv_chisel[i] := x;
          inc(i);
      end;
    until (i = count_nodes);
end;

procedure TForm5.AddTree (n : integer);
begin
    ButtonFalse;
    LbAnswer.Caption := '';
    case n of
        1: begin
            tree5 := TSortTree.Create(16);
            tree5.AddNode(8, tree5);
            tree5.AddNode(4, tree5);
            tree5.AddNode(6, tree5);
            tree5.AddNode(2, tree5);
            tree5.AddNode(1, tree5);
            tree5.AddNode(3, tree5);
            tree5.AddNode(5, tree5);
            tree5.AddNode(7, tree5);
            tree5.AddNode(12, tree5);
            tree5.AddNode(10, tree5);
            tree5.AddNode(9, tree5);
            tree5.AddNode(11, tree5);
            tree5.AddNode(24, tree5);
            tree5.AddNode(20, tree5);
            tree5.AddNode(18, tree5);
            tree5.AddNode(17, tree5);
            tree5.AddNode(19, tree5);
            tree5.AddNode(22, tree5);
            tree5.AddNode(23, tree5);
            tree5.AddNode(21, tree5);
            tree5.AddNode(27, tree5);
            tree5.AddNode(30, tree5);
            tree5.AddNode(31, tree5);
            tree5.AddNode(29, tree5);
        end;
        2: begin
            tree5 := TSortTree.Create(16);
            tree5.AddNode(8, tree5);
            tree5.AddNode(4, tree5);
            tree5.AddNode(6, tree5);
            tree5.AddNode(2, tree5);
            tree5.AddNode(1, tree5);
            tree5.AddNode(3, tree5);
            tree5.AddNode(5, tree5);
            tree5.AddNode(7, tree5);
            tree5.AddNode(12, tree5);
            tree5.AddNode(10, tree5);
            tree5.AddNode(24, tree5);
            tree5.AddNode(20, tree5);
            tree5.AddNode(18, tree5);
            tree5.AddNode(19, tree5);
            tree5.AddNode(22, tree5);
            tree5.AddNode(21, tree5);
            tree5.AddNode(28, tree5);
            tree5.AddNode(26, tree5);
            tree5.AddNode(25, tree5);
            tree5.AddNode(27, tree5);
            tree5.AddNode(30, tree5);
            tree5.AddNode(31, tree5);
            tree5.AddNode(29, tree5);
        end;
        3: begin
            tree5 := TSortTree.Create(16);
            tree5.AddNode(8, tree5);
            tree5.AddNode(4, tree5);
            tree5.AddNode(2, tree5);
            tree5.AddNode(3, tree5);
            tree5.AddNode(12, tree5);
            tree5.AddNode(10, tree5);
            tree5.AddNode(9, tree5);
            tree5.AddNode(11, tree5);
            tree5.AddNode(24, tree5);
            tree5.AddNode(20, tree5);
            tree5.AddNode(18, tree5);
            tree5.AddNode(17, tree5);
            tree5.AddNode(19, tree5);
            tree5.AddNode(22, tree5);
            tree5.AddNode(23, tree5);
            tree5.AddNode(21, tree5);
            tree5.AddNode(27, tree5);
        end;
        4: begin
            tree5 := TSortTree.Create(16);
            tree5.AddNode(8, tree5);
            tree5.AddNode(4, tree5);
            tree5.AddNode(6, tree5);
            tree5.AddNode(2, tree5);
            tree5.AddNode(1, tree5);
            tree5.AddNode(3, tree5);
            tree5.AddNode(5, tree5);
            tree5.AddNode(7, tree5);
            tree5.AddNode(12, tree5);
            tree5.AddNode(10, tree5);
            tree5.AddNode(9, tree5);
            tree5.AddNode(11, tree5);
            tree5.AddNode(24, tree5);
            tree5.AddNode(20, tree5);
            tree5.AddNode(18, tree5);
            tree5.AddNode(17, tree5);
            tree5.AddNode(19, tree5);
        end;
        5: begin
            tree5 := TSortTree.Create(16);
            tree5.AddNode(8, tree5);
            tree5.AddNode(4, tree5);
            tree5.AddNode(6, tree5);
            tree5.AddNode(2, tree5);
            tree5.AddNode(1, tree5);
            tree5.AddNode(3, tree5);
            tree5.AddNode(5, tree5);
            tree5.AddNode(7, tree5);
            tree5.AddNode(12, tree5);
            tree5.AddNode(10, tree5);
            tree5.AddNode(9, tree5);
            tree5.AddNode(11, tree5);
            tree5.AddNode(24, tree5);
            tree5.AddNode(20, tree5);
            tree5.AddNode(28, tree5);
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

end;

procedure TForm5.BtTrueAnswerClick(Sender: TObject);
var i: integer;
begin
     for i := 1 to 31 do begin
        massiv_button_visible[i] := False;
        massiv_button[i].Visible := False;
     end;
    case nform5 of
      1: begin
          for i := 1 to 31 do
            if massiv_balance_true[i] = True then begin
              massiv_button[i].Visible := True;
              massiv_button[i].Enabled := False;
            end;
      end;
      2: begin
          for i := 1 to 31 do
            if massiv_property_true[i] = 0 then begin
              massiv_button[i].Visible := True;
              massiv_button[i].Enabled := False;
            end;
      end;
    end;
    tree5.Depth(tree5,countdepth);
    Form5Image1.Canvas.Brush.Color:=clGradientActiveCaption;
    Form5Image1.Canvas.FillRect(rect(0,0,Form5Image1.Width,Form5Image1.Height));
    if nform5 = 1 then
        tree5.WritelnTreeforBalance(tree5,0,Form5Image1.Width,20,1, Form5Image1.Canvas)
    else
        tree5.WritelnTreeforForm5(tree5,0,Form5Image1.Width,20,1, Form5Image1.Canvas);
end;

procedure TForm5.ButtonFalse;
var i : integer;
begin
    LbAnswer.Caption := '';
    case nform5 of
      1 : begin
          for i := 1 to 31 do begin
              massiv_balance_true[i] := False;
              massiv_button_visible[i] := False;
              massiv_button[i].Visible := False;
              massiv_button[i].Enabled := True;
              massiv_balance_stud[i] := False;
          end;
      end;
      2: begin
          number_chislo := 0;
          for i := 1 to 31 do begin
              massiv_button_visible[i] := False;
              massiv_button[i].Visible := False;
              massiv_property_true[i] := -1;
              massiv_property_stud[i] := 1;
              massiv_node2[i] := 0;
              massiv_chisel[i] := 0;
          end;
      end;
    end;
end;

procedure TForm5.Visible_Button;
var i: Integer;
begin
    for i := 1 to 31 do
      if massiv_button_visible[i] = True then begin
          massiv_button[i].Visible := True;
          massiv_button[i].Enabled := True;
      end;
end;

procedure TForm5.MainMenuForm3Click(Sender: TObject);
begin
    Form5.Hide;
    MainForm.Show;
end;

procedure TForm5.N1Click(Sender: TObject);
begin
    Form7.Show;
end;

procedure TForm5.NumberForm5 (nform5 : integer);
var i, j, x : integer;
begin
    BtAnswer.Enabled := True;
    BtAnswer.Visible := True;
    BtTrueAnswer.Enabled := True;
    BtTrueAnswer.Visible := False;
    BtChange.Enabled := True;
    BtChange.Visible := False;
    case nform5 of
      1: begin
        LbName.Caption := '?????????????????? ????????? ??????';
        Label1.Caption := '??????? ???????, ? ??????? ?????????? ??????????????????';
        AddButton;
        ButtonFalse;

        RandomTree (number_tree);
        count_nodes := 1;
        number_node := 1;
        tree5.Visiting_Nodes_ForBalance(tree5, 1);
        Visible_Button;

        tree5.BalanceTree(tree5);
        printtree5foraddnode;
      end;
      2: begin
        LbName.Caption := '???????? ????????? ?????? ??????';
        Label1.Caption := '??????? ???????, ? ??????? ?????????? ???????? ??????????????? ????????? ??????';
        AddButton;
        ButtonFalse;
        RandomTree (number_tree);
        count_nodes := 1;
        number_node := 1;
        tree5.Visiting_Nodes_ForBalance(tree5, 1);
        Visible_Button;
        RandomNodes;

        tree5.Visiting_Nodes_ForProperty (tree5);
        printtree5foraddnode;

        for i := 1 to 31 do
          massiv_property_true[i] := -1;
        count_true := 0;
        tree5.Visiting_Property(tree5);
      end;
    end;

end;

procedure TForm5.AddButton;
begin
    massiv_button[1] := B1;
    massiv_button[2] := B2;
    massiv_button[3] := B3;
    massiv_button[4] := B4;
    massiv_button[5] := B5;
    massiv_button[6] := B6;
    massiv_button[7] := B7;
    massiv_button[8] := B8;
    massiv_button[9] := B9;
    massiv_button[10] := B10;
    massiv_button[11] := B11;
    massiv_button[12] := B12;
    massiv_button[13] := B13;
    massiv_button[14] := B14;
    massiv_button[15] := B15;
    massiv_button[16] := B16;
    massiv_button[17] := B17;
    massiv_button[18] := B18;
    massiv_button[19] := B19;
    massiv_button[20] := B20;
    massiv_button[21] := B21;
    massiv_button[22] := B22;
    massiv_button[23] := B23;
    massiv_button[24] := B24;
    massiv_button[25] := B25;
    massiv_button[26] := B26;
    massiv_button[27] := B27;
    massiv_button[28] := B28;
    massiv_button[29] := B29;
    massiv_button[30] := B30;
    massiv_button[31] := B31;
end;

procedure TForm5.printtree5foraddnode;
begin
    tree5.Depth(tree5,countdepth);
    Form5Image1.Canvas.Brush.Color:=clGradientActiveCaption;
    Form5Image1.Canvas.FillRect(rect(0,0,Form5Image1.Width,Form5Image1.Height));
    tree5.WritelnTreeforForm5(tree5,0,Form5Image1.Width,20,1, Form5Image1.Canvas);
end;

end.
