unit menu_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Pacientes1: TMenuItem;
    Funcionarios1: TMenuItem;
    Exames1: TMenuItem;
    AvaliaoMdica1: TMenuItem;
    DadosPessoais1: TMenuItem;
    procedure Funcionarios1Click(Sender: TObject);
    procedure DadosPessoais1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses cadastro_pacientes, cadastro_funcionarios;

{$R *.dfm}

procedure TForm3.Funcionarios1Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TForm3.DadosPessoais1Click(Sender: TObject);
begin
  Form2.Show;
end;

end.
