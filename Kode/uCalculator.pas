unit uCalculator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.IOUtils,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    pgcMain: TPageControl;
    tsHistory: TTabSheet;
    tsCalc: TTabSheet;
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
    lblSom: TLabel;
    btnMod: TButton;
    redVertoon: TRichEdit;
    Button1: TButton;
    Button2: TButton;
    lblVriendelikeDiagloog: TLabel;
    btnClearHistory: TButton;
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
    procedure btnGaanNaHistory(Sender: TObject);
    procedure ShowOnly(ATab: TTabSheet);
    procedure btnGaanNaCalc(Sender: TObject);
    procedure btnHelp(Sender: TObject);
    procedure btnClearHistoryClick(Sender: TObject);
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

// Voeg die waarde 0 by die label se huidge Caption
procedure TForm1.btn0Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '0';
  lblSom.Caption := sVergelyking;
  lblSom.Font.Color := clBlack;
end;

// Voeg die waarde 1 by die label se huidge Caption
procedure TForm1.btn1Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '1';
  lblSom.Caption := sVergelyking;
  lblSom.Font.Color := clBlack;
end;

// Voeg die waarde 2 by die label se huidge Caption
procedure TForm1.btn2Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '2';
  lblSom.Caption := sVergelyking;
  lblSom.Font.Color := clBlack;
end;

// Voeg die waarde 3 by die label se huidge Caption
procedure TForm1.btn3Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '3';
  lblSom.Caption := sVergelyking;
  lblSom.Font.Color := clBlack;
end;

// Voeg die waarde 4 by die label se huidge Caption
procedure TForm1.btn4Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '4';
  lblSom.Caption := sVergelyking;
  lblSom.Font.Color := clBlack;
end;

// Voeg die waarde 5 by die label se huidge Caption
procedure TForm1.btn5Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '5';
  lblSom.Caption := sVergelyking;
  lblSom.Font.Color := clBlack;
end;

// Voeg die waarde 6 by die label se huidge Caption
procedure TForm1.btn6Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '6';
  lblSom.Caption := sVergelyking;
  lblSom.Font.Color := clBlack;
end;

// Voeg die waarde 7 by die label se huidge Caption
procedure TForm1.btn7Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '7';
  lblSom.Caption := sVergelyking;
  lblSom.Font.Color := clBlack;
end;

// Voeg die waarde 8 by die label se huidge Caption
procedure TForm1.btn8Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '8';
  lblSom.Caption := sVergelyking;
  lblSom.Font.Color := clBlack;
end;

// Voeg die waarde 9 by die label se huidge Caption
procedure TForm1.btn9Click(Sender: TObject);
begin
  sVergelyking := sVergelyking + '9';
  lblSom.Caption := sVergelyking;
  lblSom.Font.Color := clBlack;
end;

procedure TForm1.btnAndwClick(Sender: TObject);
// Maak variables
var
  cTeken: Char;
  sGetal1: string;
  sGetal2: string;
  iGetal1: Integer;
  iGetal2: Integer;
  bWaarIsOns: Boolean;
  bMeerAsEenTeken: Boolean;
  cHeidigeKarakter: Char;
  dAntwoord: Double;
  I: Integer;
  iGetalGeRun: Integer;
  bDelingDeurNul: Boolean;
