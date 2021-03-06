unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Math, Unit2, Unit3,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Lb1: TLabel;
    Lb2: TLabel;
    Lb3: TLabel;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N5: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    Image1: TImage;
    Label1: TLabel;
    N4: TMenuItem;
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure NumberForm2(nform2: integer);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
     { Private declarations }
  public
     { Public declarations }
  end;

  TSortTree = class(TObject)
        private
        public
            Info, Number, key, key_stud, balance, propert : Integer;
            Left, Right : TSortTree;
            constructor Create(k:integer);
            procedure AddNode(inf : Integer;var Parent:TSortTree);
            function print :string;
            procedure WritelnTree(x: TSortTree; xmin,xmax,y,countlevel:integer; Canvas: TCanvas);
            procedure WritelnTreeforForm3(x: TSortTree;xmin,xmax,y,countlevel:integer; Canvas: TCanvas);
            procedure WritelnTreeforForm4(x: TSortTree;xmin,xmax,y,countlevel:integer; Canvas: TCanvas; flag_key : boolean);
            procedure Depth (x: TSortTree; var  countdepth:integer);
            procedure selectingtheradiusandfont (countdepth:integer);
            procedure Visiting_Nodes (x : TSortTree; number_node : integer);
            procedure Visiting_Nodes2_ForKeys (x : TSortTree);
            function Add_Keys (x : TSortTree): integer;
            procedure Visiting_Nodes2_ForKeysStud (x : TSortTree);
            procedure WritelnTreeforForm3node(x: TSortTree;xmin,xmax,y,countlevel:integer; Canvas: TCanvas);
            procedure Copy_tree( t : TSortTree; var v : TSortTree);
            procedure BalanceTree (x : TSortTree);
            procedure Visiting_Nodes_Balance (x : TSortTree; number_node : integer);
            procedure Visiting_Nodes_ForBalance (x : TSortTree; number_node : integer);
            procedure WritelnTreeforForm5(x: TSortTree;xmin,xmax,y,countlevel:integer; Canvas: TCanvas);
            procedure WritelnTreeforBalance(x: TSortTree;xmin,xmax,y,countlevel:integer; Canvas: TCanvas);
            procedure Visiting_Nodes_ForProperty (x : TSortTree);
            function Maximum_Tree (x : TSortTree): integer;
            function Minimum_Tree (x : TSortTree): integer;
            procedure Visiting_Nodes_ForMaxMin (x : TSortTree);
            procedure Visiting_Property (x : TSortTree);
            procedure Visiting_Nodes_task (x : TSortTree; number_node_task : integer);
            procedure Visiting_Nodes2_ForKeys_task (x : TSortTree);
            procedure Visiting_Nodes2_ForKeysStud_task (x : TSortTree);
            function Add_Keys_task (x : TSortTree): integer;
            procedure Visiting_Nodes_ForProperty_task3 (x : TSortTree);
  end;

var
  MainForm : TMainForm;
  nform2, nform3, nform4, nform5, nform6, number_node, count_nodes,count_nodes_task, count_nodes_task3, number_node_task3, number_node_task, number_chislo, maximum, minimum, min, max : integer;
  tree3, tree3node, tree3copy, tree5, tree6, tree4, tree_task1, tree_task2, tree_task3 : TSortTree;
  countlevel,countdepth,lvly,radius : integer;
  flag : boolean;
implementation
{$R *.dfm}

uses Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10;

// ???????? ??????//
constructor TSortTree.Create(k:integer);
begin
     Info := k;
     Left := nil;
     Right := nil;
end;

procedure TSortTree.AddNode(inf : Integer;var Parent:TsortTree);
begin
    if Parent = nil
         then Parent :=  TSortTree.Create(inf)
    else if inf < Parent.Info    then
          AddNode(inf, Parent.Left)
    else if inf > Parent.Info then
          AddNode(inf, Parent.Right);
end;

function TSortTree.print: string;
begin
    if self <> nil then
      result := IntToStr(self.Info) + self.Left.print + self.Right.print;
end;
//...//

