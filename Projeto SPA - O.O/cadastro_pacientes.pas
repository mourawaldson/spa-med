unit cadastro_pacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, XPMan, UClassePaciente, Alteracao;

type
  TFrmPacientes = class(TForm)
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
    EditCidade: TEdit;
    EditBairro: TEdit;
    MaskEditCEP: TMaskEdit;
    Timer1: TTimer;
    Label11: TLabel;
    Label12: TLabel;
    XPManifest1: TXPManifest;
    ComboBoxEstado: TComboBox;
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
    procedure EditNomePacienteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TVetor_Pacientes = Array Of TPacientes;
var

  FrmPacientes : TFrmPacientes;
  Ind          : Integer;
  Pacientes    : TVetor_Pacientes;
  Cont_Codigo  : Integer;

implementation

uses UPacientes, UPesquisaPacientes;

{$R *.dfm}

procedure TFrmPacientes.FormCreate(Sender: TObject);
begin
  Ind         := 0;
  Cont_Codigo := 1;
  EditCodigo.Text := IntToStr(Cont_Codigo);
  ComboBoxEstado.Items.Add('AC');
  ComboBoxEstado.Items.Add('AL');
  ComboBoxEstado.Items.Add('AM');
  ComboBoxEstado.Items.Add('AP');
  ComboBoxEstado.Items.Add('BA');
  ComboBoxEstado.Items.Add('CE');
  ComboBoxEstado.Items.Add('DF');
  ComboBoxEstado.Items.Add('ES');
  ComboBoxEstado.Items.Add('GO');
  ComboBoxEstado.Items.Add('MA');
  ComboBoxEstado.Items.Add('MG');
  ComboBoxEstado.Items.Add('MS');
  ComboBoxEstado.Items.Add('MT');
  ComboBoxEstado.Items.Add('PA');
  ComboBoxEstado.Items.Add('PB');
  ComboBoxEstado.Items.Add('PE');
  ComboBoxEstado.Items.Add('PI');
  ComboBoxEstado.Items.Add('PR');
  ComboBoxEstado.Items.Add('RJ');
  ComboBoxEstado.Items.Add('RN');
  ComboBoxEstado.Items.Add('RO');
  ComboBoxEstado.Items.Add('RR');
  ComboBoxEstado.Items.Add('RS');
  ComboBoxEstado.Items.Add('SC');
  ComboBoxEstado.Items.Add('SE');
  ComboBoxEstado.Items.Add('SP');
  ComboBoxEstado.Items.Add('TO');
end;


