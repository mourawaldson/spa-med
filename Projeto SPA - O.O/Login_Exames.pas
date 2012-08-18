unit Login_Exames;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cadastro_funcionarios,UPacientes, Uclasses, menu_principal, StdCtrls, Buttons;

type
  TFrmLoginExames = class(TForm)
    Login: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure LoginExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLoginExames: TFrmLoginExames;
  Ind: Integer;

implementation

uses Exames;

{$R *.dfm}


Function Consultar(Rg: Integer): Integer;
Var
 RG_Aux: integer;
 M: Integer;

  Begin
    For M:= 0 To Length(Funcionario)-1 Do

      Begin

        RG_Aux := Funcionario[M].GetRg;

        If (Rg = RG_Aux) Then
          Begin
            Result := M;
            Exit;
          End;

      End;

   Result := -1;

  End;


procedure TFrmLoginExames.BitBtn1Click(Sender: TObject);
begin

  Ind := Consultar(StrToInt(Login.Text));

  If (Ind = -1) Then
    Begin
      ShowMessage('RG não cadastrado!');
      Login.Clear;
      Login.SetFocus;
      Exit;
    End

  Else

    Begin
      FrmExames.Show;
      FrmExames.EditUsuario.Text := Funcionario[Ind].GetNome;
      FrmExames.EditFuncaoUsuario.Text := Funcionario[Ind].GetFuncao;
      Login.Clear;
      FrmLoginExames.Close;
    End;

end;


procedure TFrmLoginExames.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmLoginExames.LoginExit(Sender: TObject);
Var
 I: Boolean;

Begin

 I := Apenas_Numeros(Login.Text);

 If (I = True) then
   Begin
     ShowMessage('Digite o Nº do seu Código!');
     Login.SetFocus;
     Login.Clear;
     Exit;
   End;

End;


end.
