unit cadastro_funcionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, XPMan, ExtCtrls, Mask, uclasses;

type
  TFrmFuncionarios = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EditNome: TEdit;
    EditCodigo: TEdit;
    EditRg: TEdit;
    EditEndereco: TEdit;
    EditCidade: TEdit;
    EditEstado: TEdit;
    EditBairro: TEdit;
    ComboBox1: TComboBox;
    EditCrm: TEdit;
    BitBtnCadastrar: TBitBtn;
    BitBtnPesquisar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtn5: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    MaskEditCpf: TMaskEdit;
    MaskEditTel1: TMaskEdit;
    MaskEditTel2: TMaskEdit;
    XPManifest1: TXPManifest;
    Timer1: TTimer;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    MaskEditCEP: TMaskEdit;
    procedure BitBtnCadastrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure MaskEditCpfExit(Sender: TObject);
    procedure EditCrmExit(Sender: TObject);
    procedure EditCodigoExit(Sender: TObject);
    procedure EditRgExit(Sender: TObject);
    procedure MaskEditCEPKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomeExit(Sender: TObject);
    procedure EditEstadoExit(Sender: TObject);
    procedure EditCidadeExit(Sender: TObject);
    procedure EditBairroExit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
   
    
    

  private
    { Private declarations }
  public
    { Public declarations }
  end;


  TVetor_Funcionario = array of TFuncionario;

var
  FrmFuncionarios: TFrmFuncionarios;
  Funcionario: TVetor_Funcionario;         
  Ind: Integer;
  Function ValidCPF(sCPF: String):String;
  Function iif(lTest:Boolean; vExpr1,vExpr2:Variant):Variant;


implementation

uses StrUtils;

{$R *.dfm}

procedure TFrmFuncionarios.FormCreate(Sender: TObject);
begin
 Ind:=0;
 ComboBox1.Items.Add('Médico');
 ComboBox1.Items.Add('Enfermaria');
 ComboBox1.Items.Add('Administração');
end;



//procedimento para cadastrar funconarios
Procedure Armazenar(Var I: Integer; C: Integer; F: String; N: String; R: Integer; CP: String; E: String; CI: string; ES: string; B: string; CE: Integer; T1: string; T2: string; CR: integer);
 Begin
  SetLength(Funcionario,I+1);
  Funcionario[I]:=TFuncionario.Create(C,F,N,R,CP,E,CI,ES,B,CE,T1,T2,CR);
  I:=I+1;
 end;

//função para localizar funconario pelo código
Function Consultar(codigo: integer): Integer;
var
 cod_aux: integer;
 M: Integer;
Begin
    For M:= 0 to length(Funcionario)-1 do
      Begin
        cod_aux:= Funcionario[M].getCodigo;
        If(codigo = cod_aux)then
            begin
              Result:=M;
              exit;
            end;
      End;
      Result:=-1;
end;

//procedimento para alterar dados do funcionario
Procedure Alterar(Var I:Integer; N: String; E:String; C:String; ES:String; B:String; CE:Integer; T1:String; T2:String);
Begin
  Funcionario[I].setNome(N);
  Funcionario[I].setEndereco(E);
  Funcionario[I].setCidade(C);
  Funcionario[I].setEstado(ES);
  Funcionario[I].setBairro(B);
  Funcionario[I].setCep(CE);
  Funcionario[I].setTelefone1(T1);
  Funcionario[I].setTelefone2(T2);
end;

//procedimento para excluir e classificar funcionario
Procedure Excluir(I: integer);

begin
   Funcionario[I].Free;
end;

//procedimento para remanejar o vetor
Procedure Reordenar();
var
 M: integer;
 J: integer;
 Func_aux:TFuncionario;
 Begin
  For M:= 0 to Ind-2 do
   For J:= M+1 to Ind-1 do
    if(Funcionario[M].getCodigo> Funcionario[J].getCodigo)then
     begin
      Func_aux:=Funcionario[M];
      Funcionario[M]:=Funcionario[J];
      Funcionario[J]:=Func_aux;
     end;

 end;

