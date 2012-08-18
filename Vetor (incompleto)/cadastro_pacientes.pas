unit cadastro_pacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, XPMan;

type
  TForm2 = class(TForm)
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
    EditCodigo: TEdit;
    EditNomePaciente: TEdit;
    EditRG: TEdit;
    BitBtnCadastrar: TBitBtn;
    BitBtnPesquisar: TBitBtn;
    BitBtnAlterar: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnSair: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    MaskEditTelefone1: TMaskEdit;
    MaskEditTelefone2: TMaskEdit;
    MaskEditCPF: TMaskEdit;
    EditProfissao: TEdit;
    EditEndereco: TEdit;
    EditEstado: TEdit;
    EditCidade: TEdit;
    EditBairro: TEdit;
    MaskEditCEP: TMaskEdit;
    Timer1: TTimer;
    Label11: TLabel;
    Label12: TLabel;
    XPManifest1: TXPManifest;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnCadastrarClick(Sender: TObject);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure MaskEditCPFExit(Sender: TObject);
    procedure EditRGExit(Sender: TObject);
    procedure MaskEditTelefone1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNomePacienteExit(Sender: TObject);
    procedure EditProfissaoExit(Sender: TObject);
    procedure EditCidadeExit(Sender: TObject);
    procedure EditBairroExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Type
  TPacientes = Record
  Codigo     : Integer;
  Nome       : String[40];
  RG         : Integer;
  CPF        : String[11];
  Profissao  : String[25];
  Endereco   : String[50];
  Estado     : String[02];
  Cidade     : String[20];
  Bairro     : String[15];
  CEP        : Integer;
  Telefone1  : String[10];
  Telefone2  : String[10];

  End;

  TVetor_Pacientes = Array Of TPacientes;
var

  Form2       : TForm2;
  Ind         : Integer;
  Pacientes   : TVetor_Pacientes;
  Cont_Codigo : Integer;

implementation

uses pesquisa_pacientes, unit_pacientes;

{$R *.dfm}

procedure TForm2.Timer1Timer(Sender: TObject);
begin

  Label11.Caption := TimeToStr(Time);
  
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Ind         := 0;
  Cont_Codigo := 1;
  EditCodigo.Text := IntToStr(Cont_Codigo);
end;


procedure TForm2.BitBtnCadastrarClick(Sender: TObject);
Begin

  EditNomePaciente.Text := Trim(EditNomePaciente.Text);

  If (EditNomePaciente.Text = '') Then
    Begin
      ShowMessage ('Nome não preenchido.');
      EditNomePaciente.SetFocus;
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

  EditProfissao.Text := Trim(EditProfissao.Text);

  If (EditProfissao.Text = '') Then
    Begin
      ShowMessage ('Profissão não preenchida');
      EditProfissao.SetFocus;
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

  MaskEditTelefone1.Text := Trim(MaskEditTelefone1.Text);

  If (MaskEditTelefone1.Text = '') Then
    Begin
      ShowMessage ('Preencha o telefone.');
      MaskEditTelefone1.SetFocus;
      Exit;
    End;

  Armazenar(Ind, StrToInt(EditCodigo.Text), EditNomePaciente.Text, StrToInt(EditRG.Text), MaskEditCPF.Text, EditProfissao.Text, EditEndereco.Text, EditEstado.Text, EditCidade.Text, EditBairro.Text, StrToInt(MaskEditCEP.Text), MaskEditTelefone1.Text, MaskEditTelefone2.Text, Pacientes );
  EditNomePaciente.Clear;
  EditRG.Clear;
  MaskEditCPF.Clear;
  EditProfissao.Clear;
  EditEndereco.Clear;
  EditEstado.Clear;
  EditCidade.Clear;
  EditBairro.Clear;
  MaskeditCEP.Clear;
  MaskEditTelefone1.Clear;
  MaskEditTelefone2.Clear;
  ShowMessage ('Paciente cadastrado com sucesso!');
  Cont_Codigo := Cont_Codigo + 1;
  EditCodigo.Text := IntToStr(Cont_Codigo);
  
end;

procedure TForm2.BitBtnPesquisarClick(Sender: TObject);
begin

  Form5.Show;

end;

