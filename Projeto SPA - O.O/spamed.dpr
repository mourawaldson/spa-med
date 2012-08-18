program spamed;

uses
  Forms,
  Cadastro_Funcionarios in 'Cadastro_Funcionarios.pas' {FrmFuncionarios},
  Cadastro_Pacientes in 'Cadastro_Pacientes.pas' {FrmPacientes},
  Menu_Principal in 'Menu_Principal.pas' {FrmMenuPrincipal},
  splash in 'splash.pas' {FrmSplash},
  UPacientes in 'UPacientes.pas',
  Uclasses in 'Uclasses.pas',
  UClassePaciente in 'UClassePaciente.pas',
  Avaliacao_Medica in 'Avaliacao_Medica.pas' {FrmAvaliacaoMedica},
  UPesquisaPacientes in 'UPesquisaPacientes.pas' {FrmPesquisaPacientes},
  Login_Exames in 'Login_Exames.pas' {FrmLoginExames},
  Exames in 'Exames.pas' {FrmExames},
  Alteracao in 'Alteracao.pas' {FrmAlteracao},
  Login_Avaliacao in 'Login_Avaliacao.pas' {FrmLoginAvaliacao},
  PesquisaPacientes2 in 'PesquisaPacientes2.pas' {FrmPesquisaPacientes2};

{$R *.res}
Var X:Integer;
Begin

  FrmSplash := TFrmSplash.create(application);

  For X := 0 To 90000 Do
    Begin
      FrmSplash.Show;
      FrmSplash.Update;
    End;


  Application.Title := 'Spa Med Santa Lúcia';
  Application.CreateForm(TFrmMenuPrincipal, FrmMenuPrincipal);
  Application.CreateForm(TFrmFuncionarios, FrmFuncionarios);
  Application.CreateForm(TFrmPacientes, FrmPacientes);
  Application.CreateForm(TFrmSplash, FrmSplash);
  Application.CreateForm(TFrmAvaliacaoMedica, FrmAvaliacaoMedica);
  Application.CreateForm(TFrmPesquisaPacientes, FrmPesquisaPacientes);
  Application.CreateForm(TFrmLoginExames, FrmLoginExames);
  Application.CreateForm(TFrmExames, FrmExames);
  Application.CreateForm(TFrmAlteracao, FrmAlteracao);
  Application.CreateForm(TFrmLoginAvaliacao, FrmLoginAvaliacao);
  Application.CreateForm(TFrmPesquisaPacientes2, FrmPesquisaPacientes2);
  FrmSplash.Hide;
  FrmSplash.Free;
  Application.Run;
end.
