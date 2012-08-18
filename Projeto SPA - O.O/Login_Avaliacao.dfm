object FrmLoginAvaliacao: TFrmLoginAvaliacao
  Left = 444
  Top = 326
  Width = 186
  Height = 159
  BorderIcons = []
  Caption = 'Login Avalia'#231#227'o'
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
    Width = 136
    Height = 13
    Caption = 'Digite o N'#186' do seu CRM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EditNrCrm: TEdit
    Left = 24
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = EditNrCrmKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 80
    Width = 67
    Height = 25
    Caption = 'Entrar'
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 80
    Width = 65
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = BitBtn2Click
    Kind = bkAbort
  end
end
