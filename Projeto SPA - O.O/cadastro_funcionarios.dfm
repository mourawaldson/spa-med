object FrmFuncionarios: TFrmFuncionarios
  Left = 232
  Top = 166
  Width = 605
  Height = 468
  Caption = 'Cadastro de Funcion'#225'rios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label15: TLabel
    Left = 56
    Top = 400
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 569
    Height = 321
    Caption = 'SPA Med Santa L'#250'cia - Cadstro de Funcion'#225'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 88
      Width = 121
      Height = 13
      Caption = 'Nome do Funcion'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 32
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 144
      Width = 19
      Height = 13
      Caption = 'RG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 176
      Top = 144
      Width = 24
      Height = 13
      Caption = 'CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 24
      Top = 200
      Width = 55
      Height = 13
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 96
      Top = 256
      Width = 40
      Height = 13
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 256
      Width = 40
      Height = 13
      Caption = 'Estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 272
      Top = 256
      Width = 34
      Height = 13
      Caption = 'Bairro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 448
      Top = 256
      Width = 25
      Height = 13
      Caption = 'CEP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 312
      Top = 144
      Width = 57
      Height = 13
      Caption = 'Telefones'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 184
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Fun'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 416
      Top = 32
      Width = 64
      Height = 13
      Caption = 'N'#186' do CRM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 504
      Top = 16
      Width = 5
      Height = 13
    end
    object Label14: TLabel
      Left = 488
      Top = 8
      Width = 5
      Height = 13
    end
    object EditNome: TEdit
      Left = 24
      Top = 104
      Width = 513
      Height = 21
      TabOrder = 3
      OnExit = EditNomeExit
    end
    object EditCodigo: TEdit
      Left = 24
      Top = 48
      Width = 57
      Height = 21
      TabOrder = 0
      OnExit = EditCodigoExit
    end
    object EditRg: TEdit
      Left = 24
      Top = 160
      Width = 121
      Height = 21
      TabOrder = 4
      OnExit = EditRgExit
    end
    object EditEndereco: TEdit
      Left = 24
      Top = 216
      Width = 513
      Height = 21
      TabOrder = 8
    end
    object EditCidade: TEdit
      Left = 96
      Top = 272
      Width = 145
      Height = 21
      TabOrder = 10
      OnExit = EditCidadeExit
    end
    object EditEstado: TEdit
      Left = 24
      Top = 272
      Width = 25
      Height = 21
      MaxLength = 2
      TabOrder = 9
      OnExit = EditEstadoExit
    end
    object EditBairro: TEdit
      Left = 264
      Top = 272
      Width = 145
      Height = 21
      TabOrder = 11
      OnExit = EditBairroExit
    end
    object ComboBox1: TComboBox
      Left = 184
      Top = 48
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnExit = ComboBox1Exit
    end
    object EditCrm: TEdit
      Left = 416
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 2
      OnExit = EditCrmExit
    end
    object MaskEditCpf: TMaskEdit
      Left = 168
      Top = 160
      Width = 103
      Height = 21
      EditMask = '000.000.000-00;0;_'
      MaxLength = 14
      TabOrder = 5
      OnExit = MaskEditCpfExit
    end
    object MaskEditTel1: TMaskEdit
      Left = 312
      Top = 160
      Width = 101
      Height = 21
      EditMask = '(00) - 0000-0000;0;_'
      MaxLength = 16
      TabOrder = 6
    end
    object MaskEditTel2: TMaskEdit
      Left = 432
      Top = 160
      Width = 101
      Height = 21
      EditMask = '(00) - 0000-0000;0;_'
      MaxLength = 16
      TabOrder = 7
    end
    object MaskEditCEP: TMaskEdit
      Left = 448
      Top = 272
      Width = 71
      Height = 21
      EditMask = '00000-000;0;_'
      MaxLength = 9
      TabOrder = 12
      OnKeyUp = MaskEditCEPKeyUp
    end
  end
  object BitBtnCadastrar: TBitBtn
    Left = 16
    Top = 352
    Width = 89
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
    Left = 136
    Top = 352
    Width = 89
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
    Left = 256
    Top = 352
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
    Left = 376
    Top = 352
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
  object BitBtn5: TBitBtn
    Left = 496
    Top = 352
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
    OnClick = BitBtn5Click
    Kind = bkClose
  end
  object Button1: TButton
    Left = 192
    Top = 400
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
    Left = 256
    Top = 400
    Width = 33
    Height = 17
    Caption = '<'
    Enabled = False
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 312
    Top = 400
    Width = 33
    Height = 17
    Caption = '>'
    Enabled = False
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 376
    Top = 400
    Width = 33
    Height = 17
    Caption = '>>'
    Enabled = False
    TabOrder = 9
    OnClick = Button4Click
  end
  object XPManifest1: TXPManifest
    Left = 536
    Top = 400
  end
  object Timer1: TTimer
    Left = 496
    Top = 400
  end
end
