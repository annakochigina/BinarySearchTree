unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Menus;

type
  TForm3 = class(TForm)
    Form3NameLb: TLabel;
    Form3Image1: TImage;
    STText1: TStaticText;
    BB1: TBitBtn;
    Label1: TLabel;
    Lbpointer: TLabel;
    MainMenu1: TMainMenu;
    Pr1: TMenuItem;
    Pr2: TMenuItem;
    Pr3: TMenuItem;
    EdInputNode: TEdit;
    LbInputNode: TLabel;
    BtAdd: TButton;
    Form3Image2: TImage;
    BBMainMenuForm3: TBitBtn;
    procedure Form3Tree;
    procedure NumberForm3 (nform3 : integer);
    procedure printtree3;
    procedure printtree3foraddnode;
    procedure CodeAddNode;
    procedure BB1Click(Sender: TObject);
    procedure Pr1Click(Sender: TObject);
    procedure Pr2Click(Sender: TObject);
    procedure Pr3Click(Sender: TObject);
    procedure analysistree (k : integer);
    procedure zero;
    procedure BtAddClick(Sender: TObject);
    procedure Tree_building (node : integer; count_node : integer);
    procedure BBMainMenuForm3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  n, numstrsel, information, count_elemstack, k : integer;
  list : TList;
  Obj, LB : TListBox;
  flag : boolean;
  node : string;
  list_tree : array [0..20] of integer;
  A : array [1..7] of integer;

implementation

Uses Unit1;
{$R *.dfm}
type ElemStack = record
     level, xmax, xmin, y, numberstr, count_node : integer;
     pointer_tree : TSortTree;
    end;
    TStack = array [0..10] of ElemStack;

var Stack : TStack;
    pointer : TSortTree;

//????????? ?????????//
procedure TForm3.NumberForm3 (nform3 : integer);
var i, j : integer;
begin
    case nform3 of
      1: begin
        Form3.Menu := MainMenu1;

        Form3Image1.Visible := True;
        Form3Image2.Visible := False;
        for i := 0 to 10 do begin
            Stack[0].level := 0;
            Stack[0].xmax := 0;
            Stack[0].xmin := 0;
            Stack[0].y := Form3Image1.Top + 1;
            count_elemstack := 0;
            flag := True;
            pointer := tree3;
        end;

        Form3NameLb.Caption := '?????????? ???? ? ???????? ??????';
        StText1.Visible := True;
        Label1.Visible := True;
        Lbpointer.Visible := True;
        LbInputNode.Visible := False;
        EdInputNode.Visible := False;

        k := 5;
        list_tree[0] := 5;
        list_tree[1] := 3;
        list_tree[2] := 10;
        list_tree[3] := 2;
        list_tree[4] := 14;

        list := TList.Create;
        analysistree(k);
        printtree3foraddnode;
        information := 4;
        Form3Tree;
      end;
      2: begin
        Form3.Menu := nil;

        Form3NameLb.Caption := '?????????? ????????? ?????? ??????';
        StText1.Visible := False;;
        Label1.Visible := False;
        Lbpointer.Visible := False;

        LbInputNode.Visible := True;
        EdInputNode.Visible := True;

        Form3Image1.Visible := False;
        Form3Image2.Visible := True;

        Form3Image2.Width := 666;
        Form3Image2.Height := 566;
        Form3Image2.Top := 95;
        Form3Image2.Left := 271;
        Form3.BB1.Visible := False;
        Form3Image2.Canvas.Brush.Color:=clGradientActiveCaption;
        Form3Image2.Canvas.FillRect(rect(0,0,Form3.Form3Image2.Width,Form3Image2.height));
      end;
    end;
end;

