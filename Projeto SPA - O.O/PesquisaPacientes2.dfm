object FrmPesquisaPacientes2: TFrmPesquisaPacientes2
  Left = 436
  Top = 328
  Width = 201
  Height = 159
  BorderIcons = []
  Caption = 'Pesquisa Paciente'
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
    Width = 158
    Height = 13
    Caption = 'Digite o c'#243'digo do paciente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 80
    Width = 81
    Height = 25
    Caption = 'Encontrar'
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object EditCodPaciente: TEdit
    Left = 48
    Top = 40
    Width = 97
    Height = 21
    TabOrder = 0
    OnKeyPress = EditCodPacienteKeyPress
  end
  object BitBtn2: TBitBtn
    Left = 112
    Top = 80
    Width = 65
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = BitBtn2Click
    Kind = bkAbort
  end
end
