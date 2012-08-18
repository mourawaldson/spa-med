object FrmExames: TFrmExames
  Left = 329
  Top = 175
  Width = 419
  Height = 440
  Caption = 'Exames'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 377
    Height = 385
    Caption = 'Cadastro de Exames'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 96
      Top = 88
      Width = 92
      Height = 13
      Caption = 'Nome do Exame'
    end
    object Label2: TLabel
      Left = 32
      Top = 32
      Width = 121
      Height = 13
      Caption = 'Nome do Funcion'#225'rio'
    end
    object Label3: TLabel
      Left = 208
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Fun'#231#227'o'
    end
    object Label4: TLabel
      Left = 32
      Top = 88
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
    end
    object EditExame: TEdit
      Left = 96
      Top = 112
      Width = 249
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 72
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 216
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button3Click
    end
    object ListBox1: TListBox
      Left = 32
      Top = 192
      Width = 313
      Height = 153
      ItemHeight = 13
      TabOrder = 5
    end
    object EditUsuario: TEdit
      Left = 32
      Top = 56
      Width = 129
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object EditFuncaoUsuario: TEdit
      Left = 208
      Top = 56
      Width = 137
      Height = 21
      Enabled = False
      TabOrder = 7
    end
    object Button2: TButton
      Left = 152
      Top = 352
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
      OnClick = Button2Click
    end
    object EditCodExame: TEdit
      Left = 32
      Top = 112
      Width = 49
      Height = 21
      TabOrder = 0
      OnExit = EditCodExameExit
    end
  end
end