procedure TForm2.BitBtnAlterarClick(Sender: TObject);
begin

  Alterar(Ind, StrToInt(EditCodigo.Text), EditNomePaciente.Text, StrToInt(EditRG.Text), MaskEditCPF.Text, EditProfissao.Text, EditEndereco.Text, EditEstado.Text, EditCidade.Text, EditBairro.Text, StrToInt(MaskEditCEP.Text), MaskEditTelefone1.Text, MaskEditTelefone2.Text, Pacientes );
  EditNomePaciente.Clear;
  EditRG.Clear;
  MaskEditCPF.Clear;
  EditProfissao.Clear;
  EditEndereco.Clear;
  EditEstado.Clear;
  EditCidade.Clear;
  EditBairro.Clear;
  MaskEditCEP.Clear;
  MaskEditTelefone1.Clear;
  MaskEditTelefone2.Clear;
  ShowMessage('Alteração efetuada com sucesso!');

end;

procedure TForm2.BitBtnExcluirClick(Sender: TObject);
Var Pos : Integer;

  Begin

    If (Cont_Codigo = 0) Then
      Begin
        ShowMessage('É necessário ao menos um cadastro!');
        EditNomePaciente.SetFocus;
      End;

    Pos := Pesquisar(StrToInt(EditCodigo.Text), Pacientes);

    If (Pos = -1) Then
      Begin
        ShowMessage('Paciente inexistente ou não pode ser excluido!');
        Exit;
      End
    Else
      Begin
        Excluir(Pos, Pacientes);
        Ordenar(Pacientes);
        EditNomePaciente.Clear;
        EditRG.Clear;
        MaskEditCPF.Clear;
        EditProfissao.Clear;
        EditEndereco.Clear;
        EditEstado.Clear;
        EditCidade.Clear;
        EditBairro.Clear;
        MaskEditCEP.Clear;
        MaskEditTelefone1.Clear;
        MaskEditTelefone2.Clear;
        ShowMessage('Paciente excluido com sucesso!');
      End;

    Cont_Codigo := Cont_Codigo - 1;
    EditCodigo.Text := IntToStr(Cont_Codigo);
    
end;

procedure TForm2.MaskEditCPFExit(Sender: TObject);
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
end;

procedure TForm2.EditRGExit(Sender: TObject);
Var
 I: Boolean;

  Begin
    I:=Apenas_Numeros(EditRg.Text);
      If (I = True) Then
        Begin
          ShowMessage ('Digite apenas números!');
          EditRg.SetFocus;
          Exit;
        End;
  End;


procedure TForm2.MaskEditTelefone1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

 If (Copy(MaskEditTelefone1.Text, 10,1) <> '') Then
   Begin
     BitBtnCadastrar.Enabled := True;
     BitBtnPesquisar.Enabled := True;
     BitBtnAlterar.Enabled   := True;
     BitBtnExcluir.Enabled   := True;
   End;

 If (Copy(MaskEditTelefone1.Text, 10,1) = '') Then
   Begin
     BitBtnCadastrar.Enabled := False;
     BitBtnPesquisar.Enabled := False;
     BitBtnAlterar.Enabled   := False;
     BitBtnExcluir.Enabled   := False;
   End;

end;


procedure TForm2.EditNomePacienteExit(Sender: TObject);
Var
 I: Boolean;

  Begin
    I:=Apenas_Letras(EditNomePaciente.Text);
      If (I = True) Then
        Begin
          ShowMessage ('Digite apenas letras!');
          EditNomePaciente.SetFocus;
          Exit;
        End;
  End;

procedure TForm2.EditProfissaoExit(Sender: TObject);

Var
 I: Boolean;

  Begin
    I := Apenas_Letras(EditProfissao.Text);
      If (I = True) Then
        Begin
          ShowMessage ('Digite apenas letras!');
          EditProfissao.SetFocus;
          Exit;
        End;
  End;


procedure TForm2.EditCidadeExit(Sender: TObject);

Var
 I: Boolean;

  Begin
    I := Apenas_Letras(EditCidade.Text);
      If (I = True) Then
        Begin
          ShowMessage ('Digite apenas letras!');
          EditCidade.SetFocus;
          Exit;
        End;
  End;

procedure TForm2.EditBairroExit(Sender: TObject);

Var
 I: Boolean;

  Begin
    I := Apenas_Letras(EditBairro.Text);
      If (I = True) Then
        Begin
          ShowMessage ('Digite apenas letras!');
          EditBairro.SetFocus;
          Exit;
        End;
  End;

end.