// ????????????? ?????//
procedure TMainForm.NumberForm2(nform2: integer);
begin
  case nform2 of
    1: begin
      Form2.NameLb.Caption := '???????? ?????? ??????';
      Form2.Image1.Picture.LoadFromFile('????????/??????1.bmp');
      Form2.Image2.Picture.LoadFromFile('????????/???????1??????.bmp');
      Form2.BBBack.Visible := False;
      Form2.BBNext.Visible := True;
    end;
    2: begin
      Form2.NameLb.Caption := '?????? ????????? ??????';
      Form2.Image1.Picture.LoadFromFile('????????/??????2.bmp');
      Form2.Image2.Picture.LoadFromFile('????????/???????2.bmp');
      Form2.BBBack.Visible := True;
      Form2.BBNext.Visible := True;
    end;
    3: begin
      Form2.NameLb.Caption := '?????????????????? ????????? ??????';
      Form2.Image1.Picture.LoadFromFile('????????/??????3.bmp');
      Form2.Image2.Picture.LoadFromFile('????????/???????3.bmp');
      Form2.BBBack.Visible := True;
      Form2.BBNext.Visible := False;
    end;
  end;
end;

procedure TMainForm.N10Click(Sender: TObject);
begin
    MainForm.Hide;
    Form3.Show;
    nform3 := 2;
    Form3.NumberForm3(nform3);
end;

procedure TMainForm.N12Click(Sender: TObject);
begin
   Form7.Show;
end;

procedure TMainForm.N21Click(Sender: TObject);
begin
    MainForm.Hide;
    Form5.Show;
    nform5 := 1;
    Form5.NumberForm5(nform5);
end;

procedure TMainForm.N31Click(Sender: TObject);
begin
    MainForm.Hide;
    Form5.Show;
    number_chislo := 0;
    nform5 := 2;
    Form5.NumberForm5(nform5);
end;

procedure TMainForm.N4Click(Sender: TObject);
begin
    MainForm.Hide;
    Form6.Show;
end;

procedure TMainForm.N5Click(Sender: TObject); //????? 4 - ????????
begin
    MainForm.Hide;
    Form4.Show;
    nform4 := 1;
    Form4.NumberForm4(nform4);
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
    MainForm.Hide;
    Form2.Show;
    nform2 := 1;
    MainForm.NumberForm2(nform2);
end;

procedure TMainForm.N7Click(Sender: TObject);
begin
    MainForm.Hide;
    Form2.Show;
    nform2:= 2;
    MainForm.NumberForm2(nform2);
end;

procedure TMainForm.N8Click(Sender: TObject);
begin
    MainForm.Hide;
    Form2.Show;
    nform2 := 3;
    MainForm.NumberForm2(nform2);
end;

procedure TMainForm.N9Click(Sender: TObject);
begin
    Form3.BB1.Visible := True;
    MainForm.Hide;
    Form3.Show;
    nform3 := 1;
    Form3.NumberForm3(nform3);
end;
//...//

//?????? ??????//
procedure TSortTree.Depth (x: TSortTree; var  countdepth:integer);
var l,r:integer;
begin
 if x=nil then
    countdepth:=0
 else begin
   Depth(x.Left,l);
   Depth(x.Right,r);
   if l>r then
      countdepth:=l+1
   else countdepth:=r+1
 end;
end;

procedure TSortTree.selectingtheradiusandfont (countdepth:integer);
begin
if (countdepth>=1) and (countdepth<4) then begin
  Form3.Form3Image1.Canvas.Font.Size:=18;
  radius:=40;
end
  else if (countdepth>=4) and (countdepth<6) then begin
      Form3.Form3Image1.Canvas.Font.Size:=14;
      radius:=32;
  end
    else begin
       Form3.Form3Image1.Canvas.Font.Size:=9;
       radius:=17;
    end;
end;

