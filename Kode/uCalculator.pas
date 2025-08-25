unit uCalculator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    pgcMain: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn0: TButton;
    btnPlus: TButton;
    btnMinus: TButton;
    btnMaal: TButton;
    btnDeel: TButton;
    btnAndw: TButton;
    btnNewT: TButton;
    Label1: TLabel;
    btnMod: TButton;
    redVertoon: TRichEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnPlusClick(Sender: TObject);
    procedure btnMinusClick(Sender: TObject);
    procedure btnMaalClick(Sender: TObject);
    procedure btnDeelClick(Sender: TObject);
    procedure btnModClick(Sender: TObject);
    procedure btnAndwClick(Sender: TObject);
    procedure btnNewTClick(Sender: TObject);
    procedure ShowOnly(ATab: TTabSheet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sVergelyking: string;
  tfSomme: TextFile;

implementation

{$R *.dfm}

procedure TForm1.btn0Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '0';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '1';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '2';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '3';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '4';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '5';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '6';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '7';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '8';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '9';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.btnAndwClick(Sender: TObject);
var
  cTeken: Char;
  sGetal1: string;
  sGetal2: string;
  iGetal1: Integer;
  iGetal2: Integer;
  WaarIsOns: Boolean;
  MeerAsEenTeken: Boolean;
  HeidigeKarakter: Char;
  dAntwoord: Double;
  I: Integer;
  iGetalGeRun: Integer;
  DelingDeurNul: Boolean;

begin

  sGetal1 := '';
  sGetal2 := '';
  WaarIsOns := True;
  MeerAsEenTeken := False;
  iGetalGeRun := 0;
  for I := 1 to Length(sVergelyking) do
  begin
    HeidigeKarakter := sVergelyking[I];
    if HeidigeKarakter in ['+', '-', '*', '/', '%'] then
    begin
      iGetalGeRun := iGetalGeRun + 1;
      if iGetalGeRun = 1 then
      begin
        WaarIsOns := False;
        cTeken := HeidigeKarakter;
      end
      else
      begin
        Label1.Color := clRed;
        Label1.Caption := 'Kan net een som doen op n slag!';
        MeerAsEenTeken := True;
      end
    end
    else if MeerAsEenTeken <> True then
    begin
      if WaarIsOns = True then
      begin
        sGetal1 := sGetal1 + HeidigeKarakter;
      end;
      if WaarIsOns = False then
      begin
        sGetal2 := sGetal2 + HeidigeKarakter;
      end;
    end;
  end;

  if MeerAsEenTeken <> True then
  begin
    DelingDeurNul := False;
    iGetal1 := StrToInt(sGetal1);
    iGetal2 := StrToInt(sGetal2);

    if cTeken = '+' then
    begin
      dAntwoord := iGetal1 + iGetal2;
    end
    else if cTeken = '-' then
    begin
      dAntwoord := iGetal1 - iGetal2;
    end
    else if cTeken = '/' then
    begin
      if iGetal2 = 0 then
      begin
        Label1.Caption := 'Kan nie deur 0 deel nie';
        DelingDeurNul := True;
        Writeln(tfSomme, sVergelyking + '=' + 'Error: Deling deur 0');
        sVergelyking := '';
      end
      else
      begin
        dAntwoord := iGetal1 / iGetal2;
      end;

    end
    else if cTeken = '*' then
    begin
      dAntwoord := iGetal1 * iGetal2;
    end
    else if cTeken = '%' then
    begin
      if iGetal2 = 0 then
      begin
        Label1.Caption := 'Kan nie deur 0 deel nie';
        DelingDeurNul := True;
        Writeln(tfSomme, sVergelyking + '=' + 'Error: Deling deur 0');
        sVergelyking := '';
      end
      else
      begin
        dAntwoord := iGetal1 mod iGetal2;
      end;

    end;

    if not DelingDeurNul then
    begin
      Label1.Caption := FloatToStr(dAntwoord);
      Writeln(tfSomme, sVergelyking + '=' + FloatToStr(dAntwoord));
      sVergelyking := '';
    end;

  end
  else
  begin
    Writeln(tfSomme, sVergelyking + '=' + 'Error: Meer as een teken');
    sVergelyking := '';

  end;

end;

procedure TForm1.btnDeelClick(Sender: TObject);
begin
  sVergelyking := sVergelyking + '/';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.btnMaalClick(Sender: TObject);
begin
  sVergelyking := sVergelyking + '*';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.btnMinusClick(Sender: TObject);
begin
  sVergelyking := sVergelyking + '-';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.btnModClick(Sender: TObject);
begin
  sVergelyking := sVergelyking + '%';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.ShowOnly(ATab: TTabSheet);
var
  I: Integer;
begin
  for I := 0 to pgcMain.PageCount - 1 do
    pgcMain.Pages[I].TabVisible := (pgcMain.Pages[I] = ATab);
  pgcMain.ActivePage := ATab;
end;

procedure TForm1.btnNewTClick(Sender: TObject);
var
  sHuidigeSom: string;
begin
  redVertoon.Lines.Clear;
  ShowOnly(TabSheet1);
  CloseFile(tfSomme);
  AssignFile(tfSomme, 'tfSomme.txt');
  if FileExists('tfSomme.txt') then
  begin
    Reset(tfSomme); // INPUT
    try
      while not Eof(tfSomme) do
      begin
        ReadLn(tfSomme, sHuidigeSom);
        redVertoon.Lines.Add(sHuidigeSom);
      end;
    finally
      CloseFile(tfSomme);
    end;
  end;
  AssignFile(tfSomme, 'tfSomme.txt');
  if FileExists('tfSomme.txt') then
    Append(tfSomme)
  else
    Rewrite(tfSomme);
end;

procedure TForm1.btnPlusClick(Sender: TObject);
begin
  sVergelyking := sVergelyking + '+';
  Label1.Caption := sVergelyking;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowOnly(TabSheet2);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage('Email rttgimmies@gmail.com met jou probleem vir hulp');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.Caption := 'Calculator';
  ShowOnly(TabSheet2);
  sVergelyking := '';
  AssignFile(tfSomme, 'tfSomme.txt');
  if FileExists('tfSomme.txt') then
    Append(tfSomme) // open for output at end of file
  else
    Rewrite(tfSomme); // create new file for output

end;

end.
