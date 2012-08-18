object FrmAvaliacaoMedica: TFrmAvaliacaoMedica
  Left = 279
  Top = 241
  Width = 509
  Height = 330
  Caption = 'Avalia'#231#227'o M'#233'dica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 40
    Height = 13
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 104
    Top = 16
    Width = 105
    Height = 13
    Caption = 'Nome do Paciente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 408
    Top = 16
    Width = 19
    Height = 13
    Caption = 'RG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 72
    Width = 28
    Height = 13
    Caption = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 184
    Top = 152
    Width = 140
    Height = 13
    Caption = 'Diagn'#243'stico do Paciente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 104
    Top = 72
    Width = 161
    Height = 13
    Caption = 'Diagnostica'#231#227'o do Paciente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EditCodigo: TEdit
    Left = 16
    Top = 32
    Width = 57
    Height = 21
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object EditNomePaciente: TEdit
    Left = 104
    Top = 32
    Width = 281
    Height = 21
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object EditRG: TEdit
    Left = 408
    Top = 32
    Width = 73
    Height = 21
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 7
  end
  object MaskEditData: TMaskEdit
    Left = 16
    Top = 88
    Width = 73
    Height = 21
    EditMask = '00/00/0000;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    Text = '  /  /    '
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 136
    Width = 65
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object ListBox1: TListBox
    Left = 16
    Top = 176
    Width = 473
    Height = 97
    ItemHeight = 13
    TabOrder = 4
  end
  object EditTexto: TEdit
    Left = 104
    Top = 88
    Width = 377
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 136
    Width = 65
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
end