procedure TSortTree.WritelnTree(x: TSortTree;xmin,xmax,y,countlevel:integer; Canvas: TCanvas);
begin
  if x <> nil then begin
    if x.Left<>nil then begin
      Form3.Form3Image1.Canvas.MoveTo((xmax-xmin) div 2 + xmin+radius div 2,y);
      Form3.Form3Image1.Canvas.LineTo(((xmax+xmin) div 2 + xmin)div 2,lvly*countlevel);
    end;

    if x.Right<>nil then begin
      Form3.Form3Image1.Canvas.MoveTo((xmax-xmin) div 2+xmin+radius div 2,y);
      Form3.Form3Image1.Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,lvly*countlevel);
    end;

    Form3.Form3Image1.Canvas.Ellipse((xmax-xmin) div 2+xmin-radius div 4,y-radius div 4,(xmax-xmin) div 2+xmin+radius,y+radius);
    Form3.Form3Image1.Canvas.textout((xmax-xmin) div 2+xmin,y,IntToStr(x.Info));
    WritelnTree(x.Left,xmin,(xmax+xmin) div 2,lvly*countlevel,countlevel+1, Canvas);
    WritelnTree(x.Right,(xmax+xmin) div 2,xmax,lvly*countlevel,countlevel+1, Canvas);
  end;
end;
//...//

procedure TSortTree.WritelnTreeforForm3(x: TSortTree;xmin,xmax,y,countlevel:integer; Canvas: TCanvas);
begin
  if x <> nil then begin
    if x.Left<>nil then begin
      Form3.Form3Image1.Canvas.MoveTo((xmax-xmin) div 2+xmin-15,y + 20);
      Form3.Form3Image1.Canvas.LineTo(((xmax+xmin) div 2)div 2 + (xmin div 2),y + 20);
      Form3.Form3Image1.Canvas.MoveTo(((xmax+xmin) div 2)div 2 + (xmin div 2), y + 20);
      Form3.Form3Image1.Canvas.LineTo(((xmax+xmin) div 2 + xmin)div 2,lvly*countlevel);
    end
  else begin
      Form3.Form3Image1.Canvas.MoveTo((xmax-xmin) div 2+xmin-15,y + 20);
      Form3.Form3Image1.Canvas.LineTo(((xmax+xmin) div 2)div 2 + (xmin div 2), y + 20);
      Form3.Form3Image1.Canvas.MoveTo(((xmax+xmin) div 2)div 2 + (xmin div 2), y + 20);
      Form3.Form3Image1.Canvas.LineTo(((xmax+xmin) div 2 + xmin)div 2,lvly*countlevel);
      Form3.Form3Image1.Canvas.TextOut(((xmax+xmin) div 2 + xmin)div 2,lvly*countlevel, 'nil');
  end;

  if x.Right<>nil then begin
      Form3.Form3Image1.Canvas.MoveTo((xmax-xmin) div 2+xmin+15 div 2,y + 40);
      Form3.Form3Image1.Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,y + 40);
      Form3.Form3Image1.Canvas.MoveTo(((xmax+xmin) div 2 + xmax) div 2,y + 40);
      Form3.Form3Image1.Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,lvly*countlevel);
  end
  else begin
      Form3.Form3Image1.Canvas.MoveTo((xmax-xmin) div 2+xmin+15 div 2,y + 40);
      Form3.Form3Image1.Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,y + 40);
      Form3.Form3Image1.Canvas.MoveTo(((xmax+xmin) div 2 + xmax) div 2,y + 40);
      Form3.Form3Image1.Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,lvly*countlevel);
      Form3.Form3Image1.Canvas.TextOut(((xmax+xmin) div 2 + xmax) div 2,lvly*countlevel, 'nil');
  end;

    Form3.Form3Image1.Canvas.Rectangle((xmax-xmin) div 2+xmin-15,y ,(xmax-xmin) div 2+xmin+15,y+15);
    Form3.Form3Image1.Canvas.Rectangle((xmax-xmin) div 2+xmin-15,y+15 ,(xmax-xmin) div 2+xmin+15,y+30);
    Form3.Form3Image1.Canvas.Rectangle((xmax-xmin) div 2+xmin-15,y+30 ,(xmax-xmin) div 2+xmin+15,y+45);
    Form3.Form3Image1.Canvas.textout((xmax-xmin) div 2+xmin - 5,y+1,IntToStr(x.Info));
    WritelnTreeforForm3(x.Left,xmin,(xmax+xmin) div 2,lvly*countlevel,countlevel+1, Canvas);
    WritelnTreeforForm3(x.Right,(xmax+xmin) div 2,xmax,lvly*countlevel,countlevel+1, Canvas);
  end;
