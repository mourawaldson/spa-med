unit pesquisa_pacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
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
  Form5: TForm5;

implementation

uses unit_pacientes, cadastro_pacientes;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin

  Ind := Pesquisar(StrToInt(Edit1.Text), Pacientes);

    If (Ind = -1) Then
      Begin
        MessageDlg('Paciente não cadastrado!',mtError,[mbOk],0);
      End

    Else

      Begin
        Form2.EditCodigo.Text        := IntToStr(Pacientes[Ind].Codigo);
        Form2.EditNomePaciente.Text  :=          Pacientes[Ind].Nome;
        Form2.EditRG.Text            := IntToStr(Pacientes[Ind].RG);
        Form2.MaskEditCPF.Text       :=          Pacientes[Ind].CPF;
        Form2.EditProfissao.Text     :=          Pacientes[Ind].Profissao;
        Form2.EditEndereco.Text      :=          Pacientes[Ind].Endereco;
        Form2.EditEstado.Text        :=          Pacientes[Ind].Estado;
        Form2.EditCidade.Text        :=          Pacientes[Ind].Cidade;
        Form2.EditBairro.Text        :=          Pacientes[Ind].Bairro;
        Form2.MaskEditCEP.Text       := IntToStr(Pacientes[Ind].CEP);
        Form2.MaskEditTelefone1.Text :=          Pacientes[Ind].Telefone1;
        Form2.MaskEditTelefone2.Text :=          Pacientes[Ind].Telefone2;
      End;

   Form2.Show;

end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  Form2.EditCodigo.Text := IntToStr(Cont_Codigo);
  Form2.EditNomePaciente.Clear;
  Form2.EditRG.Clear;
  Form2.MaskEditCPF.Clear;
  Form2.EditProfissao.Clear;
  Form2.EditEndereco.Clear;
  Form2.EditEstado.Clear;
  Form2.EditCidade.Clear;
  Form2.EditBairro.Clear;
  Form2.MaskeditCEP.Clear;
  Form2.MaskEditTelefone1.Clear;
  Form2.MaskEditTelefone2.Clear;
  ShowMessage ('Pronto para novo cadastro!');
  Form2.EditNomePaciente.SetFocus;
end;

end.
