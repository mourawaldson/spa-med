unit Avaliacao_Medica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  TFrmAvaliacaoMedica = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    EditCodigo: TEdit;
    EditNomePaciente: TEdit;
    EditRG: TEdit;
    Label3: TLabel;
    MaskEditData: TMaskEdit;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    ListBox1: TListBox;
    EditTexto: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAvaliacaoMedica: TFrmAvaliacaoMedica;

implementation
Uses UClassePaciente, Cadastro_Pacientes;
{$R *.dfm}

procedure TFrmAvaliacaoMedica.BitBtn1Click(Sender: TObject);
begin
  ListBox1.Items.Add(MaskEditData.Text + ' - ' + EditTexto.Text);
end;

procedure TFrmAvaliacaoMedica.BitBtn2Click(Sender: TObject);
begin
  If (ListBox1.Selected[ListBox1.ItemIndex] <> False)  then
     ListBox1.Items.Delete(ListBox1.ItemIndex);
end;

end.