end;

procedure TSortTree.WritelnTreeforForm3node(x: TSortTree;xmin,xmax,y,countlevel:integer; Canvas: TCanvas);
var s : string;
begin
  if x <> nil then begin
    if x.Left <> nil then begin
      Form3.Form3Image2.Canvas.MoveTo((xmax-xmin) div 2+xmin-18,y + 20);
      Form3.Form3Image2.Canvas.LineTo(((xmax+xmin) div 2)div 2 + (xmin div 2),y + 20);
      Form3.Form3Image2.Canvas.MoveTo(((xmax+xmin) div 2)div 2 + (xmin div 2), y + 20);
      Form3.Form3Image2.Canvas.LineTo(((xmax+xmin) div 2 + xmin)div 2,y + 70);
    end
    else begin
      Form3.Form3Image2.Canvas.MoveTo((xmax-xmin) div 2+xmin-18,y + 20);
      Form3.Form3Image2.Canvas.LineTo(((xmax+xmin) div 2)div 2 + (xmin div 2),y + 20);
      Form3.Form3Image2.Canvas.MoveTo(((xmax+xmin) div 2)div 2 + (xmin div 2), y + 20);
      Form3.Form3Image2.Canvas.LineTo(((xmax+xmin) div 2 + xmin)div 2,y + 70);
      Form3.Form3Image2.Canvas.TextOut(((xmax+xmin) div 2 + xmin)div 2,y + 70, 'nil');
    end;
    if x.Right<>nil then begin
      Form3.Form3Image2.Canvas.MoveTo((xmax-xmin) div 2+xmin+18 div 2,y + 40);
      Form3.Form3Image2.Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,y + 40);
      Form3.Form3Image2.Canvas.MoveTo(((xmax+xmin) div 2 + xmax) div 2,y + 40);
      Form3.Form3Image2.Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,y + 70);
    end
    else begin
      Form3.Form3Image2.Canvas.MoveTo((xmax-xmin) div 2+xmin+18 div 2,y + 40);
      Form3.Form3Image2.Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,y + 40);
      Form3.Form3Image2.Canvas.MoveTo(((xmax+xmin) div 2 + xmax) div 2,y + 40);
      Form3.Form3Image2.Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,y + 70);
      Form3.Form3Image2.Canvas.TextOut(((xmax+xmin) div 2 + xmax) div 2,y + 70, 'nil');
    end;

    Form3.Form3Image2.Canvas.Rectangle((xmax-xmin) div 2+xmin-18,y ,(xmax-xmin) div 2+xmin+18,y+15);
    Form3.Form3Image2.Canvas.Rectangle((xmax-xmin) div 2+xmin-18,y+15 ,(xmax-xmin) div 2+xmin+18,y+30);
    Form3.Form3Image2.Canvas.Rectangle((xmax-xmin) div 2+xmin-18,y+30 ,(xmax-xmin) div 2+xmin+18,y+45);
    Form3.Form3Image2.Canvas.textout((xmax-xmin) div 2+xmin - 5,y+1,IntToStr(x.info));
    WritelnTreeforForm3node(x.Left,xmin,(xmax+xmin) div 2,y+70,countlevel+1, Canvas);
    WritelnTreeforForm3node(x.Right,(xmax+xmin) div 2,xmax,y+70,countlevel+1, Canvas);
  end;
end;