procedure TFrmPacientes.BitBtnCadastrarClick(Sender: TObject);
Var T: Integer;
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

  ComboBoxEstado.Text := Trim(ComboBoxEstado.Text);

  If (ComboBoxEstado.Text = '') Then
    Begin
      ShowMessage('Estado não preenchido.');
      ComboBoxEstado.SetFocus;
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

  T:=Length(Pacientes);
  Armazenar(T, StrToInt(EditCodigo.Text), EditNomePaciente.Text, StrToInt(EditRG.Text), MaskEditCPF.Text, EditProfissao.Text, EditEndereco.Text, EditCidade.Text, ComboBoxEstado.Text, EditBairro.Text, StrToInt(MaskEditCEP.Text), MaskEditTelefone1.Text, MaskEditTelefone2.Text);
  Ind:=T;
  EditNomePaciente.Clear;
  EditRG.Clear;
  MaskEditCPF.Clear;
  EditProfissao.Clear;
  EditEndereco.Clear;
  ComboBoxEstado.Clear;
  EditCidade.Clear;
  EditBairro.Clear;
  MaskeditCEP.Clear;
  MaskEditTelefone1.Clear;
  MaskEditTelefone2.Clear;

  Cont_Codigo := Cont_Codigo + 1;
  EditCodigo.Text := IntToStr(Cont_Codigo);

  If (Length(Pacientes) <> 0) Then
    Begin
      BitBtnPesquisar.Enabled := True;
      BitBtnCadastrar.Enabled := False;
    End;

  If (Length(Pacientes) >= 2) Then
    Begin
      Button1.Enabled := True;
      Button2.Enabled := True;
      Button3.Enabled := True;
      Button4.Enabled := True;
    End;

  ShowMessage ('Paciente cadastrado com sucesso!');

  ComboBoxEstado.Items.Add('AC');
  ComboBoxEstado.Items.Add('AL');
  ComboBoxEstado.Items.Add('AM');
  ComboBoxEstado.Items.Add('AP');
  ComboBoxEstado.Items.Add('BA');
  ComboBoxEstado.Items.Add('CE');
  ComboBoxEstado.Items.Add('DF');
  ComboBoxEstado.Items.Add('ES');
  ComboBoxEstado.Items.Add('GO');
  ComboBoxEstado.Items.Add('MA');
  ComboBoxEstado.Items.Add('MG');
  ComboBoxEstado.Items.Add('MS');
  ComboBoxEstado.Items.Add('MT');
  ComboBoxEstado.Items.Add('PA');
  ComboBoxEstado.Items.Add('PB');
  ComboBoxEstado.Items.Add('PE');
  ComboBoxEstado.Items.Add('PI');
  ComboBoxEstado.Items.Add('PR');
  ComboBoxEstado.Items.Add('RJ');
  ComboBoxEstado.Items.Add('RN');
  ComboBoxEstado.Items.Add('RO');
  ComboBoxEstado.Items.Add('RR');
  ComboBoxEstado.Items.Add('RS');
  ComboBoxEstado.Items.Add('SC');
  ComboBoxEstado.Items.Add('SE');
  ComboBoxEstado.Items.Add('SP');
  ComboBoxEstado.Items.Add('TO');
    
end;

procedure TFrmPacientes.BitBtnPesquisarClick(Sender: TObject);
begin

  FrmPesquisaPacientes.Show;

end;

procedure TFrmPacientes.BitBtnAlterarClick(Sender: TObject);
begin

  FrmAlteracao.Show;

  FrmAlteracao.EditCodigo.Text        := FrmPacientes.EditCodigo.Text;
  FrmAlteracao.EditNomePaciente.Text  := FrmPacientes.EditNomePaciente.Text;
  FrmAlteracao.EditRG.Text            := FrmPacientes.EditRG.Text;
  FrmAlteracao.EditProfissao.Text     := FrmPacientes.EditProfissao.Text;
  FrmAlteracao.EditEndereco.Text      := FrmPacientes.EditEndereco.Text;
  FrmAlteracao.EditCidade.Text        := FrmPacientes.EditCidade.Text;
  FrmAlteracao.EditBairro.Text        := FrmPacientes.EditBairro.Text;
  FrmAlteracao.ComboBoxEstado.Text    := FrmPacientes.ComboBoxEstado.Text;
  FrmAlteracao.MaskEditTelefone1.Text := FrmPacientes.MaskEditTelefone1.Text;
  FrmAlteracao.MaskEditTelefone2.Text := FrmPacientes.MaskEditTelefone2.Text;
  FrmAlteracao.MaskEditCPF.Text       := FrmPacientes.MaskEditCPF.Text;
  FrmAlteracao.MaskEditCEP.Text       := FrmPacientes.MaskEditCEP.Text;

  FrmAlteracao.ComboBoxEstado.Items.Add('AC');
  FrmAlteracao.ComboBoxEstado.Items.Add('AL');
  FrmAlteracao.ComboBoxEstado.Items.Add('AM');
  FrmAlteracao.ComboBoxEstado.Items.Add('AP');
  FrmAlteracao.ComboBoxEstado.Items.Add('BA');
  FrmAlteracao.ComboBoxEstado.Items.Add('CE');
  FrmAlteracao.ComboBoxEstado.Items.Add('DF');
  FrmAlteracao.ComboBoxEstado.Items.Add('ES');
  FrmAlteracao.ComboBoxEstado.Items.Add('GO');
  FrmAlteracao.ComboBoxEstado.Items.Add('MA');
  FrmAlteracao.ComboBoxEstado.Items.Add('MG');
  FrmAlteracao.ComboBoxEstado.Items.Add('MS');
  FrmAlteracao.ComboBoxEstado.Items.Add('MT');
  FrmAlteracao.ComboBoxEstado.Items.Add('PA');
  FrmAlteracao.ComboBoxEstado.Items.Add('PB');
  FrmAlteracao.ComboBoxEstado.Items.Add('PE');
  FrmAlteracao.ComboBoxEstado.Items.Add('PI');
  FrmAlteracao.ComboBoxEstado.Items.Add('PR');
  FrmAlteracao.ComboBoxEstado.Items.Add('RJ');
  FrmAlteracao.ComboBoxEstado.Items.Add('RN');
  FrmAlteracao.ComboBoxEstado.Items.Add('RO');
  FrmAlteracao.ComboBoxEstado.Items.Add('RR');
  FrmAlteracao.ComboBoxEstado.Items.Add('RS');
  FrmAlteracao.ComboBoxEstado.Items.Add('SC');
  FrmAlteracao.ComboBoxEstado.Items.Add('SE');
  FrmAlteracao.ComboBoxEstado.Items.Add('SP');
  FrmAlteracao.ComboBoxEstado.Items.Add('TO');