procedure TForm3.BB1Click(Sender: TObject);
begin
  if list.Count > 0 then begin
    LB.Selected[numstrsel] := True;
    case numstrsel of
        3: begin
            STText1.Caption := '?????????, ?????? ?? ??????, ? ??????? ????? ???????? ????';
            if pointer = nil then
              inc(numstrsel)
            else
              numstrsel := numstrsel + 6
        end;
        4: begin
            STText1.Caption := '??????? ????? ???? ? ??????? ???? info, left ? right';
            inc(numstrsel);
            Form3.Form3Image1.Canvas.Rectangle(30, 5, 60, 20);
            Form3.Form3Image1.Canvas.Rectangle(30, 20, 60, 35);
            Form3.Form3Image1.Canvas.Rectangle(30, 35, 60, 50);
        end;
        5: begin
            STText1.Caption := '? ???? info ?????????? ?????? ????';
            inc(numstrsel);
            Form3.Form3Image1.Canvas.Textout(45, 6, IntToStr(information));
        end;
        6: begin
            STText1.Caption := '?????? ?? ????? ????????? ???????????? ???? nil';
            inc(numstrsel);
            Form3.Form3Image1.Canvas.MoveTo(30, 25);
            Form3.Form3Image1.Canvas.LineTo(15, 25);
            Form3.Form3Image1.Canvas.MoveTo(15, 25);
            Form3.Form3Image1.Canvas.LineTo(15, 65);
            Form3.Form3Image1.Canvas.Textout(15, 65, 'nil');
        end;
        7: begin
            STText1.Caption := '?????? ?? ?????? ????????? ???????????? ???? nil';
            inc(numstrsel);
            Form3.Form3Image1.Canvas.MoveTo(60, 40);
            Form3.Form3Image1.Canvas.LineTo(75, 40);
            Form3.Form3Image1.Canvas.MoveTo(75, 40);
            Form3.Form3Image1.Canvas.LineTo(75, 80);
            Form3.Form3Image1.Canvas.Textout(75, 80, 'nil');
        end;
        8: begin
           if flag = True then begin
            STText1.Caption := '???????? ???????????????';
            tree3.AddNode(information, tree3);
            flag := False;
           end
           else if flag = False then begin
            numstrsel := numstrsel + 5;
            LB.Selected[numstrsel] := True;
            printtree3foraddnode;
            flag := True;
           end;
            //???????????? ????? ???? ? ???????
        end;
        9: begin
            STText1.Caption := '???? ?????? ???? ??????, ?? ???????? ???????? ??????';
            if information > pointer.info then
              numstrsel := numstrsel + 1
            else
              numstrsel := numstrsel + 2;
        end;
        10: begin
            if flag = True then begin
              STText1.Caption := '???????? ???????? ?????? ?? ?????????? ????';
              flag := False;
            end
            else begin
              numstrsel := numstrsel + 3;
              pointer := pointer.Right;
              inc(count_elemstack);
              Stack[count_elemstack-1].numberstr := numstrsel;
              Stack[count_elemstack-1].pointer_tree := pointer;
              Stack[count_elemstack-1].xmin := (Stack[count_elemstack-2].xmax + Stack[count_elemstack-2].xmin) div 2;
              Stack[count_elemstack-1].xmax := Stack[count_elemstack-2].xmax;
              Stack[count_elemstack-1].level := Stack[count_elemstack-2].level + 1;
              Stack[count_elemstack-1].y := Stack[count_elemstack-2].y + lvly;

              Lbpointer.left := (Stack[count_elemstack-1].xmax-Stack[count_elemstack-1].xmin) div 2+ Stack[count_elemstack-1].xmin;
              Lbpointer.Top := Stack[count_elemstack-1].y - 20;

              CodeAddNode;
              numstrsel := 3;
              flag := True;
            end;
        end;
        11: begin
            STText1.Caption := '???? ?????? ???? ??????, ?? ???????? ???????? ?????';
            if information < pointer.info then
              numstrsel := numstrsel + 1
            else
              numstrsel := numstrsel + 2;
        end;
        12: begin
            if flag = True then begin
              STText1.Caption := '???????? ???????? ????? ?? ?????????? ????';
              flag := False;
            end
            else if flag = False then begin
              numstrsel := numstrsel + 1;
              pointer := pointer.Left;
              inc(count_elemstack);
              Stack[count_elemstack-1].numberstr := numstrsel;
              Stack[count_elemstack-1].pointer_tree := pointer;
              Stack[count_elemstack-1].xmin := Stack[count_elemstack-2].xmin;
              Stack[count_elemstack-1].xmax := (Stack[count_elemstack-2].xmax + Stack[count_elemstack-2].xmin) div 2;
              Stack[count_elemstack-1].level := Stack[count_elemstack-2].level + 1;
              Stack[count_elemstack-1].y := Stack[count_elemstack-2].y + lvly;

              Lbpointer.left := (Stack[count_elemstack-1].xmax-Stack[count_elemstack-1].xmin) div 2+ Stack[count_elemstack-1].xmin;
              Lbpointer.Top := Stack[count_elemstack-1].y - 20;

              CodeAddNode;
              numstrsel := 3;
              flag := True;
            end;

            //??????? ? ???? ?????? ? ?????????
        end;
        13: begin
            if list.Count = 1 then begin
              LB.Selected[13] := False;
              STText1.Caption := '???? ???????? ? ??????';
            end
            else begin
              LB.Free;
              list.Delete(list.Count-1);
              dec(count_elemstack);

              LB := list[list.count - 1];
              LB.Selected[13] := True;
              if count_elemstack = 1 then begin
                  Lbpointer.left := (Stack[count_elemstack-1].xmax-Stack[count_elemstack-1].xmin) div 2+ Stack[count_elemstack-1].xmin;
                  Lbpointer.Top := Stack[count_elemstack-1].y;
              end
              else begin
                  Lbpointer.left := (Stack[count_elemstack-1].xmax-Stack[count_elemstack-1].xmin) div 2+ Stack[count_elemstack-1].xmin;
                  Lbpointer.Top := Stack[count_elemstack-1].y - 20;
              end;
            end;
            //???????? ???????? ListBox ? ?????????? ???????? ?????
        end;
    end;
  end;
