unit Uclasses;

interface


Type
 TFuncionario = Class
 //atributos
 Private
  Codigo:      integer;
  Funcao:      string;
  Nome:        string[40];
  Rg:          integer;
  Cpf:         string[11];
  Endereco:    string[50];
  Cidade:      string[20];
  Estado:      string[2];
  Bairro:      string[15];
  Cep:         Integer;
  Telefone1:   string[10];
  Telefone2:   string[10];
  Crm:         integer;

 Public
 //métodos acessores
 //funções
  Function getCodigo: Integer;
  Function getFuncao: String;
  Function getNome: String;
  Function getRg: Integer;
  Function getCpf: String;
  Function getEndereco: String;
  Function getCidade: String;
  Function getEstado: String;
  Function getBairro: String;
  Function getCep: Integer;
  Function getTelefone1: String;
  Function getTelefone2: String;
  Function getCrm: Integer;
 //procedimentos
  Procedure setNome(N: String);
  Procedure setEndereco(E: String);
  Procedure setCidade(C: String);
  Procedure setEstado(ES: String);
  Procedure setBairro(B: String);
  Procedure setCep(CE: Integer);
  Procedure setTelefone1(T1: String);
  Procedure setTelefone2(T2: String);
 //construtor
  Constructor Create(C:Integer; F:String; N:String; R:Integer; CP:String; E:String; CI:String; ES:String; B:String; CE: Integer; T1:String; T2:String; CR:Integer);
 //destrutor
  Destructor Free;
end;


implementation

Constructor TFuncionario.Create(C:Integer; F:String; N:String; R:Integer; CP:String; E:String; CI:String; ES:String; B:String; CE: Integer; T1:String; T2:String; CR:Integer);
begin
 Codigo:=     C;
 Funcao:=     F;
 Nome:=       N;
 Rg:=         R;
 Cpf:=       CP;
 Endereco:=   E;
 Cidade:=     CI;
 Estado:=    ES;
 Bairro:=     B;
 Cep:=       CE;
 Telefone1:= T1;
 Telefone2:= T2;
 Crm:=       CR;
end;

Destructor TFuncionario.Free;
begin
 Codigo:=     0;
 Funcao:=    '';
 Nome:=      '';
 Rg:=         0;
 Cpf:=       '';
 Endereco:=  '';
 Cidade:=    '';
 Estado:=    '';
 Bairro:=    '';
 Cep:=        0;
 Telefone1:= '';
 Telefone2:= '';
 Crm:=        0;
end;

Function TFuncionario.getCodigo: Integer;
begin
 Result:=Codigo;
end;

Function TFuncionario.getFuncao: String;
begin
 Result:=Funcao;
end;

Function TFuncionario.getNome: String;
begin
 Result:=Nome;
end;

Function TFuncionario.getRg: Integer;
begin
 Result:=Rg;
end;

Function TFuncionario.getCpf: String;
begin
 Result:=Cpf;
end;

Function TFuncionario.getEndereco: String;
begin
 Result:=Endereco;
end;

Function TFuncionario.getCidade: String;
begin
 Result:=Cidade;
end;

Function TFuncionario.getEstado: String;
begin
 Result:=Estado;
end;

Function TFuncionario.getBairro: String;
begin
 Result:=Bairro;
end;

Function TFuncionario.getCep: Integer;
begin
 Result:=Cep;
end;

Function TFuncionario.getTelefone1: String;
begin
 Result:=Telefone1;
end;

Function TFuncionario.getTelefone2: String;
begin
 Result:=Telefone2;
end;

Function TFuncionario.getCrm: Integer;
begin
 Result:=Crm;
end;

Procedure TFuncionario.setNome(N:String);
begin
 Nome:=N;
end;

Procedure TFuncionario.setEndereco(E: String);
begin
 Endereco:=E;
end;

Procedure TFuncionario.setCidade(C: String);
begin
 Cidade:=C;
end;

Procedure TFuncionario.setEstado(ES: String);
begin
 Estado:=ES;
end;

Procedure TFuncionario.setBairro(B: String);
begin
 Bairro:=B;
end;

Procedure TFuncionario.setCep(CE: Integer);
begin
 Cep:=CE;
end;

Procedure TFuncionario.setTelefone1(T1: String);
begin
 Telefone1:=T1;
end;

Procedure TFuncionario.setTelefone2(T2: String);
begin
 Telefone2:=T2;
end;  



end.