end;

procedure TFrmPacientes.BitBtnExcluirClick(Sender: TObject);
Var Pos : Integer;

  Begin

    Pos := Pesquisar(StrToInt(EditCodigo.Text));

    If (Pos = -1) Then
      Begin
        ShowMessage('Paciente inexistente ou não pode ser excluido!');
        Exit;
      End
    Else
      Begin
        Excluir(Pos);
        Ordenar();
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

        ShowMessage('Paciente excluido com sucesso!');

        If (Length(Pacientes) <> 0) Then
          Begin
            BitBtnPesquisar.Enabled := True;
            BitBtnCadastrar.Enabled := False;
          End;

        FrmPacientes.BitBtnAlterar.Enabled  := False;
        FrmPacientes.BitBtnExcluir.Enabled  := False;

        ComboBoxEstado.Items.Add('AC');
        ComboBoxEstado.Items.Add('AL');
        ComboBoxEstado.Items.Add('AM');
        ComboBoxEstado.Items.Add('AP');
        ComboBoxEstado.Items.Add('BA');
        ComboBoxEstado.Items.Add('CE');
        ComboBoxEstado.Items.Add('DF');
        ComboBoxEstado.Items.Add('ES');
        ComboBoxEstado.Items.Add('GO');
        ComboBoxEstado.Items.Add('MA');
        ComboBoxEstado.Items.Add('MG');
        ComboBoxEstado.Items.Add('MS');
        ComboBoxEstado.Items.Add('MT');
        ComboBoxEstado.Items.Add('PA');
        ComboBoxEstado.Items.Add('PB');
        ComboBoxEstado.Items.Add('PE');
        ComboBoxEstado.Items.Add('PI');
        ComboBoxEstado.Items.Add('PR');
        ComboBoxEstado.Items.Add('RJ');
        ComboBoxEstado.Items.Add('RN');
        ComboBoxEstado.Items.Add('RO');
        ComboBoxEstado.Items.Add('RR');
        ComboBoxEstado.Items.Add('RS');
        ComboBoxEstado.Items.Add('SC');
        ComboBoxEstado.Items.Add('SE');
        ComboBoxEstado.Items.Add('SP');
        ComboBoxEstado.Items.Add('TO');

        EditNomePaciente.Enabled  := True;
        EditRG.Enabled            := True;
        MaskEditCPF.Enabled       := True;
        EditProfissao.Enabled     := True;
        EditEndereco.Enabled      := True;
        ComboBoxEstado.Enabled    := True;
        EditCidade.Enabled        := True;
        EditBairro.Enabled        := True;
        MaskEditCEP.Enabled       := True;
        MaskEditTelefone1.Enabled := True;
        MaskEditTelefone2.Enabled := True;

      End;

    Cont_Codigo := Cont_Codigo - 1;
    EditCodigo.Text := IntToStr(Cont_Codigo);
    