//Função1 para validar cpf
function ValidCPF(sCPF: string):string;
var
   sDigs, sVal  : string;
   iSTot, iSTot2: integer;
   i: integer;
begin
   Result := '---';
   sCPF   := Trim(sCPF);
   iSTot  := 0;
   iSTot2 := 0;
   if Length(sCPF) = 11 then
   begin
      for i := 9 downto 1 do
      begin
         iSTot  := iSTot  + StrToInt(Copy(sCPF,i,1)) * (11-i);
         iSTot2 := iSTot2 + StrToInt(Copy(sCPF,i,1)) * (12-i);
      end;
      iSTot  := iSTot mod 11;
      sDigs  := sDigs + IntToStr(iif(iSTot < 2, 0, 11-iSTot));

      iSTot2 := iSTot2 + 2*StrToInt(sDigs);
      isTot2 := iSTot2 mod 11;
      sDigs  := sDigs + IntToStr(iif(iSTot2 < 2, 0, 11-iSTot2));

      sVal   := Copy(sCPF,10,2);
      Result := iif(sDigs = sVal,'',sDigs);
   end
end;
//Função2 para validra cpf
function iif(lTest:Boolean; vExpr1,vExpr2:Variant):Variant;
begin
   if lTest then
     Result := vExpr1
   else
     Result := vExpr2
end;

//Função para testar se só possuem numeros no edit
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

{//Função para testar se só possuem letras no edit
Function Apenas_Letras(Campo: String):Boolean;
var
 I: integer;
  begin
    For I := 1 To Length(Campo) Do
     Begin
     Campo:=Trim(Campo);
     Campo := AnsiUpperCase(campo);

      If Not (Copy(Campo, I, 1)[1] In ['A'..'z', ' ']) Then
        Begin
          Result:=True;
          Exit;
        end;
     End;
     Result:=False;
  end; }

Function apenas_letras(palavra:String):boolean;
Var
  i: Integer;
begin
  palavra := ansiuppercase(trim(palavra));
  i := 1;
  while (i <= length(palavra)) do
    begin
      if not (copy(palavra,i,1) >= 'A') and
             (copy(palavra,i,1) <= 'Z') then
        begin
          if (copy(palavra,i,1) = ' ') then
            begin
              i := i + 1;
            end
          else
            begin
              result := true;
              exit;
            end;
        end
      else
        begin
          i := i + 1;
        end;
    end;
  result := false;
end;


//função para verificar se o usuario pode ser cadastrado
Function Verificar_Funcionario(Codigo: Integer):Boolean;
Var J: Integer;
    Cod_aux: Integer;
Begin
   For J:= 0 to Length(Funcionario)-1 Do
      Begin

         Cod_aux:=Funcionario[J].getCodigo;
         IF (Codigo = Cod_aux)THEN
            Begin
               Result:=True;
               Exit;
            End;
      End;
   Result:=False;//Caso Não Seja Encontrado Ele Retorna-ra False Liberando o Usuario Para Cadastrar
End;



