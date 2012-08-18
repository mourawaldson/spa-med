unit Alteracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  TFrmAlteracao = class(TForm)
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
    Label12: TLabel;
    EditCodigo: TEdit;
    EditNomePaciente: TEdit;
    EditRG: TEdit;
    MaskEditTelefone1: TMaskEdit;
    MaskEditTelefone2: TMaskEdit;
    MaskEditCPF: TMaskEdit;
    EditEndereco: TEdit;
    EditCidade: TEdit;
    EditBairro: TEdit;
    EditProfissao: TEdit;
    MaskEditCEP: TMaskEdit;
    ComboBoxEstado: TComboBox;
    BitBtnAlterar: TBitBtn;
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure EditNomePacienteExit(Sender: TObject);
    procedure EditRGExit(Sender: TObject);
    procedure MaskEditCPFExit(Sender: TObject);
    procedure EditProfissaoExit(Sender: TObject);
    procedure EditCidadeExit(Sender: TObject);
    procedure EditBairroExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAlteracao: TFrmAlteracao;

implementation

uses cadastro_pacientes, UPacientes, UClassePaciente;

{$R *.dfm}

procedure TFrmAlteracao.BitBtnAlterarClick(Sender: TObject);
begin

  Alterar(Ind, EditNomePaciente.Text, EditProfissao.Text, EditEndereco.Text, ComboBoxEstado.Text, EditCidade.Text, EditBairro.Text, StrToInt(MaskEditCEP.Text), MaskEditTelefone1.Text, MaskEditTelefone2.Text);
  EditCodigo.Clear;
  EditNomePaciente.Clear;
  EditRG.Clear;
  MaskEditCPF.Clear;
  EditProfissao.Clear;
  EditEndereco.Clear;
  ComboBoxEstado.Clear;
  EditCidade.Clear;
  EditBairro.Clear;
  MaskEditCEP.Clear;
  MaskEditTelefone1.Clear;
  MaskEditTelefone2.Clear;
  ShowMessage('Alteração efetuada com sucesso!');

  FrmPacientes.EditCodigo.Text        := IntToStr(Pacientes[Ind].GetCodigo);
  FrmPacientes.EditNomePaciente.Text  :=          Pacientes[Ind].GetNome;
  FrmPacientes.EditRG.Text            := IntToStr(Pacientes[Ind].GetRG);
  FrmPacientes.MaskEditCPF.Text       :=          Pacientes[Ind].GetCPF;
  FrmPacientes.EditProfissao.Text     :=          Pacientes[Ind].GetProfissao;
  FrmPacientes.EditEndereco.Text      :=          Pacientes[Ind].GetEndereco;
  FrmPacientes.ComboBoxEstado.Text    :=          Pacientes[Ind].GetEstado;
  FrmPacientes.EditCidade.Text        :=          Pacientes[Ind].GetCidade;
  FrmPacientes.EditBairro.Text        :=          Pacientes[Ind].GetBairro;
  FrmPacientes.MaskEditCEP.Text       := IntToStr(Pacientes[Ind].GetCEP);
  FrmPacientes.MaskEditTelefone1.Text :=          Pacientes[Ind].GetTelefone1;
  FrmPacientes.MaskEditTelefone2.Text :=          Pacientes[Ind].GetTelefone2;

  FrmAlteracao.Close;
end;

procedure TFrmAlteracao.EditNomePacienteExit(Sender: TObject);
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

procedure TFrmAlteracao.EditRGExit(Sender: TObject);
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

procedure TFrmAlteracao.MaskEditCPFExit(Sender: TObject);
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

procedure TFrmAlteracao.EditProfissaoExit(Sender: TObject);
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

procedure TFrmAlteracao.EditCidadeExit(Sender: TObject);
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

procedure TFrmAlteracao.EditBairroExit(Sender: TObject);
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