end;

procedure TFrmPacientes.MaskEditCPFExit(Sender: TObject);
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

procedure TFrmPacientes.EditRGExit(Sender: TObject);
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


procedure TFrmPacientes.MaskEditTelefone1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

 If (Copy(MaskEditTelefone1.Text, 10,1) <> '') Then
   Begin
     BitBtnCadastrar.Enabled := True;
   End;

 If (Copy(MaskEditTelefone1.Text, 10,1) = '') Then
   Begin
     BitBtnCadastrar.Enabled := False;
     BitBtnPesquisar.Enabled := False;
     BitBtnAlterar.Enabled   := False;
     BitBtnExcluir.Enabled   := False;
   End;

end;


procedure TFrmPacientes.EditNomePacienteExit(Sender: TObject);
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

procedure TFrmPacientes.EditProfissaoExit(Sender: TObject);

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


procedure TFrmPacientes.EditCidadeExit(Sender: TObject);

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

procedure TFrmPacientes.EditBairroExit(Sender: TObject);

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

procedure TFrmPacientes.EditNomePacienteKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  begin

  If (EditNomePaciente.Text <> '') Or (EditRG.Text <> '') Or (MaskEditCPF.Text <> '') Or
     (EditProfissao.Text <> '') Or (EditEndereco.Text <> '') Or (EditCidade.Text <> '') Or
     (EditBairro.Text <> '') Or (MaskEditCEP.Text <> '') Or (MaskEditTelefone1.Text <> '') Then
    Begin
      BitBtnPesquisar.Enabled := False;
    End;

  If (EditNomePaciente.Text = '') And (Length(Pacientes) <> 0) Then
    Begin
      BitBtnPesquisar.Enabled := True;
    End;

end;

procedure TFrmPacientes.Button1Click(Sender: TObject);
begin
  Ind := 0;
  EditCodigo.Text        := IntToStr(Pacientes[Ind].GetCodigo);
  EditNomePaciente.Text  :=          Pacientes[Ind].GetNome;
  EditRG.Text            := IntToStr(Pacientes[Ind].GetRG);
  MaskEditCPF.Text       :=          Pacientes[Ind].GetCPF;
  EditProfissao.Text     :=          Pacientes[Ind].GetProfissao;
  EditEndereco.Text      :=          Pacientes[Ind].GetEndereco;
  ComboBoxEstado.Text    :=          Pacientes[Ind].GetEstado;
  EditCidade.Text        :=          Pacientes[Ind].GetCidade;
  EditBairro.Text        :=          Pacientes[Ind].GetBairro;
  MaskEditCEP.Text       := IntToStr(Pacientes[Ind].GetCEP);
  MaskEditTelefone1.Text :=          Pacientes[Ind].GetTelefone1;
  MaskEditTelefone2.Text :=          Pacientes[Ind].GetTelefone2;

  Button1.Enabled:=False;
  Button2.Enabled:=False;
  Button3.Enabled:=True;
  Button4.Enabled:=True;
end;

