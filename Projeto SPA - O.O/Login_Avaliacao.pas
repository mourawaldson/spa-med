unit Login_Avaliacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmLoginAvaliacao = class(TForm)
    Label1: TLabel;
    EditNrCrm: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure EditNrCrmKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLoginAvaliacao: TFrmLoginAvaliacao;
  Ind : Integer;

implementation

uses UPacientes, Exames, Login_Exames, Avaliacao_Medica,
  PesquisaPacientes2;

{$R *.dfm}

procedure TFrmLoginAvaliacao.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmLoginAvaliacao.EditNrCrmKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9',#8]) Then
Key := #0;
end;

procedure TFrmLoginAvaliacao.BitBtn1Click(Sender: TObject);
begin

  Ind := PesquisaCRM(StrToInt(EditNrCrm.Text));

  If (Ind = -1) Or (StrToInt(EditNrCrm.Text) = 0) Then
    Begin
      ShowMessage('CRM não cadastrado!');
      EditNrCrm.Clear;
      EditNrCrm.SetFocus;
      Exit;
    End

  Else

    Begin
      FrmPesquisaPacientes2.Show;
      FrmLoginAvaliacao.Close;
    End;
end;

end.