procedure TSortTree.WritelnTreeforForm4(x: TSortTree;xmin,xmax,y,countlevel:integer; Canvas: TCanvas; flag_key : boolean);
var s : string;
begin
  if x <> nil then begin
    if x.Left <> nil then begin
      Form4.Form4Image1.Canvas.MoveTo((xmax-xmin) div 2+xmin-18,y + 20);
      Form4.Form4Image1.Canvas.LineTo(((xmax+xmin) div 2)div 2 + (xmin div 2),y + 20);
      Form4.Form4Image1.Canvas.MoveTo(((xmax+xmin) div 2)div 2 + (xmin div 2), y + 20);
      Form4.Form4Image1.Canvas.LineTo(((xmax+xmin) div 2 + xmin)div 2,y + 70);
    end;
    if x.Right<>nil then begin
      Form4.Form4Image1.Canvas.MoveTo((xmax-xmin) div 2+xmin+18 div 2,y + 40);
      Form4.Form4Image1.Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,y + 40);
      Form4.Form4Image1.Canvas.MoveTo(((xmax+xmin) div 2 + xmax) div 2,y + 40);
      Form4.Form4Image1.Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,y + 70);
    end;

    Form4.Form4Image1.Canvas.Rectangle((xmax-xmin) div 2+xmin-18,y ,(xmax-xmin) div 2+xmin+18,y+15);
    Form4.Form4Image1.Canvas.Rectangle((xmax-xmin) div 2+xmin-18,y+15 ,(xmax-xmin) div 2+xmin+18,y+30);
    Form4.Form4Image1.Canvas.Rectangle((xmax-xmin) div 2+xmin-18,y+30 ,(xmax-xmin) div 2+xmin+18,y+45);
    if flag_key = True then
        s := IntToStr(x.key)
    else
        s := IntToStr(x.key_stud);
    Form4.Form4Image1.Canvas.textout((xmax-xmin) div 2+xmin - 5,y+1,s);
    WritelnTreeforForm4(x.Left,xmin,(xmax+xmin) div 2,y+70,countlevel+1, Canvas, flag_key);
    WritelnTreeforForm4(x.Right,(xmax+xmin) div 2,xmax,y+70,countlevel+1, Canvas, flag_key);
  end;
end;

procedure TSortTree.WritelnTreeforForm5(x: TSortTree;xmin,xmax,y,countlevel:integer; Canvas: TCanvas);
var s : string;
begin
  if x <> nil then begin
    if x.Left <> nil then begin
      Canvas.MoveTo((xmax-xmin) div 2+xmin-18,y + 20);
      Canvas.LineTo(((xmax+xmin) div 2)div 2 + (xmin div 2),y + 20);
      Canvas.MoveTo(((xmax+xmin) div 2)div 2 + (xmin div 2), y + 20);
      Canvas.LineTo(((xmax+xmin) div 2 + xmin)div 2,y + 70);
    end;
    if x.Right<>nil then begin
      Canvas.MoveTo((xmax-xmin) div 2+xmin+18 div 2,y + 40);
      Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,y + 40);
      Canvas.MoveTo(((xmax+xmin) div 2 + xmax) div 2,y + 40);
      Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,y + 70);
    end;
    Canvas.Rectangle((xmax-xmin) div 2+xmin-18,y ,(xmax-xmin) div 2+xmin+18,y+15);
    Canvas.Rectangle((xmax-xmin) div 2+xmin-18,y+15 ,(xmax-xmin) div 2+xmin+18,y+30);
    Canvas.Rectangle((xmax-xmin) div 2+xmin-18,y+30 ,(xmax-xmin) div 2+xmin+18,y+45);
    Canvas.textout((xmax-xmin) div 2+xmin - 5,y+1,IntToStr(x.info));
    WritelnTreeforForm5(x.Left,xmin,(xmax+xmin) div 2,y+70,countlevel+1, Canvas);
    WritelnTreeforForm5(x.Right,(xmax+xmin) div 2,xmax,y+70,countlevel+1, Canvas);
  end;
end;

procedure TSortTree.WritelnTreeforBalance(x: TSortTree;xmin,xmax,y,countlevel:integer; Canvas: TCanvas);
var s : string;
    d1,d2 : integer;
