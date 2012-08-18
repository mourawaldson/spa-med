unit cadastro_funcionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, XPMan, ExtCtrls, Mask;

type
  TForm1 = class(TForm)
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
    procedure Timer1Timer(Sender: TObject);
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
    

  private
    { Private declarations }
  public
    { Public declarations }
  end;
Type
 TFuncionario = Record
  Codigo:      integer;
  nome:        string[40];
  rg:          integer;
  cpf:         string[11];
  endereco:    string[50];
  cidade:      string[20];
  estado:      string[2];
  bairro:      string[15];
  cep:         Integer;
  telefone1:   string[10];
  telefone2:   string[10];
  crm:         integer;
  end;

  TVetor_Funcionario = array of TFuncionario;

var
  Form1: TForm1;
  Funcionario: TVetor_Funcionario;         
  Ind: Integer;

implementation

uses unit_funcionarios;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
 Ind:=0;
end;


procedure TForm1.BitBtnCadastrarClick(Sender: TObject);
begin

  EditCodigo.Text := Trim(EditCodigo.Text);

  If (EditCodigo.Text = '') Then
    Begin
      ShowMessage ('Código não preenchido.');
      EditCodigo.SetFocus;
      Exit;
    End;

  EditCrm.Text := Trim(EditCrm.Text);

  If (EditCrm.Text = '') Then
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


    Armazenar(Ind, StrToInt(EditCodigo.text), StrToInt(EditCrm.Text), EditNome.Text, StrToInt(EditRg.Text), MaskEditCpf.Text, MaskEditTel1.Text, MaskEditTel2.Text, EditEndereco.Text, EditEstado.Text, EditCidade.Text, EditBairro.Text, StrToInt(MaskEditCep.Text), Funcionario );
    EditCodigo.Clear;
    EditCrm.Clear;
    EditNome.Clear;
    EditRg.Clear;
    MaskEditCpf.Clear;
    MaskEditTel1.Clear;
    MaskEditTel2.Clear;
    EditEndereco.Clear;
    EditEstado.Clear;
    EditCidade.Clear;
    EditBairro.Clear;
    MaskEditCep.Clear;
    ShowMessage('Funcionário Cadastrado Com Sucesso!');
    EditCodigo.SetFocus;
end;

procedure TForm1.BitBtnPesquisarClick(Sender: TObject);
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
 Ind:=consultar(StrToInt(EditCodigo.Text), Funcionario);
 if (Ind= -1) then
     begin
      MessageDlg('Funcionário não cadastrado!',mtError,[mbOk],0);
      EditCodigo.SetFocus;
      end
        else
      begin
        EditCodigo.Text := IntToStr(funcionario[Ind].codigo);
        EditNome.Text := funcionario[Ind].Nome;
        EditRg.Text := IntToStr(funcionario[Ind].rg);
        MaskEditCpf.Text := funcionario[Ind].cpf;
        EditEndereco.Text := funcionario[Ind].endereco;
        EditCidade.Text := funcionario[Ind].cidade;
        EditEstado.Text := funcionario[Ind].estado;
        EditBairro.Text := funcionario[Ind].bairro;
        MaskEditCep.Text := inttostr(funcionario[Ind].cep);
        MaskEditTel1.Text:= funcionario[Ind].telefone1;
        MaskEditTel2.Text:= funcionario[Ind].telefone2;
        EditCrm.Text:= IntToStr(funcionario[Ind].crm);
        EditCodigo.SetFocus;
      end;
end;
end;


procedure TForm1.BitBtnAlterarClick(Sender: TObject);
begin
    Alterar(Ind, StrToInt(EditCodigo.text), StrToInt(EditCrm.Text), EditNome.Text, StrToInt(EditRg.Text), MaskEditCpf.Text, MaskEditTel1.Text, MaskEditTel2.Text, EditEndereco.Text, EditEstado.Text, EditCidade.Text, EditBairro.Text, StrToInt(MaskEditCep.Text), Funcionario );
    EditCodigo.Clear;
    EditCrm.Clear;
    EditNome.Clear;
    EditRg.Clear;
    MaskEditCpf.Clear;
    MaskEditTel1.Clear;
    MaskEditTel2.Clear;
    EditEndereco.Clear;
    EditEstado.Clear;
    EditCidade.Clear;
    EditBairro.Clear;
    MaskEditCep.Clear;
    ShowMessage('Dados Alterados Com Sucesso!');
    EditCodigo.SetFocus;
end;

procedure TForm1.BitBtnExcluirClick(Sender: TObject);
var Pos:integer;
begin
   pos:=consultar(StrToInt(editCodigo.text), Funcionario);
 if (pos= -1) then
    begin
      ShowMessage('Funcionário Inexistente ou Não Pode Ser Excluido!');
      exit;
    end
     else
   begin
    Excluir(pos, Funcionario);
    Reordenar(Funcionario);
    EditCodigo.Clear;
    EditCrm.Clear;
    EditNome.Clear;
    EditRg.Clear;
    MaskEditCpf.Clear;
    MaskEditTel1.Clear;
    MaskEditTel2.Clear;
    EditEndereco.Clear;
    EditEstado.Clear;
    EditCidade.Clear;
    EditBairro.Clear;
    MaskEditCep.Clear;
    ShowMessage('Funcionário Excluido Com Sucesso!');
    EditCodigo.SetFocus;
    end;


end;

procedure TForm1.BitBtn5Click(Sender: TObject);
 begin
  Close;
 end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
label15.caption:=TimeToStr(time);
end;

procedure TForm1.MaskEditCpfExit(Sender: TObject);
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

procedure TForm1.EditCodigoExit(Sender: TObject);
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

procedure TForm1.EditCrmExit(Sender: TObject);
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



procedure TForm1.EditRgExit(Sender: TObject);
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


procedure TForm1.MaskEditCEPKeyUp(Sender: TObject; var Key: Word;
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

procedure TForm1.EditNomeExit(Sender: TObject);
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


procedure TForm1.EditEstadoExit(Sender: TObject);
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


procedure TForm1.EditCidadeExit(Sender: TObject);
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

procedure TForm1.EditBairroExit(Sender: TObject);
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

end.