end;

procedure TForm3.BBMainMenuForm3Click(Sender: TObject);
var i : integer;
begin
    if nform3 = 1 then begin
      for i := 0 to 10 do begin
        Stack[0].level := 0;
        Stack[0].xmax := 0;
        Stack[0].xmin := 0;
        Stack[0].y := 0;
        count_elemstack := 0;
        flag := True;
        pointer := tree3;
      end;
      i := list.Count - 1;
      while i >= 0 do begin
        LB := list[i];
        LB.Free;
        list.Delete(i);
        dec(i);
      end;
    end;
    Form3.Hide;
    MainForm.Show;
end;

procedure TForm3.BtAddClick(Sender: TObject);
var s, n : integer;
  i: Integer;
begin
    s := StrToInt(EdInputNode.Text);
    inc(n);
    Tree_building(s, n);
end;

procedure TForm3.CodeAddNode;
begin
    LB := TListBox.Create(Form3);
    LB.Parent := Form3;
    LB.Width:= 305;
    LB.Height:=325;
    LB.Left := 8 + n*10;
    LB.Top := 96 + n*10;
    inc(n);
    LB.Brush.Color:= clWindow;
    LB.Font.Size := 14;
    LB.Font.Name := 'Times New Roman';
    list.Add(LB);
    LB.Items.Add('procedure add (information: longint; var');
    LB.Items.Add(' x: ptree; n: longint);');
    LB.Items.Add('begin');
    LB.Items.Add('if x=nil then begin'); //3
    LB.Items.Add('    new(x);');            //4
    LB.Items.Add('    x^.info:= information;'); //5
    LB.Items.Add('    x^.left:=nil;');             //6
    LB.Items.Add('    x^.right:=nil;');         //7
    LB.Items.Add('end');                        //8
    LB.Items.Add('else if information>x^.info then');//9
    LB.Items.Add('    add(information, x^.right,n)');//10
    LB.Items.Add('else if information<x^.info then');//11
    LB.Items.Add('    add(information, x^.left,n);');//12
    LB.Items.Add('end;');                            //13
end;

procedure TForm3.Pr1Click(Sender: TObject);
begin
    Pr1.Default := True;

    zero;

    k := 5;
    list_tree[0] := 5;
    list_tree[1] := 3;
    list_tree[2] := 10;
    list_tree[3] := 2;
    list_tree[4] := 14;

    list := TList.Create;
    analysistree(k);
    printtree3foraddnode;
    information := 4;
    Form3Tree;
end;