begin
  if x <> nil then begin
    if x.Left <> nil then begin
      Canvas.MoveTo((xmax-xmin) div 2+xmin-18,y + 20);
      Canvas.LineTo(((xmax+xmin) div 2)div 2 + (xmin div 2),y + 20);
      Canvas.MoveTo(((xmax+xmin) div 2)div 2 + (xmin div 2), y + 20);
      Canvas.LineTo(((xmax+xmin) div 2 + xmin)div 2,y + 70);
      depth(x.Left,d1);
      Canvas.textout((xmax-xmin) div 2+xmin-25,y+7,IntToStr(d1));
    end;
    if x.Right<>nil then begin
      Canvas.MoveTo((xmax-xmin) div 2+xmin+18 div 2,y + 40);
      Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,y + 40);
      Canvas.MoveTo(((xmax+xmin) div 2 + xmax) div 2,y + 40);
      Canvas.LineTo(((xmax+xmin) div 2 + xmax) div 2,y + 70);
      depth(x.Right,d2);
      Canvas.textout((xmax-xmin) div 2+xmin+20,y+25,IntToStr(d2));
    end;

    Canvas.Rectangle((xmax-xmin) div 2+xmin-18,y ,(xmax-xmin) div 2+xmin+18,y+15);
    Canvas.Rectangle((xmax-xmin) div 2+xmin-18,y+15 ,(xmax-xmin) div 2+xmin+18,y+30);
    Canvas.Rectangle((xmax-xmin) div 2+xmin-18,y+30 ,(xmax-xmin) div 2+xmin+18,y+45);
    Canvas.textout((xmax-xmin) div 2+xmin - 5,y+1,IntToStr(x.Info));
    WritelnTreeforBalance(x.Left,xmin,(xmax+xmin) div 2,y+70,countlevel+1, Canvas);
    WritelnTreeforBalance(x.Right,(xmax+xmin) div 2,xmax,y+70,countlevel+1, Canvas);
  end;
end;

procedure TSortTree.Visiting_Nodes (x : TSortTree; number_node : integer);
begin
    if x <> nil then begin
        massiv_node[count_nodes] := x.info;
        inc(count_nodes);
        x.Number := number_node;
        massiv_edit_visible[number_node] := True;
        Visiting_Nodes(x.Left, 2 * number_node);
        x.Number := number_node;
        massiv_edit_visible[number_node] := True;
        Visiting_Nodes(x.Right, 2 * number_node + 1);
    end;
end;

procedure TSortTree.Visiting_Nodes_task (x : TSortTree; number_node_task : integer);
begin
    if x <> nil then begin
        massiv_node_task[count_nodes_task] := x.info;
        inc(count_nodes_task);
        x.Number := number_node_task;
        massiv_edit_visible_task[number_node_task] := True;
        Visiting_Nodes_task(x.Left, 2 * number_node_task);
        x.Number := number_node_task;
        massiv_edit_visible_task[number_node_task] := True;
        Visiting_Nodes_task(x.Right, 2 * number_node_task + 1);
    end;
end;

procedure TSortTree.Visiting_Nodes2_ForKeys (x : TSortTree);
begin
    if x <> nil then begin
        x.key := Add_Keys(x);
        massiv_true_answer[x.Number] := x.key;
        Visiting_Nodes2_ForKeys(x.Left);
        Visiting_Nodes2_ForKeys(x.Right);
    end;
end;

procedure TSortTree.Visiting_Nodes2_ForKeys_task (x : TSortTree);
begin
    if x <> nil then begin
        x.key := Add_Keys_task(x);
        massiv_true_answer_task[x.Number] := x.key;
        Visiting_Nodes2_ForKeys_task(x.Left);
        Visiting_Nodes2_ForKeys_task(x.Right);
    end;
end;

procedure TSortTree.Visiting_Nodes2_ForKeysStud (x : TSortTree);
begin
    if x <> nil then begin
        x.key_stud := massiv_answer_student[x.Number];
        Visiting_Nodes2_ForKeysStud(x.Left);
        Visiting_Nodes2_ForKeysStud(x.Right);
    end;
end;

procedure TSortTree.Visiting_Nodes2_ForKeysStud_task (x : TSortTree);
begin
    if x <> nil then begin
        x.key_stud := massiv_answer_student_task[x.Number];
        Visiting_Nodes2_ForKeysStud_task(x.Left);
        Visiting_Nodes2_ForKeysStud_task(x.Right);
    end;
end;

function TSortTree.Add_Keys (x : TSortTree): integer;
var i, keys: Integer;
begin
    for i := 1 to count_nodes do
        if massiv_node[i] = x.info then
            keys := i;
    Add_Keys := keys;
end;

function TSortTree.Add_Keys_task (x : TSortTree): integer;
var i, keys: Integer;
begin
    for i := 1 to count_nodes_task do
        if massiv_node_task[i] = x.info then
            keys := i;
    Add_Keys_task := keys;
