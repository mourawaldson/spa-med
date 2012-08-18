object FrmPacientes: TFrmPacientes
  Left = 250
  Top = 182
  Width = 561
  Height = 428
  Caption = 'Cadastro de Pacientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel
    Left = 32
    Top = 360
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 521
    Height = 281
    Caption = 'SPA Med Santa L'#250'cia - Cadastro de Pacientes'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 96
      Top = 32
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
    object Label2: TLabel
      Left = 16
      Top = 32
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
    object Label3: TLabel
      Left = 16
      Top = 80
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
      Left = 192
      Top = 80
      Width = 24
      Height = 13
      Caption = 'CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 128
      Width = 55
      Height = 13
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 104
      Top = 176
      Width = 40
      Height = 13
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 176
      Width = 40
      Height = 13
      Caption = 'Estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 264
      Top = 176
      Width = 34
      Height = 13
      Caption = 'Bairro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 424
      Top = 176
      Width = 25
      Height = 13
      Caption = 'CEP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 16
      Top = 224
      Width = 57
      Height = 13
      Caption = 'Telefones'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 376
      Top = 80
      Width = 53
      Height = 13
      Caption = 'Profiss'#227'o'
    end
    object EditCodigo: TEdit
      Left = 16
      Top = 48
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object EditNomePaciente: TEdit
      Left = 96
      Top = 48
      Width = 401
      Height = 21
      TabOrder = 1
      OnExit = EditNomePacienteExit
      OnKeyUp = EditNomePacienteKeyUp
    end
    object EditRG: TEdit
      Left = 16
      Top = 96
      Width = 73
      Height = 21
      MaxLength = 10
      TabOrder = 2
      OnExit = EditRGExit
    end
    object MaskEditTelefone1: TMaskEdit
      Left = 16
      Top = 240
      Width = 105
      Height = 21
      EditMask = '(00) - 0000-0000;0;_'
      MaxLength = 16
      TabOrder = 10
      OnKeyUp = MaskEditTelefone1KeyUp
    end
    object MaskEditTelefone2: TMaskEdit
      Left = 136
      Top = 240
      Width = 105
      Height = 21
      EditMask = '(00) - 0000-0000;0;_'
      MaxLength = 16
      TabOrder = 11
    end
    object MaskEditCPF: TMaskEdit
      Left = 192
      Top = 96
      Width = 97
      Height = 21
      EditMask = '000.000.000-00;0;_'
      MaxLength = 14
      TabOrder = 3
      OnExit = MaskEditCPFExit
    end
    object EditEndereco: TEdit
      Left = 16
      Top = 144
      Width = 481
      Height = 21
      TabOrder = 5
    end
    object EditCidade: TEdit
      Left = 104
      Top = 192
      Width = 113
      Height = 21
      TabOrder = 7
      OnExit = EditCidadeExit
    end
    object EditBairro: TEdit
      Left = 264
      Top = 192
      Width = 121
      Height = 21
      TabOrder = 8
      OnExit = EditBairroExit
    end
    object EditProfissao: TEdit
      Left = 376
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 4
      OnExit = EditProfissaoExit
    end
    object MaskEditCEP: TMaskEdit
      Left = 424
      Top = 192
      Width = 71
      Height = 21
      EditMask = '00000-000;0;_'
      MaxLength = 9
      TabOrder = 9
    end
    object ComboBoxEstado: TComboBox
      Left = 16
      Top = 192
      Width = 41
      Height = 21
      ItemHeight = 13
      MaxLength = 2
      TabOrder = 6
    end
  end
  object BitBtnCadastrar: TBitBtn
    Left = 16
    Top = 312
    Width = 97
    Height = 33
    Caption = 'Cadastrar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtnCadastrarClick
    Kind = bkOK
  end
  object BitBtnPesquisar: TBitBtn
    Left = 128
    Top = 312
    Width = 97
    Height = 33
    Caption = 'Pesquisar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtnPesquisarClick
    Kind = bkIgnore
  end
  object BitBtnAlterar: TBitBtn
    Left = 240
    Top = 312
    Width = 89
    Height = 33
    Caption = 'Alterar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtnAlterarClick
    Kind = bkRetry
  end
  object BitBtnExcluir: TBitBtn
    Left = 344
    Top = 312
    Width = 89
    Height = 33
    Caption = 'Excluir'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtnExcluirClick
    Kind = bkCancel
  end
  object BitBtnSair: TBitBtn
    Left = 448
    Top = 312
    Width = 89
    Height = 33
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Kind = bkClose
  end
  object Button1: TButton
    Left = 192
    Top = 360
    Width = 33
    Height = 17
    Caption = '<<'
    Enabled = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 360
    Width = 33
    Height = 17
    Caption = '<'
    Enabled = False
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 296
    Top = 360
    Width = 33
    Height = 17
    Caption = '>'
    Enabled = False
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 344
    Top = 360
    Width = 33
    Height = 17
    Caption = '>>'
    Enabled = False
    TabOrder = 8
    OnClick = Button4Click
  end
  object Timer1: TTimer
    Enabled = False
    Left = 472
    Top = 360
  end
  object XPManifest1: TXPManifest
    Left = 512
    Top = 360
  end
end
