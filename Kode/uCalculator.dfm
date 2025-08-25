object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 472
  ClientWidth = 759
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pgcMain: TPageControl
    Left = 0
    Top = 0
    Width = 759
    Height = 472
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 757
    ExplicitHeight = 464
    object TabSheet1: TTabSheet
      Caption = 'History'
      object Label2: TLabel
        Left = 284
        Top = 10
        Width = 157
        Height = 32
        Caption = 'Vorige Somme'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object redVertoon: TRichEdit
        Left = 40
        Top = 48
        Width = 649
        Height = 345
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Button1: TButton
        Left = 300
        Top = 414
        Width = 129
        Height = 25
        Caption = 'Gaan na Calculator'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Calc'
      ImageIndex = 1
      object Label1: TLabel
        Left = 216
        Top = 96
        Width = 7
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 208
        Top = 3
        Width = 262
        Height = 64
        Caption = 'Hoop gaan goed vriend! Tik jou som hieronder in'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object btn1: TButton
        Left = 216
        Top = 153
        Width = 75
        Height = 25
        Caption = '1'
        TabOrder = 0
        OnClick = btn1Click
      end
      object btn2: TButton
        Left = 297
        Top = 153
        Width = 75
        Height = 25
        Caption = '2'
        TabOrder = 1
        OnClick = btn2Click
      end
      object btn3: TButton
        Left = 378
        Top = 153
        Width = 75
        Height = 25
        Caption = '3'
        TabOrder = 2
        OnClick = btn3Click
      end
      object btn4: TButton
        Left = 216
        Top = 184
        Width = 75
        Height = 25
        Caption = '4'
        TabOrder = 3
        OnClick = btn4Click
      end
      object btn5: TButton
        Left = 297
        Top = 184
        Width = 75
        Height = 25
        Caption = '5'
        TabOrder = 4
        OnClick = btn5Click
      end
      object btn6: TButton
        Left = 378
        Top = 184
        Width = 75
        Height = 25
        Caption = '6'
        TabOrder = 5
        OnClick = btn6Click
      end
      object btn7: TButton
        Left = 216
        Top = 215
        Width = 75
        Height = 25
        Caption = '7'
        TabOrder = 6
        OnClick = btn7Click
      end
      object btn8: TButton
        Left = 297
        Top = 215
        Width = 75
        Height = 25
        Caption = '8'
        TabOrder = 7
        OnClick = btn8Click
      end
      object btn9: TButton
        Left = 378
        Top = 215
        Width = 75
        Height = 25
        Caption = '9'
        TabOrder = 8
        OnClick = btn9Click
      end
      object btn0: TButton
        Left = 216
        Top = 246
        Width = 75
        Height = 25
        Caption = '0'
        TabOrder = 9
        OnClick = btn0Click
      end
      object btnPlus: TButton
        Left = 297
        Top = 246
        Width = 75
        Height = 25
        Caption = '+'
        TabOrder = 10
        OnClick = btnPlusClick
      end
      object btnMinus: TButton
        Left = 378
        Top = 246
        Width = 75
        Height = 25
        Caption = '-'
        TabOrder = 11
        OnClick = btnMinusClick
      end
      object btnMaal: TButton
        Left = 216
        Top = 277
        Width = 75
        Height = 25
        Caption = '*'
        TabOrder = 12
        OnClick = btnMaalClick
      end
      object btnDeel: TButton
        Left = 297
        Top = 277
        Width = 75
        Height = 25
        Caption = '/'
        TabOrder = 13
        OnClick = btnDeelClick
      end
      object btnAndw: TButton
        Left = 216
        Top = 308
        Width = 237
        Height = 25
        Caption = '='
        TabOrder = 14
        OnClick = btnAndwClick
      end
      object btnNewT: TButton
        Left = 250
        Top = 367
        Width = 168
        Height = 25
        Caption = 'Gaan na History'
        TabOrder = 15
        OnClick = btnNewTClick
      end
      object btnMod: TButton
        Left = 378
        Top = 277
        Width = 75
        Height = 25
        Caption = '%'
        TabOrder = 16
        OnClick = btnModClick
      end
      object Button2: TButton
        Left = 250
        Top = 398
        Width = 168
        Height = 25
        Caption = 'Help'
        TabOrder = 17
        OnClick = Button2Click
      end
    end
  end
end