procedure TFrmFuncionarios.BitBtnCadastrarClick(Sender: TObject);
Var POs: Boolean;
begin
Pos:=Verificar_Funcionario(StrToInt(EditCodigo.Text));
 If (Pos = True) Then
  begin
   ShowMessage('Este Código já foi cadastrado antes!');
   exit;
   end
    else
   begin

  EditCodigo.Text := Trim(EditCodigo.Text);

  If (EditCodigo.Text = '') Then
    Begin
      ShowMessage ('Código não preenchido.');
      EditCodigo.SetFocus;
      Exit;
    End;

  EditCrm.Text := Trim(EditCrm.Text);

  If (ComboBox1.Text = 'Médico') And(EditCrm.Text = '') Then
    Begin
      ShowMessage ('CRM não preenchido.');
      EditCrm.SetFocus;
      Exit;
    End;

  EditNome.Text := Trim(EditNome.Text);

  If (EditNome.Text = '') Then
    Begin
      ShowMessage ('Nome não preenchido.');
      EditNome.SetFocus;
      Exit;
    End;

  EditRg.Text := Trim(EditRG.Text);

  If (EditRG.Text = '') Then
    Begin
      ShowMessage ('RG não preenchido.');
      EditRG.SetFocus;
      Exit;
    End;

  MaskEditCPF.Text := Trim(MaskEditCPF.Text);

  If (MaskEditCPF.Text = '') Then
    Begin
      ShowMessage ('CPF não preenchido.');
      MaskEditCPF.SetFocus;
      Exit;
    End;

  MaskEditTel1.Text := Trim(MaskEditTel1.Text);

  If (MaskEditTel1.Text = '') Then
    Begin
      ShowMessage ('Preencha o telefone.');
      MaskEditTel1.SetFocus;
      Exit;
    End;

  EditEndereco.Text := Trim(EditEndereco.Text);

  If (EditEndereco.Text = '') Then
    Begin
      ShowMessage ('Endereço não preenchido.');
      EditEndereco.SetFocus;
      Exit;
    End;

  EditEstado.Text := Trim(EditEstado.Text);

  If (EditEstado.Text = '') Then
    Begin
      ShowMessage('Estado não preenchido.');
      EditEstado.SetFocus;
      Exit;
    End;

  EditCidade.Text := Trim(EditCidade.Text);

  If (EditCidade.Text = '') Then
    Begin
      ShowMessage ('Cidade não preenchida.');
      EditCidade.SetFocus;
      Exit;
    End;

  EditBairro.Text := Trim(EditBairro.Text);

  If (EditBairro.Text = '') Then
    Begin
      ShowMessage ('Bairro não preenchido.');
      EditBairro.SetFocus;
      Exit;
    End;

  MaskEditCEP.Text := Trim(MaskEditCEP.Text);

  If (MaskEditCEP.Text = '') Then
    Begin
      ShowMessage ('CEP não preenchido.');
      MaskEditCEP.SetFocus;
      Exit;
    End;


    Armazenar(Ind, StrToInt(EditCodigo.text), ComboBox1.Text, EditNome.Text, StrToInt(EditRg.Text), MaskEditCpf.Text, EditEndereco.Text, EditCidade.Text, EditEstado.Text, EditBairro.Text, StrToInt(MaskEditCep.Text),MaskEditTel1.Text, MaskEditTel2.Text,StrToInt(EditCrm.Text));
    EditCodigo.Clear;
    ComboBox1.Clear;
    EditNome.Clear;
    EditRg.Clear;
    MaskEditCpf.Clear;
    EditEndereco.Clear;
    EditEstado.Clear;
    EditCidade.Clear;
    EditBairro.Clear;
    MaskEditCep.Clear;
    MaskEditTel1.Clear;
    MaskEditTel2.Clear;
    EditCrm.Clear;
    ShowMessage('Funcionário Cadastrado Com Sucesso!');
    EditCodigo.SetFocus;
    ComboBox1.Items.Add('Médico');
    ComboBox1.Items.Add('Enfermermaria');
    ComboBox1.Items.Add('Administração');

  If (Length(Funcionario) >= 2) Then
    Begin
      Button1.Enabled := True;
      Button2.Enabled := True;
      Button3.Enabled := True;
      Button4.Enabled := True;
    End;
    
end;
end;

procedure TFrmFuncionarios.BitBtnPesquisarClick(Sender: TObject);
begin
 if (StrToInt(EditCodigo.Text) = 0 ) then
    begin
     MessageDlg('Funcionário não cadastrado!',mtError,[mbOk],0);
     EditCodigo.Clear;
     EditRg.Clear;
     MaskEditCep.Clear;
     EditCodigo.SetFocus;
     Exit;
    end;
