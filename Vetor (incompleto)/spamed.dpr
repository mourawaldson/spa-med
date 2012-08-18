program spamed;

uses
  Forms,
  cadastro_funcionarios in 'cadastro_funcionarios.pas' {Form1},
  cadastro_pacientes in 'cadastro_pacientes.pas' {Form2},
  menu_principal in 'menu_principal.pas' {Form3},
  splash in 'splash.pas' {Form4},
  pesquisa_pacientes in 'pesquisa_pacientes.pas' {Form5},
  unit_pacientes in 'unit_pacientes.pas',
  unit_funcionarios in 'unit_funcionarios.pas';

{$R *.res}
var X:Integer;
begin

  form4:=tform4.create(application);
  For X:=0 To 90000 Do
    Begin
  form4.show;
form4.update;
  end;


  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  form4.Hide;
  form4.Free;
  Application.Run;
end.