end;

procedure TSortTree.Copy_tree( t : TSortTree; var v : TSortTree);//???????????
begin
  if t<>nil then begin
    AddNode (t.Info,v);
    Copy_tree(t.left,v.left);
    Copy_tree(t.right,v.right);
  end
  else
    v:=nil;
end;

procedure TSortTree.Visiting_Nodes_Balance (x : TSortTree; number_node : integer);
begin
    if x <> nil then begin
        x.Number := number_node;
        Visiting_Nodes(x.Left, 2 * number_node);
        x.Number := number_node;
        Visiting_Nodes(x.Right, 2 * number_node + 1);
    end;
end;

procedure TSortTree.BalanceTree (x : TSortTree);
var d1,d2 : integer;
begin
     if x <> nil then begin
        depth(x.Left,d1);
        depth(x.Right,d2);
        x.balance := abs(d1-d2);
        if abs(d1-d2) > 1 then
          massiv_balance_true[x.Number] := True;
        BalanceTree(x.left);
        BalanceTree(x.right);
     end;
end;

procedure TSortTree.Visiting_Nodes_ForBalance (x : TSortTree; number_node : integer);
begin
    if x <> nil then begin
        massiv_node2[count_nodes] := x.info;
        inc(count_nodes);
        x.Number := number_node;
        massiv_button_visible[number_node] := True;
        if nform5 = 1 then
            massiv_button[number_node].Caption := IntToStr(x.Info);
        Visiting_Nodes_ForBalance(x.Left, 2 * number_node);
        x.Number := number_node;
        massiv_button_visible[number_node] := True;
        if nform5 = 1 then
            massiv_button[number_node].Caption := IntToStr(x.Info);
        Visiting_Nodes_ForBalance(x.Right, 2 * number_node + 1);
    end;
end;

procedure TSortTree.Visiting_Nodes_ForProperty (x : TSortTree);
var s : string;
begin
    if x <> nil then begin
        inc(number_chislo);
        x.propert := massiv_chisel[number_chislo];
        x.info := x.propert;
        massiv_button[x.number].Caption := IntToStr(x.propert);
        Visiting_Nodes_ForProperty (x.Left);
        Visiting_Nodes_ForProperty (x.Right);
    end;
end;

procedure TSortTree.Visiting_Nodes_ForProperty_task3 (x : TSortTree);
var s : string;
begin
    if x <> nil then begin
        inc(number_chislo);
        x.propert := massiv_chisel_task3[number_chislo];
        x.info := x.propert;
        massiv_button[x.number].Caption := IntToStr(x.propert);
        Visiting_Nodes_ForProperty_task3 (x.Left);
        Visiting_Nodes_ForProperty_task3 (x.Right);
    end;
end;

function TSortTree.Maximum_Tree (x : TSortTree): integer;
begin
    if x <> nil then begin
      if x.propert > max then
          max := x.propert;
      Maximum_Tree (x.Left);
      Maximum_Tree (x.Right)
    end;
    Maximum_Tree := max;
end;

function TSortTree.Minimum_Tree (x : TSortTree): integer;
begin
    if x <> nil then begin
      if x.propert < min then
          min := x.propert;
      Minimum_Tree (x.Left);
      Minimum_Tree (x.Right);
    end;
    Minimum_Tree := min;
end;

procedure TSortTree.Visiting_Nodes_ForMaxMin (x : TSortTree);
begin
    if x <> nil then begin
        minimum := Minimum_Tree (x.Right);
        maximum := Maximum_Tree (x.Left)
    end;
end;

procedure TSortTree.Visiting_Property (x : TSortTree);
begin
    max := 0;
    min := 101;
    if x <> nil then begin
       if massiv_button_visible[x.number] = True then begin
          minimum := Minimum_Tree (x.Right);
          maximum := Maximum_Tree (x.Left);
          if (minimum > x.propert) and (maximum < x.propert) then
              massiv_property_true[x.Number] := 1
          else begin
              massiv_property_true[x.Number] := 0;
              inc(count_true);
          end;
       end;
       Visiting_Property (x.Left);
       Visiting_Property (x.Right);
    end;
end;

end.