begin
 Ind:=consultar(StrToInt(EditCodigo.Text));
 if (Ind= -1) then
     begin
      MessageDlg('Funcionário não cadastrado!',mtError,[mbOk],0);
      EditCodigo.SetFocus;
      end
        else
      begin
        EditCodigo.Text := IntToStr(Funcionario[Ind].getCodigo);
        ComboBox1.Text:=Funcionario[Ind].getFuncao;
        EditNome.Text := Funcionario[Ind].getNome;
        EditRg.Text:=IntToStr(Funcionario[Ind].getRg);
        MaskEditCpf.Text:=Funcionario[Ind].getCpf;
        EditEndereco.Text := Funcionario[Ind].getEndereco;
        EditCidade.Text := Funcionario[Ind].getEndereco;
        EditEstado.Text := Funcionario[Ind].getEstado;
        EditBairro.Text := Funcionario[Ind].getBairro;
        MaskEditCep.Text := IntToStr(Funcionario[Ind].getCep);
        MaskEditTel1.Text:= Funcionario[Ind].getTelefone1;
        MaskEditTel2.Text:= Funcionario[Ind].getTelefone2;
        EditCrm.Text:= IntToStr(Funcionario[Ind].getCrm);
        EditCodigo.SetFocus;
      end;
end;
end;


procedure TFrmFuncionarios.BitBtnAlterarClick(Sender: TObject);
begin
    Alterar(Ind, EditNome.Text, EditEndereco.Text, EditCidade.Text, EditEstado.Text, EditBairro.Text, StrToInt(MaskEditCep.Text),MaskEditTel1.Text, MaskEditTel2.Text);
    EditCodigo.Clear;
    ComboBox1.Clear;
    EditNome.Clear;
    EditRg.Clear;
    MaskEditCpf.Clear;
    EditEndereco.Clear;
    EditEstado.Clear;
    EditCidade.Clear;
    EditBairro.Clear;
    MaskEditCep.Clear;
    MaskEditTel1.Clear;
    MaskEditTel2.Clear;
    EditCrm.Clear;
    ShowMessage('Dados Alterados Com Sucesso!');
    EditCodigo.SetFocus;
    ComboBox1.Items.Add('Médico');
    ComboBox1.Items.Add('Enfermermaria');
    ComboBox1.Items.Add('Administração');
end;

procedure TFrmFuncionarios.BitBtnExcluirClick(Sender: TObject);
var Pos:integer;
begin
   pos:=consultar(StrToInt(EditCodigo.text));
 if (pos= -1) then
    begin
      ShowMessage('Funcionário Inexistente ou Não Pode Ser Excluido!');
      exit;
    end
     else
   begin
    Excluir(pos);
    Reordenar();
    EditCodigo.Clear;
    ComboBox1.Clear;
    EditNome.Clear;
    EditRg.Clear;
    MaskEditCpf.Clear;
    EditEndereco.Clear;
    EditEstado.Clear;
    EditCidade.Clear;
    EditBairro.Clear;
    MaskEditCep.Clear;
    MaskEditTel1.Clear;
    MaskEditTel2.Clear;
    EditCrm.Clear;
    ShowMessage('Funcionário Excluido Com Sucesso!');
    EditCodigo.SetFocus;
    ComboBox1.Items.Add('Médico');
    ComboBox1.Items.Add('Enfermaria');
    ComboBox1.Items.Add('Administração');
    end;


end;

procedure TFrmFuncionarios.BitBtn5Click(Sender: TObject);
 begin
  Close;
 end;

procedure TFrmFuncionarios.MaskEditCpfExit(Sender: TObject);
  Var
  sRet : String;