begin
  sGetal1 := ''; // Begin by niks
  sGetal2 := ''; // Begin by niks
  bWaarIsOns := True; // Begin by Getal1
  bMeerAsEenTeken := False;
  // Begin deur ter aanvaar dat die user net een teken gaan gee
  iGetalGeRun := 0; // Ons het nog nie n teken gesien nie

  for I := 1 to Length(sVergelyking) do // Loop vir elke char in sVergelyking
  begin
    cHeidigeKarakter := sVergelyking[I]; // Heidige char in die loop
    if cHeidigeKarakter in ['+', '-', '*', '/', '%'] then
    // Kyk is ons heidige char n teken
    begin
      iGetalGeRun := iGetalGeRun + 1; // Plus een by elke keer wat ons
      if iGetalGeRun = 1 then // As dit ons eerste char is
      begin
        bWaarIsOns := False; // By getal twee nadat ons n teken gesien het.
        cTeken := cHeidigeKarakter; // Ons teken is ons heidige char
      end
      else // Ons weet daars meer as een teken so ons moet n error gooi
      begin
        lblSom.Font.Color := clRed; // Maak die label rooi
        lblSom.Caption := 'Kan net een som doen op n slag!'; // Wys foutboodskap
        bMeerAsEenTeken := True; // Hou vir later
      end
    end
    else if bMeerAsEenTeken <> True then
    // Maak seker daars nie meer as een teken nie
    begin
      if bWaarIsOns = True then // As ons by getal 1 is. Plus by getal1
      begin
        sGetal1 := sGetal1 + cHeidigeKarakter; // Bou getal1
      end;
      if bWaarIsOns = False then // As ons by getal 2 is. Plus by getal2
      begin
        sGetal2 := sGetal2 + cHeidigeKarakter; // Bou getal2
      end;
    end;
  end;

  if bMeerAsEenTeken <> True then
  // As ons nie meer as een teken het nie bou antwoord
  begin
    bDelingDeurNul := False;
    // Begin deur te aanvaar dat ons nie deur nul deel nie
    iGetal1 := StrToInt(sGetal1); // Kry die int getal 1
    iGetal2 := StrToInt(sGetal2); // Kry die int getal 2

    if cTeken = '+' then // As die teken n plus is
    begin
      dAntwoord := iGetal1 + iGetal2; // Plus som
    end
    else if cTeken = '-' then // As die teken n min is
    begin
      dAntwoord := iGetal1 - iGetal2;
    end
    else if cTeken = '/' then // As die teken deel is
    begin
      if iGetal2 = 0 then
      begin
        lblSom.Caption := 'Kan nie deur 0 deel nie';
        // Maak seker ons deel nie met 0 nie
        bDelingDeurNul := True; // Hou vir later

        Writeln(tfSomme, sGetal1 + #9 + cTeken + #9 + sGetal2 + #9 + '=' + #9 +
          'Error: Deling deur 0');
        // Skryf die error na die file
        sVergelyking := ''; // Maak dit niks vir die volgende som
      end
      else
      begin
        dAntwoord := iGetal1 / iGetal2; // Getal2 is nie nul nie so ons kan deel
      end;

    end
    else if cTeken = '*' then // As die teken maal is
    begin
      dAntwoord := iGetal1 * iGetal2; // Maal die twee getalle
    end
    else if cTeken = '%' then // As die teken mod is
    begin
      if iGetal2 = 0 then // Maak seker ons deel nie met 0 nie
      begin
        lblSom.Caption := 'Kan nie deur 0 deel nie';
        // Wys vir die user die error
        bDelingDeurNul := True; // Hou vir later
        Writeln(tfSomme, sGetal1 + #9 + cTeken + #9 + sGetal2 + #9 + '=' + #9 +
          'Error: Deling deur 0');
        // Skryf error na history
        sVergelyking := ''; // Maak dit niks vir die volgende som
      end
      else
      begin
        dAntwoord := iGetal1 mod iGetal2; // Mod die twee getalle
      end;

    end;

    if not bDelingDeurNul then // Voorkom errors
    begin
      lblSom.Caption := FloatToStr(dAntwoord); // Wys vir die user die antwoord
      Writeln(tfSomme, sGetal1 + #9 + cTeken + #9 + sGetal2 + #9 + '=' + #9 +
        FloatToStr(dAntwoord));
      // Skryf die antwoord in die file
      sVergelyking := ''; // Maak die vergelyking niks vir die volgende som
    end;

  end
  else
  begin
    Writeln(tfSomme, sVergelyking + #9 + '' + #9 + '' + #9 + '=' + #9 +
      'Error: Meer as een teken'); // SKryf die error in die file

    sVergelyking := ''; // Maak die vergelyking niks vir die volgende som
  end;

end;

procedure TForm1.btnClearHistoryClick(Sender: TObject);
const
  FName = 'tfSomme.txt'; // Die file se naam
var
  bDeleted: Boolean; // Was die file reg gedelete of nie
begin
  try
    CloseFile(tfSomme);
    // Maak die file toe (het hom oop gelos laat ons kan aanhou skryf)
    IOResult; // Voorkom I/O error van CloseFile
    if not TFile.Exists(FName) then // Toets bestaan die file
    begin
      // Niks om te delete nie
      Exit;
    end;
    bDeleted := DeleteFile(FName); // Delete die file
    if bDeleted then
    begin
      AssignFile(tfSomme, FName); // Maak n nuwe file laat ons weer kan skryf
      Rewrite(tfSomme);
    end
  finally
    redVertoon.Lines.Clear; // Maak die red skoon
  end;

end;

