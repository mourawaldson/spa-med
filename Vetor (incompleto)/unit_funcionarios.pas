unit unit_funcionarios;

interface

uses cadastro_funcionarios, SysUtils, Dialogs;

Procedure Armazenar(Var I: Integer; COD: Integer; CR: integer; N: string; R: integer; C: string; T1: string; T2: string; E: string; ES: string; CI: string;  BA: string; CE: integer;  Var Vetor_F: TVetor_Funcionario);
Function Consultar(codigo: integer; Var Vetor_F:TVetor_Funcionario): Integer;
Procedure Alterar(Var I: Integer; COD: Integer; CR: integer; N: string; R: integer; C: string; T1: string; T2: string; E: string; ES: string; CI: string;  BA: string; CE: integer;  Var Vetor_F: TVetor_Funcionario);
Procedure Excluir(I: integer; Var Vetor_F:TVetor_Funcionario);
Procedure Reordenar(Var Vetor_F:TVetor_Funcionario);
function ValidCPF(sCPF: string):string;
function iif(lTest:Boolean; vExpr1,vExpr2:Variant):Variant;
Function Apenas_Numeros(Campo: String):Boolean;
Function Apenas_Letras(Campo: String):Boolean;

implementation
//procedimento para cadastrar funconarios
Procedure Armazenar(Var I: Integer; COD: Integer; CR: integer; N: string; R: integer; C: string; T1: string; T2: string; E: string; ES: string; CI: string;  BA: string; CE: integer;  Var Vetor_F: TVetor_Funcionario);
 Begin
  SetLength(Vetor_F,I+1);
  Vetor_F[I].Codigo:= COD;
  Vetor_F[I].crm:= CR;
  Vetor_F[I].nome:= N;
  Vetor_F[I].rg:= R;
  Vetor_F[I].cpf:= C;
  Vetor_F[I].telefone1:= T1;
  Vetor_F[I].telefone2:= T2;
  Vetor_F[I].endereco:= E;
  Vetor_F[I].estado:= ES;
  Vetor_F[I].cidade:= CI;
  Vetor_F[I].bairro:= BA;
  Vetor_F[I].cep:= CE;
  I:=I+1;
 end;
          
//função para localizar funconario pelo código
Function Consultar(codigo: integer; Var Vetor_F:TVetor_Funcionario): Integer;
var
 cod_aux: integer;
 I: Integer;
Begin
    For I:= 0 to length(Vetor_F)-1 do
      Begin
        cod_aux:= Vetor_F[I].Codigo;
        If(codigo = cod_aux)then
            begin
              Result:=I;
              exit;
            end;
      End;
      Result:=-1;
end;

//procedimento para alterar dados do funcionario
Procedure Alterar(Var I: Integer; COD: Integer; CR: integer; N: string; R: integer; C: string; T1: string; T2: string; E: string; ES: string; CI: string;  BA: string; CE: integer;  Var Vetor_F: TVetor_Funcionario);
Begin
  SetLength(Vetor_F,I+1);
  Vetor_F[I].Codigo:= COD;
  Vetor_F[I].crm:= CR;
  Vetor_F[I].nome:= N;
  Vetor_F[I].rg:= R;
  Vetor_F[I].cpf:= C;
  Vetor_F[I].telefone1:= T1;
  Vetor_F[I].telefone2:= T2;
  Vetor_F[I].endereco:= E;
  Vetor_F[I].estado:= ES;
  Vetor_F[I].cidade:= CI;
  Vetor_F[I].bairro:= BA;
  Vetor_F[I].cep:= CE;
  I:=I+1;
end;

//procedimento para excluir e classificar funcionario
Procedure Excluir(I: integer; Var Vetor_F:TVetor_Funcionario);

begin
   Vetor_F[I].Codigo:=0;
   Vetor_F[I].nome:='';
   Vetor_F[I].rg:=0;
   Vetor_F[I].cpf:='';
   Vetor_F[I].endereco:='';
   Vetor_F[I].cidade:='';
   Vetor_F[I].estado:='';
   Vetor_F[I].bairro:='';
   Vetor_F[I].cep:=0;
   Vetor_F[I].telefone1:='';
   Vetor_F[I].telefone2:='';
   Vetor_F[I].crm:=0;
end;

//procedimento para remanejar o vetor
Procedure Reordenar(Var Vetor_F:TVetor_Funcionario);
var
 I: integer;
 Y: integer;
 Func_aux:TFuncionario;
 Begin
  For I:= 0 to Ind-2 do
   For Y:= I+1 to Ind-1 do
    if(Vetor_F[I].Codigo > Vetor_F[Y].Codigo)then
     begin
      Func_aux:=Vetor_F[I];
      Vetor_F[I]:=Vetor_F[Y];
      Vetor_F[Y]:=Func_aux;
     end;

 end;

//Função1 para validar cpf
function ValidCPF(sCPF: string):string;
var
   sDigs, sVal  : string;
   iSTot, iSTot2: integer;
   i: integer;
begin
   Result := '---';
   sCPF   := Trim(sCPF);
   iSTot  := 0;
   iSTot2 := 0;
   if Length(sCPF) = 11 then
   begin
      for i := 9 downto 1 do
      begin
         iSTot  := iSTot  + StrToInt(Copy(sCPF,i,1)) * (11-i);
         iSTot2 := iSTot2 + StrToInt(Copy(sCPF,i,1)) * (12-i);
      end;
      iSTot  := iSTot mod 11;
      sDigs  := sDigs + IntToStr(iif(iSTot < 2, 0, 11-iSTot));

      iSTot2 := iSTot2 + 2*StrToInt(sDigs);
      isTot2 := iSTot2 mod 11;
      sDigs  := sDigs + IntToStr(iif(iSTot2 < 2, 0, 11-iSTot2));

      sVal   := Copy(sCPF,10,2);
      Result := iif(sDigs = sVal,'',sDigs);
   end
end;
//Função2 para validra cpg
function iif(lTest:Boolean; vExpr1,vExpr2:Variant):Variant;
begin
   if lTest then
     Result := vExpr1
   else
     Result := vExpr2
end;

//Procedimento para testar se só possuem numeros no edit
Function Apenas_Numeros(Campo: String):Boolean;
var
 I: integer;
  begin
    For I := 1 To Length(Campo) Do
     Begin
     Campo:=Trim(Campo);
     Campo := UpperCase(campo);

      If (Copy(campo, I, 1) < '0') Or (Copy(campo, I, 1) > '9') Then
        Begin
          Result:=True;
          Exit;
        end;
     End;
     Result:=False;
  end;

//Procedimento para testar se só possuem letras no edit
Function Apenas_Letras(Campo: String):Boolean;
var
 I: integer;
  begin
    For I := 1 To Length(Campo) Do
     Begin
     Campo:=Trim(Campo);
     Campo := AnsiUpperCase(campo);

      If (Copy(campo, I, 1) < 'A') Or (Copy(campo, I, 1) > 'Z') Then
        Begin
          Result:=True;
          Exit;
        end;
     End;
     Result:=False;
  end;

end.
