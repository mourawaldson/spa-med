unit UPesquisaPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmPesquisaPacientes = class(TForm)
    Label1: TLabel;
    EditCod: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisaPacientes: TFrmPesquisaPacientes;

implementation

Uses UPacientes, Cadastro_Pacientes;

{$R *.dfm}

procedure TFrmPesquisaPacientes.Button1Click(Sender: TObject);
begin

  Ind := Pesquisar(StrToInt(EditCod.Text));

    If (Ind = -1) Then
      Begin
        MessageDlg('Paciente não cadastrado!',mtError,[mbOk],0);
        EditCod.SetFocus;
      End

    Else

      Begin
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

        FrmPacientes.EditNomePaciente.Enabled  := False;
        FrmPacientes.EditRG.Enabled            := False;
        FrmPacientes.MaskEditCPF.Enabled       := False;
        FrmPacientes.EditProfissao.Enabled     := False;
        FrmPacientes.EditEndereco.Enabled      := False;
        FrmPacientes.ComboBoxEstado.Enabled    := False;
        FrmPacientes.EditCidade.Enabled        := False;
        FrmPacientes.EditBairro.Enabled        := False;
        FrmPacientes.MaskEditCEP.Enabled       := False;
        FrmPacientes.MaskEditTelefone1.Enabled := False;
        FrmPacientes.MaskEditTelefone2.Enabled := False;

        FrmPacientes.BitBtnAlterar.Enabled  := True;
        FrmPacientes.BitBtnExcluir.Enabled  := True;

        FrmPacientes.Show;
        FrmPesquisaPacientes.Close;

        
      End;

    

end;

procedure TFrmPesquisaPacientes.Button2Click(Sender: TObject);
begin

  FrmPacientes.EditCodigo.Text := IntToStr(Cont_Codigo);
  FrmPacientes.EditNomePaciente.Clear;
  FrmPacientes.EditRG.Clear;
  FrmPacientes.MaskEditCPF.Clear;
  FrmPacientes.EditProfissao.Clear;
  FrmPacientes.EditEndereco.Clear;
  FrmPacientes.ComboBoxEstado.Clear;
  FrmPacientes.EditCidade.Clear;
  FrmPacientes.EditBairro.Clear;
  FrmPacientes.MaskeditCEP.Clear;
  FrmPacientes.MaskEditTelefone1.Clear;
  FrmPacientes.MaskEditTelefone2.Clear;

  FrmPacientes.EditRG.Enabled            := True;
  FrmPacientes.MaskEditCPF.Enabled       := True;
  FrmPacientes.EditProfissao.Enabled     := True;
  FrmPacientes.EditEndereco.Enabled      := True;
  FrmPacientes.ComboBoxEstado.Enabled    := True;
  FrmPacientes.EditCidade.Enabled        := True;
  FrmPacientes.EditBairro.Enabled        := True;
  FrmPacientes.MaskEditCEP.Enabled       := True;
  FrmPacientes.MaskEditTelefone1.Enabled := True;
  FrmPacientes.MaskEditTelefone2.Enabled := True;

  ShowMessage ('Pronto para novo cadastro!');

  FrmPacientes.EditNomePaciente.Enabled := True;

  FrmPacientes.EditNomePaciente.SetFocus;

  FrmPacientes.BitBtnAlterar.Enabled  := False;
  FrmPacientes.BitBtnExcluir.Enabled  := False;

  FrmPesquisaPacientes.Close;

end;

end.