// Voeg deel by die som
procedure TForm1.btnDeelClick(Sender: TObject);
begin
  sVergelyking := sVergelyking + '/';
  lblSom.Caption := sVergelyking;
end;

// Voeg maal by die som
procedure TForm1.btnMaalClick(Sender: TObject);
begin
  sVergelyking := sVergelyking + '*';
  lblSom.Caption := sVergelyking;
end;

// Voeg minus by die som
procedure TForm1.btnMinusClick(Sender: TObject);
begin
  sVergelyking := sVergelyking + '-';
  lblSom.Caption := sVergelyking;
end;

// Voeg mod by die som
procedure TForm1.btnModClick(Sender: TObject);
begin
  sVergelyking := sVergelyking + '%';
  lblSom.Caption := sVergelyking;
end;

// LEENKODE - Begin
procedure TForm1.ShowOnly(ATab: TTabSheet);
var
  I: Integer;
begin
  for I := 0 to pgcMain.PageCount - 1 do
    pgcMain.Pages[I].TabVisible := (pgcMain.Pages[I] = ATab);
  pgcMain.ActivePage := ATab;
end;
// LEENKODE - Eindig

procedure TForm1.btnGaanNaHistory(Sender: TObject);
var
  sLine, sOut: string; // Tydelike stringe vir lees en formattering
begin
  ShowOnly(tsHistory); // Wys net tsHistory
  redVertoon.Lines.Clear; // Maak die RichEdit skoon

  redVertoon.Paragraph.TabCount := 5; // Stel 5 tab-stop kolomme
  redVertoon.Paragraph.Tab[0] := 60; // Kolom 1 grote
  redVertoon.Paragraph.Tab[1] := 120; // Kolom 2 grote
  redVertoon.Paragraph.Tab[2] := 180; // Kolom 3 grote
  redVertoon.Paragraph.Tab[3] := 240; // Kolom 4 grote
  redVertoon.Paragraph.Tab[4] := 300; // Kolom 5 grote

{$I-} CloseFile(tfSomme);
  IOResult; {$I+}       // Probeer die write-handle sluit; supress I/O-fout
  if not FileExists('tfSomme.txt') then
    // As die ler nie bestaan nie is daar niks om te wys nie
    Exit;

  AssignFile(tfSomme, 'tfSomme.txt'); // Koppel die TextFile-var aan die file
  Reset(tfSomme); // Maak oop vir lees vanaf begin van file
  try
    while not Eof(tfSomme) do // Loop deur elke lyn
    begin
      ReadLn(tfSomme, sLine); // Lees volgende lyn in sLine

      if Pos(#9, sLine) > 0 then // As lyn reeds TAB-geskei (bevat #9)
      begin

        redVertoon.Lines.Add(sLine); // Voeg lyn by red onveranderd
      end
      // Anders is dit net nonsens wat nie bygevoeg moet word nie
    end;
  finally
    CloseFile(tfSomme); // Sluit die file na lees
    IOResult; // Skoon I/O status
  end;

  AssignFile(tfSomme, 'tfSomme.txt'); // Link weer vir skryf
  if FileExists('tfSomme.txt') then
    Append(tfSomme)
  else
    Rewrite(tfSomme); // Skep nuwe file (behoort nooit te gebeur nie
end;

// Sit n plus by die som
procedure TForm1.btnPlusClick(Sender: TObject);
begin
  sVergelyking := sVergelyking + '+';
  lblSom.Caption := sVergelyking;
end;

// Vat die user na die calc ts
procedure TForm1.btnGaanNaCalc(Sender: TObject);
begin
  ShowOnly(tsCalc);
end;

// Vertoon vriendelike hulp dialoog
procedure TForm1.btnHelp(Sender: TObject);
begin
  ShowMessage('Email rttgimmies@gmail.com met jou probleem vir hulp');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  redVertoon.Paragraph.TabCount := 5; // Maak 5 kolomme
  Form1.Caption := 'Calculator'; // Gee vir die program n naam
  ShowOnly(tsCalc); // Wys die Calculator ts vir die user
  sVergelyking := ''; // Begin sVergelyking as niks
  AssignFile(tfSomme, 'tfSomme.txt');
  // Gee vir tfSomme n reference na die file toe
  if FileExists('tfSomme.txt') then // Toets of bestaan die file
    Append(tfSomme) // Skry file reg
  else
    Rewrite(tfSomme); // Maak n nuwe file

end;

end.
