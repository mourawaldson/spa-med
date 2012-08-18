object Form3: TForm3
  Left = 133
  Top = 94
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
          Caption = '&Dados Pessoais'
          OnClick = DadosPessoais1Click
        end
        object Exames1: TMenuItem
          Caption = '&Exames'
        end
        object AvaliaoMdica1: TMenuItem
          Caption = '&Avalia'#231#227'o M'#233'dica'
        end
      end
      object Funcionarios1: TMenuItem
        Caption = '&Funcionarios'
        OnClick = Funcionarios1Click
      end
    end
  end
end
