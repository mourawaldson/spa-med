unit UClassePaciente;

interface


Type
 TPacientes = Class
 //Atributos
 Private
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

 Public
 //Métodos Acessores
 //Funções
  Function GetCodigo    : Integer;
  Function GetNome      : String;
  Function GetRg        : Integer;
  Function GetCpf       : String;
  Function GetProfissao : String;
  Function GetEndereco  : String;
  Function GetEstado    : String;
  Function GetCidade    : String;
  Function GetBairro    : String;
  Function GetCep       : Integer;
  Function GetTelefone1 : String;
  Function GetTelefone2 : String;
 //Procedimentos
  Procedure SetNome      (N: String);
  Procedure SetProfissao (P: String);
  Procedure SetEndereco  (E: String);
  Procedure SetCidade    (CI: String);
  Procedure SetEstado    (ES: String);
  Procedure SetBairro    (B: String);
  Procedure SetCep       (CE: Integer);
  Procedure SetTelefone1 (Tel1: String);
  Procedure SetTelefone2 (Tel2: String);
 //Construtor
  Constructor Create(C:Integer; N:String; R:Integer; CP:String; P:String; E:String; CI:String; ES:String; B:String; CE: Integer; Tel1:String; Tel2:String);
 //Destrutor
  Destructor Free;

End;


implementation

Constructor TPacientes.Create(C:Integer; N:String; R:Integer; CP:String; P:String; E:String; CI:String; ES:String; B:String; CE: Integer; Tel1:String; Tel2:String);
Begin
 Codigo    := C;
 Nome      := N;
 Rg        := R;
 Cpf       := CP;
 Profissao := P;
 Endereco  := E;
 Cidade    := CI;
 Estado    := ES;
 Bairro    := B;
 Cep       := CE;
 Telefone1 := Tel1;
 Telefone2 := Tel2;
End;

Destructor TPacientes.Free;
Begin
 Codigo    := 0;
 Nome      := '';
 Rg        := 0;
 Cpf       := '';
 Profissao := '';
 Endereco  := '';
 Cidade    := '';
 Estado    := '';
 Bairro    := '';
 Cep       := 0;
 Telefone1 := '';
 Telefone2 := '';
End;

Function TPacientes.GetCodigo: Integer;
Begin
 Result := Codigo;
End;

Function TPacientes.GetNome: String;
Begin
 Result := Nome;
End;

Function TPacientes.GetRg: Integer;
Begin
 Result := Rg;
End;

Function TPacientes.GetCpf: String;
Begin
 Result := Cpf;
End;

Function TPacientes.GetProfissao: String;
Begin
  Result := Profissao;
End;

Function TPacientes.GetEndereco: String;
Begin
 Result := Endereco;
End;

Function TPacientes.GetCidade: String;
Begin
 Result := Cidade;
End;

Function TPacientes.GetEstado: String;
Begin
 Result := Estado;
End;

Function TPacientes.GetBairro: String;
Begin
 Result := Bairro;
End;

Function TPacientes.GetCep: Integer;
Begin
 Result := Cep;
End;

Function TPacientes.GetTelefone1: String;
Begin
 Result := Telefone1;
End;

Function TPacientes.GetTelefone2: String;
Begin
 Result := Telefone2;
End;

Procedure TPacientes.SetNome(N:String);
Begin
 Nome := N;
End;

Procedure TPacientes.SetProfissao(P: String);
Begin
  Profissao := P;
End;

Procedure TPacientes.SetEndereco(E: String);
Begin
 Endereco := E;
End;

Procedure TPacientes.SetCidade(CI: String);
Begin
 Cidade := CI;
End;

Procedure TPacientes.SetEstado(ES: String);
Begin
 Estado := ES;
End;

Procedure TPacientes.SetBairro(B: String);
Begin
 Bairro := B;
End;

Procedure TPacientes.SetCep(CE: Integer);
Begin
 Cep := CE;
End;

Procedure TPacientes.SetTelefone1(Tel1: String);
Begin
 Telefone1 := Tel1;
End;

Procedure TPacientes.SetTelefone2(Tel2: String);
Begin
 Telefone2 := Tel2;
End;

end.
 