procedure TFrmPacientes.Button2Click(Sender: TObject);
begin
  Ind := Ind-1;
  EditCodigo.Text        := IntToStr(Pacientes[Ind].GetCodigo);
  EditNomePaciente.Text  :=          Pacientes[Ind].GetNome;
  EditRG.Text            := IntToStr(Pacientes[Ind].GetRG);
  MaskEditCPF.Text       :=          Pacientes[Ind].GetCPF;
  EditProfissao.Text     :=          Pacientes[Ind].GetProfissao;
  EditEndereco.Text      :=          Pacientes[Ind].GetEndereco;
  ComboBoxEstado.Text    :=          Pacientes[Ind].GetEstado;
  EditCidade.Text        :=          Pacientes[Ind].GetCidade;
  EditBairro.Text        :=          Pacientes[Ind].GetBairro;
  MaskEditCEP.Text       := IntToStr(Pacientes[Ind].GetCEP);
  MaskEditTelefone1.Text :=          Pacientes[Ind].GetTelefone1;
  MaskEditTelefone2.Text :=          Pacientes[Ind].GetTelefone2;

  If Ind=0 Then
    Begin
      Button1.Enabled:=False;
      Button2.Enabled:=False;
      Button3.Enabled:=True;
      Button4.Enabled:=True;
    End
  Else
    If (Ind < Length(Pacientes)-1) Or (Ind > 0) Then
      Begin
        Button1.Enabled:=True;
        Button2.Enabled:=True;
        Button3.Enabled:=True;
        Button4.Enabled:=True;
      End;
end;

procedure TFrmPacientes.Button3Click(Sender: TObject);
begin
  Ind := Ind+1;
  EditCodigo.Text        := IntToStr(Pacientes[Ind].GetCodigo);
  EditNomePaciente.Text  :=          Pacientes[Ind].GetNome;
  EditRG.Text            := IntToStr(Pacientes[Ind].GetRG);
  MaskEditCPF.Text       :=          Pacientes[Ind].GetCPF;
  EditProfissao.Text     :=          Pacientes[Ind].GetProfissao;
  EditEndereco.Text      :=          Pacientes[Ind].GetEndereco;
  ComboBoxEstado.Text    :=          Pacientes[Ind].GetEstado;
  EditCidade.Text        :=          Pacientes[Ind].GetCidade;
  EditBairro.Text        :=          Pacientes[Ind].GetBairro;
  MaskEditCEP.Text       := IntToStr(Pacientes[Ind].GetCEP);
  MaskEditTelefone1.Text :=          Pacientes[Ind].GetTelefone1;
  MaskEditTelefone2.Text :=          Pacientes[Ind].GetTelefone2;

  If Ind=Length(Pacientes)-1 Then
    Begin
      Button1.Enabled:=True;
      Button2.Enabled:=True;
      Button3.Enabled:=False;
      Button4.Enabled:=False;
    End
  Else
    If (Ind < Length(Pacientes)-1) Or (Ind > 0) Then
      Begin
        Button1.Enabled:=True;
        Button2.Enabled:=True;
        Button3.Enabled:=True;
        Button4.Enabled:=True;
      End;
end;

procedure TFrmPacientes.Button4Click(Sender: TObject);
begin
  Ind := Length(Pacientes)-1;

  EditCodigo.Text        := IntToStr(Pacientes[Ind].GetCodigo);
  EditNomePaciente.Text  :=          Pacientes[Ind].GetNome;
  EditRG.Text            := IntToStr(Pacientes[Ind].GetRG);
  MaskEditCPF.Text       :=          Pacientes[Ind].GetCPF;
  EditProfissao.Text     :=          Pacientes[Ind].GetProfissao;
  EditEndereco.Text      :=          Pacientes[Ind].GetEndereco;
  ComboBoxEstado.Text    :=          Pacientes[Ind].GetEstado;
  EditCidade.Text        :=          Pacientes[Ind].GetCidade;
  EditBairro.Text        :=          Pacientes[Ind].GetBairro;
  MaskEditCEP.Text       := IntToStr(Pacientes[Ind].GetCEP);
  MaskEditTelefone1.Text :=          Pacientes[Ind].GetTelefone1;
  MaskEditTelefone2.Text :=          Pacientes[Ind].GetTelefone2;

  Button1.Enabled:=True;
  Button2.Enabled:=True;
  Button3.Enabled:=False;
  Button4.Enabled:=False;
end;

end.
