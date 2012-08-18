object FrmMenuPrincipal: TFrmMenuPrincipal
  Left = 256
  Top = 187
  Width = 554
  Height = 421
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Menu Principal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 256
    Top = 152
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      object Pacientes1: TMenuItem
        Caption = '&Pacientes'
        object DadosPessoais1: TMenuItem
          Caption = '&Cadastro Pacientes'
          OnClick = DadosPessoais1Click
        end
        object AvaliaoMdica1: TMenuItem
          Caption = '&Avalia'#231#227'o M'#233'dica'
          OnClick = AvaliaoMdica1Click
        end
      end
      object Funcionarios1: TMenuItem
        Caption = '&Funcionarios'
        OnClick = Funcionarios1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exames1: TMenuItem
        Caption = '&Exames'
        OnClick = Exames1Click
      end
    end
  end
end
