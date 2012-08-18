object Form5: TForm5
  Left = 378
  Top = 224
  Width = 205
  Height = 130
  Caption = 'Pesquisa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 71
    Height = 13
    Caption = 'Digite o c'#243'digo'
  end
  object Edit1: TEdit
    Left = 104
    Top = 16
    Width = 49
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 16
    Top = 56
    Width = 65
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 56
    Width = 89
    Height = 25
    Caption = 'Limpar Pesquisa'
    TabOrder = 2
    OnClick = Button2Click
  end
end