Begin
    sRet := ValidCPF(MaskEditCPF.Text);

    If sRet = '' Then
      Begin
        MessageDlg('CPF Válido',mtInformation,[mbOk],0);
        Exit;
      End
    Else
      Begin
        MessageDlg('CPF Inválido. Valida com ' + #13 + sRet,mtWarning,[mbOk],0);
        MaskEditCPF.SelectAll;
        MaskEditCPF.SetFocus;
        Exit;
      End;
End;

procedure TFrmFuncionarios.EditCodigoExit(Sender: TObject);
Var
 I: boolean;
begin
I:=Apenas_Numeros(EditCodigo.Text);
 if (I = True) then
  Begin
   ShowMessage ('Digite apenas números!');
   EditCodigo.SetFocus;
   EditCodigo.Clear;
   Exit;
  End;
End;

procedure TFrmFuncionarios.EditCrmExit(Sender: TObject);
Var
 I: boolean;
begin
I:=Apenas_Numeros(EditCrm.Text);
 if (I = True) then
  Begin
   ShowMessage ('Digite apenas números!');
   EditCrm.SetFocus;
   EditCrm.Clear;
   Exit;
  End;
End;



procedure TFrmFuncionarios.EditRgExit(Sender: TObject);
Var
 I: boolean;
begin
I:=Apenas_Numeros(EditRg.Text);
 if (I = True) then
  Begin
   ShowMessage ('Digite apenas números!');
   EditRg.SetFocus;
   EditRg.Clear;
   Exit;
  End;
End; 


procedure TFrmFuncionarios.MaskEditCEPKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
begin
 If (Copy(MaskEditCep.Text,8,1) <> '') Then
   Begin
     BitBtnCadastrar.Enabled := True;
     BitBtnPesquisar.Enabled := True;
     BitBtnAlterar.Enabled   := True;
     BitBtnExcluir.Enabled   := True;
   End;

 If (Copy(MaskEditCep.Text,8,1) = '') Then
   Begin
     BitBtnCadastrar.Enabled := False;
     BitBtnPesquisar.Enabled := False;
     BitBtnAlterar.Enabled   := False;
     BitBtnExcluir.Enabled   := False;
   End;
end;
end;

procedure TFrmFuncionarios.EditNomeExit(Sender: TObject);
Var
 I: boolean;
begin
I:=Apenas_Letras(EditNome.Text);
 if (I = True) then
  Begin
   ShowMessage ('Digite apenas Letras!');
   EditNome.SetFocus;
   EditNome.Clear;
   Exit;
  End;
End;


procedure TFrmFuncionarios.EditEstadoExit(Sender: TObject);
Var
 I: boolean;
begin
I:=Apenas_Letras(EditEstado.Text);
 if (I = True) then
  Begin
   ShowMessage ('Digite apenas Letras!');
   EditEstado.SetFocus;
   EditEstado.Clear;
   Exit;
  End;
End;


procedure TFrmFuncionarios.EditCidadeExit(Sender: TObject);
Var
 I: boolean;
begin
I:=Apenas_Letras(EditCidade.Text);
 if (I = True) then
  Begin
   ShowMessage ('Digite apenas Letras!');
   EditCidade.SetFocus;
   EditCidade.Clear;
   Exit;
  End;
End;

procedure TFrmFuncionarios.EditBairroExit(Sender: TObject);
Var
 I: boolean;
begin
I:=Apenas_Letras(EditBairro.Text);
 if (I = True) then
  Begin
   ShowMessage ('Digite apenas Letras!');
   EditBairro.SetFocus;
   EditBairro.Clear;
   Exit;
  End;
End;


procedure TFrmFuncionarios.Button3Click(Sender: TObject);
begin
Ind:=Ind+1;
EditCodigo.Text:=IntToStr(Funcionario[Ind].getCodigo);
EditNome.Text:=Funcionario[Ind].getNome;
EditRg.Text:=IntToStr(Funcionario[Ind].getRg);
MaskEditCpf.Text:=Funcionario[Ind].getCpf;
EditEndereco.Text:=Funcionario[Ind].getEndereco;
EditCidade.Text:=Funcionario[Ind].getCidade;
EditEstado.Text:=Funcionario[Ind].getEstado;
EditBairro.Text:=Funcionario[Ind].getBairro;
MaskEditCep.Text:=IntToStr(Funcionario[Ind].getCep);
MaskEditTel1.Text:=Funcionario[Ind].getTelefone1;
MaskEditTel2.Text:=Funcionario[Ind].getTelefone2;
EditCrm.Text:=IntToStr(Funcionario[Ind].getCrm);
  If Ind=Length(funcionario)-1 Then
    Begin
      Button1.Enabled:=True;
      Button2.Enabled:=True;
      Button3.Enabled:=False;
      Button4.Enabled:=False;
    End
  Else
    If (Ind<Length(funcionario)-1) Or (Ind>0) Then
      Begin
        Button1.Enabled:=True;
        Button2.Enabled:=True;
        Button3.Enabled:=True;
        Button4.Enabled:=True;
      End;
end;

procedure TFrmFuncionarios.Button2Click(Sender: TObject);
begin
Ind:=Ind-1;
EditCodigo.Text:=IntToStr(Funcionario[Ind].getCodigo);
EditNome.Text:=Funcionario[Ind].getNome;
EditRg.Text:=IntToStr(Funcionario[Ind].getRg);
MaskEditCpf.Text:=Funcionario[Ind].getCpf;
EditEndereco.Text:=Funcionario[Ind].getEndereco;
EditCidade.Text:=Funcionario[Ind].getCidade;
EditEstado.Text:=Funcionario[Ind].getEstado;
EditBairro.Text:=Funcionario[Ind].getBairro;
MaskEditCep.Text:=IntToStr(Funcionario[Ind].getCep);
MaskEditTel1.Text:=Funcionario[Ind].getTelefone1;
MaskEditTel2.Text:=Funcionario[Ind].getTelefone2;
EditCrm.Text:=IntToStr(Funcionario[Ind].getCrm);
  If Ind=0 Then
    Begin
      Button1.Enabled:=False;
      Button2.Enabled:=False;
      Button3.Enabled:=True;
      Button4.Enabled:=True;
    End
  Else
    If (Ind<Length(funcionario)-1) Or (Ind>0) Then
      Begin
        Button1.Enabled:=True;
        Button2.Enabled:=True;
        Button3.Enabled:=True;
        Button4.Enabled:=True;
      End;
end;

procedure TFrmFuncionarios.Button1Click(Sender: TObject);
begin
Ind:=0;
  EditCodigo.Text:=IntToStr(Funcionario[Ind].getCodigo);
  EditNome.Text:=Funcionario[Ind].getNome;
  EditRg.Text:=IntToStr(Funcionario[Ind].getRg);
  MaskEditCpf.Text:=Funcionario[Ind].getCpf;
  EditEndereco.Text:=Funcionario[Ind].getEndereco;
  EditCidade.Text:=Funcionario[Ind].getCidade;
  EditEstado.Text:=Funcionario[Ind].getEstado;
  EditBairro.Text:=Funcionario[Ind].getBairro;
  MaskEditCep.Text:=IntToStr(Funcionario[Ind].getCep);
  MaskEditTel1.Text:=Funcionario[Ind].getTelefone1;
  MaskEditTel2.Text:=Funcionario[Ind].getTelefone2;
  EditCrm.Text:=IntToStr(Funcionario[Ind].getCrm);
  Button1.Enabled:=False;
  Button2.Enabled:=False;
  Button3.Enabled:=True;
  Button4.Enabled:=True;
end;

procedure TFrmFuncionarios.Button4Click(Sender: TObject);
begin
Ind:=length(funcionario)-1;
  EditCodigo.Text:=IntToStr(Funcionario[Ind].getCodigo);
  EditNome.Text:=Funcionario[Ind].getNome;
  EditRg.Text:=IntToStr(Funcionario[Ind].getRg);
  MaskEditCpf.Text:=Funcionario[Ind].getCpf;
  EditEndereco.Text:=Funcionario[Ind].getEndereco;
  EditCidade.Text:=Funcionario[Ind].getCidade;
  EditEstado.Text:=Funcionario[Ind].getEstado;
  EditBairro.Text:=Funcionario[Ind].getBairro;
  MaskEditCep.Text:=IntToStr(Funcionario[Ind].getCep);
  MaskEditTel1.Text:=Funcionario[Ind].getTelefone1;
  MaskEditTel2.Text:=Funcionario[Ind].getTelefone2;
  EditCrm.Text:=IntToStr(Funcionario[Ind].getCrm);
  Button1.Enabled:=True;
  Button2.Enabled:=True;
  Button3.Enabled:=False;
  Button4.Enabled:=False;
end;

procedure TFrmFuncionarios.ComboBox1Exit(Sender: TObject);
begin
 IF (ComboBox1.Text = 'Médico') Then
    Begin
      EditCrm.Enabled := True;
    End
    else
      Begin
    EditCrm.Text := '0';
    EditCrm.Enabled := False;

    End;
end;



end.
