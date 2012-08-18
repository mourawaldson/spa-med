unit Exames;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Uclasses_Exames, cadastro_funcionarios;

type
  TFrmExames = class(TForm)
    GroupBox1: TGroupBox;
    EditExame: TEdit;
    Button1: TButton;
    Button3: TButton;
    ListBox1: TListBox;
    Label1: TLabel;
    EditUsuario: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    EditFuncaoUsuario: TEdit;
    Button2: TButton;
    EditCodExame: TEdit;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EditCodExameExit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TVetor_Exames = Array of TExames;

var
  FrmExames: TFrmExames;
  Exame: TVetor_Exames;
  Ind: Integer;
  cont: Integer;


implementation


{$R *.dfm}


Procedure Armazenar(Var I: Integer; C: Integer; E: String);
begin
  SetLength(Exame,I+1);
  Exame[I]:=TExames.Create(C,E);
  I:=I+1;
end;

Procedure Excluir(Var Exames: TVetor_Exames; I: Integer);
begin
 //Exames[I].Destroy;
 Exame[I].Free;
end;


Function Pesquisar(Codigo: Integer):Integer;
Var J: Integer;
    Cod_aux: Integer;
Begin
   For J:= 0 to Length(Exame)-1 Do
      Begin
         Cod_aux:=Exame[J].getCodigo;
         IF (Codigo = Cod_aux)THEN
            Begin
               Result:=J;
               Exit;
            End;
      End;
   Result:=-1;
End;

//função para verificar se o usuario pode ser cadastrado
Function Verificar_Exame(Codigo: Integer; nome_exame: string):Boolean;
Var J: Integer;
    Cod_aux: Integer;
    nome_aux: string;
Begin
   For J:= 0 to Length(Exame)-1 Do
      Begin
         nome_aux:= Exame[J].getExame;
         Cod_aux:=Exame[J].getCodigo;
         IF (Codigo = Cod_aux) Or (nome_exame = nome_aux)THEN
            Begin
               Result:=True;
               Exit;
            End;
      End;
   Result:=False;//Caso Não Seja Encontrado Ele Retorna-ra False Liberando o Usuario Para Cadastrar
End;

//Procedimento para testar se só possuem numeros no edit
Function Apenas_Numeros(Campo: String):Boolean;
var
 I: integer;
  begin
    For I := 1 To Length(Campo) Do
     Begin
     Campo:=Trim(Campo);
     Campo := UpperCase(campo);

      If (Copy(campo, I, 1) < '0') Or (Copy(campo, I, 1) > '9') Then
        Begin
          Result:=True;
          Exit;
        end;
     End;
     Result:=False;
  end;


procedure TFrmExames.Button1Click(Sender: TObject);
Var X: Integer;
    Pos: Boolean;
begin

  EditExame.Text := Trim(EditExame.Text);

  If (EditExame.Text = '') Then
    begin
      ShowMessage ('Nome do Exame Não Preenchido!');
      EditExame.SetFocus;
      Exit;
    end;

  EditCodExame.Text := Trim(EditCodExame.Text);

  If (EditCodExame.Text = '') Then
    begin
      ShowMessage ('Código do Exame Não Preenchido!');
      EditCodExame.SetFocus;
      Exit;
    end;

 begin
  Pos:= Verificar_Exame(StrToInt(EditCodExame.Text), EditExame.Text) ;
   IF (Pos = True) Then
      Begin
         ShowMessage('Código ou Exame Já Cadastrado!');
         EditCodExame.SetFocus;
         Exit;
      End
       else
     begin
      Armazenar(Ind, StrToInt(EditCodExame.Text), EditExame.Text);
      ListBox1.Clear;
     For X:= 0 to Length (Exame)-1 Do
      begin
        ListBox1.Items.Add(IntToStr(Exame[X].getCodigo) + ' ' + '-' + ' ' + Exame[X].getExame);
        EditCodExame.Clear;
        EditExame.Clear;
        EditCodExame.SetFocus;
      end;
    end;
   end;
end;


procedure TFrmExames.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TFrmExames.EditCodExameExit(Sender: TObject);

Var
 I: boolean;
begin
I:=Apenas_Numeros(EditCodExame.Text);
 if (I = True) then
  Begin
   ShowMessage ('Digite O Código do Exame!');
   EditCodExame.SetFocus;
   EditCodExame.Clear;
   Exit;
  End;
End;



procedure TFrmExames.Button3Click(Sender: TObject);
begin
end;
{Var X: Integer;
    pos: Integer;
begin
   Pos:= Pesquisar(StrToInt(EditCodExame.Text));
  If(Pos = -1) Then
   begin
    showmessage('O código solicitado não existe');
       exit;
    end
  else
    begin
   Excluir(exame,Pos);
   //Cont_Funcionario:=Cont_Funcionario-1;
   For X:=0 to ComponentCount-1 Do
        Begin
           IF (Components[x].ClassName = 'TEdit') THEN
              Begin
                 TEdit(Components[x]).Clear;
              End;
        End;
   ListBox1.Clear;
   For X:= 0 to length(exame)-1 DO
      Begin
         ListBox1.Items.Add(inttostr(Exame[x].GetCodigo)+' '+'-'+' '+Exame[x].Getexame);
      End;
End;
end;}
end.





