unit PesquisaPacientes2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmPesquisaPacientes2 = class(TForm)
    BitBtn1: TBitBtn;
    EditCodPaciente: TEdit;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    procedure EditCodPacienteKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisaPacientes2: TFrmPesquisaPacientes2;
  Ind : Integer;
implementation

Uses UPacientes, Avaliacao_Medica, Cadastro_Pacientes;
{$R *.dfm}

procedure TFrmPesquisaPacientes2.EditCodPacienteKeyPress(Sender: TObject;
  var Key: Char);
begin
If not (Key in ['0'..'9',#8]) Then
Key := #0;
end;

procedure TFrmPesquisaPacientes2.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesquisaPacientes2.BitBtn1Click(Sender: TObject);
begin

  Ind := PesquisaCodigo(StrToInt(EditCodPaciente.Text));

  If (Ind = -1) Then
    Begin
      ShowMessage('Código não cadastrado!');
      EditCodPaciente.Clear;
      EditCodPaciente.SetFocus;
      Exit;
    End

  Else

    Begin
      FrmAvaliacaoMedica.Show;
      FrmAvaliacaoMedica.EditCodigo.Text        := IntToStr(Pacientes[Ind].GetCodigo);
      FrmAvaliacaoMedica.EditNomePaciente.Text  :=          Pacientes[Ind].GetNome;
      FrmAvaliacaoMedica.EditRG.Text            := IntToStr(Pacientes[Ind].GetRG);
      FrmPesquisaPacientes2.Close;
    End;

end;

end.
