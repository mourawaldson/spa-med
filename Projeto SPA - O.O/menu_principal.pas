unit menu_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls;



type
  TFrmMenuPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Pacientes1: TMenuItem;
    Funcionarios1: TMenuItem;
    Exames1: TMenuItem;
    AvaliaoMdica1: TMenuItem;
    DadosPessoais1: TMenuItem;
    N1: TMenuItem;
    procedure Funcionarios1Click(Sender: TObject);
    procedure DadosPessoais1Click(Sender: TObject);
    procedure AvaliaoMdica1Click(Sender: TObject);
    procedure Exames1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        procedure ShowSize;
    // You must handle the WM_GETMINMAXINFO message
    procedure RestrictSize(var msg: TMessage); message WM_GETMINMAXINFO;
  end;

var
  FrmMenuPrincipal: TFrmMenuPrincipal;

implementation

uses cadastro_pacientes, cadastro_funcionarios, Avaliacao_Medica, Exames,
  Login_Exames, Login_Avaliacao;

{$R *.dfm}

procedure TFrmMenuPrincipal.ShowSize;
begin

end;

procedure TFrmMenuPrincipal.RestrictSize(var Msg: TMessage);
var
   p: PMinMaxInfo;
begin

// The lParam contains a pointer on a structure of type TMinMaxInfo
   p := PMinMaxInfo(Msg.lParam);

// This represents the minimum size of the Window
   p.ptMinTrackSize.x := 550;
   p.ptMinTrackSize.y := 400;
// This represents the maximum size of the Window
   p.ptMaxTrackSize.x := 550;
   p.ptMaxTrackSize.y := 400;
   
end;

procedure TFrmMenuPrincipal.Funcionarios1Click(Sender: TObject);
begin
  FrmFuncionarios.Show;
end;

procedure TFrmMenuPrincipal.DadosPessoais1Click(Sender: TObject);
begin
  FrmPacientes.Show;
end;

procedure TFrmMenuPrincipal.AvaliaoMdica1Click(Sender: TObject);
begin
  FrmLoginAvaliacao.Show;
end;

procedure TFrmMenuPrincipal.Exames1Click(Sender: TObject);
begin
  FrmLoginExames.Show;
end;

procedure TFrmMenuPrincipal.FormResize(Sender: TObject);
begin
  ShowSize;
end;

procedure TFrmMenuPrincipal.FormShow(Sender: TObject);
begin
  ShowSize;
end;

end.
