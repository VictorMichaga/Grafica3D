object Form1: TForm1
  Left = 192
  Top = 124
  Width = 680
  Height = 659
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 496
    Top = 280
    Width = 47
    Height = 17
    Caption = 'Elevacion'
  end
  object ejex: TLabel
    Left = 32
    Top = 544
    Width = 10
    Height = 24
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ejey: TLabel
    Left = 104
    Top = 544
    Width = 10
    Height = 24
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 472
    Top = 384
    Width = 127
    Height = 13
    Caption = 'ALTURA DE EXTRUCION'
  end
  object Button1: TButton
    Left = 464
    Top = 24
    Width = 75
    Height = 25
    Caption = 'x--'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 552
    Top = 24
    Width = 75
    Height = 25
    Caption = 'x++'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 464
    Top = 48
    Width = 75
    Height = 25
    Caption = 'y--'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 552
    Top = 48
    Width = 75
    Height = 25
    Caption = 'y++'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 464
    Top = 72
    Width = 75
    Height = 25
    Caption = 'z--'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 552
    Top = 72
    Width = 75
    Height = 25
    Caption = 'z++'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 464
    Top = 112
    Width = 75
    Height = 25
    Caption = 'decrecer'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 552
    Top = 112
    Width = 75
    Height = 25
    Caption = 'crecer'
    TabOrder = 7
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 464
    Top = 152
    Width = 75
    Height = 25
    Caption = 'rotx-'
    TabOrder = 8
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 552
    Top = 152
    Width = 75
    Height = 25
    Caption = 'rotx+'
    TabOrder = 9
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 464
    Top = 176
    Width = 75
    Height = 25
    Caption = 'roty-'
    TabOrder = 10
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 552
    Top = 176
    Width = 75
    Height = 25
    Caption = 'roty+'
    TabOrder = 11
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 464
    Top = 200
    Width = 75
    Height = 25
    Caption = 'rotz-'
    TabOrder = 12
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 552
    Top = 200
    Width = 75
    Height = 25
    Caption = 'rotz+'
    TabOrder = 13
    OnClick = Button14Click
  end
  object Button15: TButton
    Left = 464
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Limpiar'
    TabOrder = 14
    OnClick = Button15Click
  end
  object Edit1: TEdit
    Left = 552
    Top = 280
    Width = 41
    Height = 21
    TabOrder = 15
    Text = '0'
  end
  object EJE: TRadioGroup
    Left = 488
    Top = 304
    Width = 105
    Height = 65
    Caption = 'EJE'
    ItemIndex = 2
    Items.Strings = (
      'X'
      'Y'
      'Z')
    TabOrder = 16
  end
  object Button16: TButton
    Left = 552
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Circunferencia'
    TabOrder = 17
    OnClick = Button16Click
  end
  object Button17: TButton
    Left = 464
    Top = 472
    Width = 75
    Height = 25
    Caption = 'circulos'
    TabOrder = 18
    OnClick = Button17Click
  end
  object Button18: TButton
    Left = 464
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Cargar'
    TabOrder = 19
    OnClick = Button18Click
  end
  object Button19: TButton
    Left = 544
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Grabar'
    TabOrder = 20
    OnClick = Button19Click
  end
  object Button20: TButton
    Left = 464
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Extruir'
    TabOrder = 21
    OnClick = Button20Click
  end
  object Button21: TButton
    Left = 544
    Top = 472
    Width = 75
    Height = 25
    Caption = 'Revolucion'
    TabOrder = 22
    OnClick = Button21Click
  end
  object Edit2: TEdit
    Left = 544
    Top = 400
    Width = 57
    Height = 21
    TabOrder = 23
    Text = '0'
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Grafica|*.txt'
    Left = 16
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Grafica|*.txt'
    Left = 48
    Top = 8
  end
end