procedure TForm3.Pr2Click(Sender: TObject);
begin
    Pr2.Default := True;

    zero;

    k := 7;
    list_tree[0] := 10;
    list_tree[1] := 18;
    list_tree[2] := 5;
    list_tree[3] := 16;
    list_tree[4] := 14;
    list_tree[5] := 8;
    list_tree[6] := 2;

    list := TList.Create;
    analysistree(k);
    printtree3foraddnode;
    information := 7;
    Form3Tree;
end;

procedure TForm3.Pr3Click(Sender: TObject);
begin
    Pr3.Default := True;

    zero;

    k := 6;
    list_tree[0] := 4;
    list_tree[1] := 1;
    list_tree[2] := 6;
    list_tree[3] := 2;
    list_tree[4] := 28;
    list_tree[5] := 7;

    list := TList.Create;
    analysistree(k);
    printtree3foraddnode;
    information := 30;
    Form3Tree;
end;

procedure TForm3.zero;// ????????? ????? ? ?????
var i : integer;
begin
    for i := 0 to 10 do begin
        Stack[0].level := 0;
        Stack[0].xmax := 0;
        Stack[0].xmin := 0;
        Stack[0].y := Form3Image1.Top;
        count_elemstack := 0;
        flag := True;
        pointer := tree3;
    end;

    i := list.Count - 1;
    while i >= 0 do begin
        LB := list[i];
        LB.Free;
        list.Delete(i);
        dec(i);
    end;
end;

procedure TForm3.analysistree (k : integer); //?????????? ??????
var i : integer;
begin
    tree3 := TSortTree.Create(list_tree[0]);
    for i := 1 to k-1 do
        tree3.AddNode(list_tree[i], tree3);
end;

procedure TForm3.Form3Tree;
begin
    STText1.Caption := '';
    n := 0;
    numstrsel := 3;
    pointer := tree3;
    Label1.Caption := '????????? ???? ' + IntToStr(information);
    CodeAddNode;
    Stack[0].pointer_tree := pointer;
    Stack[0].level := 1;
    Stack[0].xmin := Form3Image1.Left;
    Stack[0].xmax := Form3Image1.Left + Form3Image1.Width;
    Stack[0].y := Form3Image1.Top;
    count_elemstack := 1;
    flag := True;
    Lbpointer.left := (Stack[0].xmax-Stack[0].xmin) div 2+ Stack[0].xmin;
    Lbpointer.Top := Stack[0].y;
end;

procedure TForm3.printtree3;
begin
    tree3.Depth(tree3,countdepth);
    tree3.selectingtheradiusandfont (countdepth);
    lvly:= Form3Image1.Width div countdepth-30;
    Form3Image1.Canvas.Brush.Color:=clGradientActiveCaption;
    Form3Image1.Canvas.FillRect(rect(0,0,Form3.Form3Image1.Width,Form3Image1.height));
    tree3.WritelnTree(tree3,50,Form3Image1.Width,15,1, Canvas);
end;

procedure TForm3.printtree3foraddnode;
begin
    tree3.Depth(tree3,countdepth);
    lvly:= Form3Image1.Width div (countdepth+1)-30;
    Form3Image1.Canvas.Brush.Color:=clGradientActiveCaption;
    Form3Image1.Canvas.FillRect(rect(0,0,Form3.Form3Image1.Width,Form3Image1.height));
    tree3.WritelnTreeforForm3(tree3,0,Form3Image1.Width,20,1, Canvas);
end;

procedure TForm3.Tree_building (node : integer; count_node : integer);
var d, n : integer;
begin
    if count_node = 1 then begin
        tree3node := TSortTree.Create(node);
        n := node;
    end;
    tree3node.Copy_tree(tree3node, tree3copy);
    tree3copy.AddNode (node,tree3copy);
    d := 0;
    tree3copy.Depth(tree3copy, d);
    if d > 4 then begin
        MessageDlg('?????? ?????? ?? ????? ????????? 4. ??????? ?????? ????', mtInformation, [mbOk], 0);
    end
    else begin
        tree3node.AddNode (node,tree3node);
        Form3Image2.Canvas.Brush.Color:=clGradientActiveCaption;
        Form3Image2.Canvas.FillRect(rect(0,0,Form3.Form3Image2.Width,Form3Image2.height));
        tree3node.WritelnTreeforForm3node(tree3node,0,Form3Image2.Width,20,1, Canvas);
    end;
end;

end.
