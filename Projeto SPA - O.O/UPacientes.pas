unit UPacientes;

interface

uses
  Cadastro_Pacientes, UClassePaciente, Cadastro_Funcionarios, SysUtils, Dialogs;

 Function iif(lTest:Boolean; vExpr1,vExpr2:Variant):Variant;
 Function Pesquisar(Codigo: Integer): Integer;
 Function Apenas_Numeros(Campo: String):Boolean;
 Function Apenas_Letras(palavra: String):Boolean;
 Function PesquisaCRM(CRM: Integer): Integer;
 Function PesquisaCodigo(Cod: Integer): Integer;
 Function ValidCPF(sCPF: String):String;

 Procedure Armazenar(Var I: Integer; C:Integer; N:String; R:Integer; CP:String; P:String; E:String; CI:String; ES:String; B:String; CE: Integer; Tel1:String; Tel2:String);
 Procedure Alterar(Var I: Integer; N: String; P: String; E: String; Es: String; CI: String; B: String; Ce: Integer; Tel1: String; Tel2: String);
 Procedure Excluir(I: Integer);
 Procedure Ordenar();

implementation

{ Nome: Armazenar
  Autor: Waldson Cabral
  Data: 05/06/2006
  Objetivo: Armazenar elementos do vetor Pacientes
  Parametro de entrada: Inteiros - Representando Código, RG e CEP.
                        Strings - Representando Nome, CPF, Profissão, Endereço, Estado,
                                                Cidade, Bairro, Telefone1 e Telefone 2.
  Parametro de saida: Não tem}

Procedure Armazenar(Var I: Integer; C:Integer; N:String; R:Integer; CP:String; P:String; E:String; CI:String; ES:String; B:String; CE: Integer; Tel1:String; Tel2:String);
 Begin
  SetLength(Pacientes,I+1);
  Pacientes[I]:=TPacientes.Create(C,N,R,CP,P,E,CI,ES,B,CE,Tel1,Tel2);
  I:=I+1;
 end;


//Função para pesquisar pelo código.
Function Pesquisar(Codigo: Integer): Integer;

Var

 Aux_COD : Integer;
 I       : Integer;

Begin

  For I:= 0 To Length(Pacientes)-1 Do
    Begin

        Aux_COD:= Pacientes[I].GetCodigo;

      If (Codigo = Aux_COD) Then
        Begin
          Result := I;
          Exit;
        End;

    End;

  Result := -1;

End;


//Função para pesquisar o CRM.
Function PesquisaCRM(CRM: Integer): Integer;
Var
 CRM_Aux : Integer;
 X       : Integer;

  Begin
    For X := 0 To Length(Funcionario)-1 Do

      Begin

        CRM_Aux := Funcionario[X].GetCRM;

        If (CRM = CRM_Aux) Then
          Begin
            Result := X;
            Exit;
          End;

      End;

   Result := -1;

  End;


//Função para pesquisar o código do paciente para avaliação médica.
Function PesquisaCodigo(Cod: Integer): Integer;
Var
 Cod_Aux : Integer;
 X       : Integer;

  Begin
    For X := 0 To Length(Pacientes)-1 Do

      Begin

        Cod_Aux := Pacientes[X].GetCodigo;

        If (Cod = Cod_Aux) Then
          Begin
            Result := X;
            Exit;
          End;

      End;

   Result := -1;

  End;


//Procedimento para alteração dos dados.
Procedure Alterar(Var I: Integer; N: String; P: String; E: String; Es: String; CI: String; B: String; Ce: Integer; Tel1: String; Tel2: String);
  Begin
    Pacientes[I].SetNome(N);
    Pacientes[I].SetProfissao(P);
    Pacientes[I].SetEndereco(E);
    Pacientes[I].SetEstado(Es);
    Pacientes[I].SetCidade(CI);
    Pacientes[I].SetBairro(B);
    Pacientes[I].SetCEP(Ce);
    Pacientes[I].SetTelefone1(Tel1);
    Pacientes[I].SetTelefone2(Tel2);
  End;


//procedimento para excluir e classificar funcionario
Procedure Excluir(I: Integer);
  Begin
    Pacientes[I].Free;
  End;


//Procedimento para ordenar e classificar.
Procedure Ordenar();

Var

 Pac_Aux : TPacientes;
 I       : Integer;
 Y       : Integer;

  Begin
    For I:= 0 To Ind-2 Do

      For Y:= I + 1 To Ind-1 Do

        If (Pacientes[I].GetCodigo > Pacientes[Y].GetCodigo) Then
          Begin
            Pac_Aux    := Pacientes[I];
            Pacientes[I] := Pacientes[Y];
            Pacientes[Y] := Pac_Aux;
          End;
  End;



//Função apenas numeros.
Function Apenas_Numeros(Campo: String):Boolean;
Var
 I: Integer;

  Begin

    Campo := Trim(Campo);
    Campo := UpperCase(Campo);

    For I := 1 To Length(Campo) Do
     Begin
      If (Copy(Campo, I, 1) < '0') Or (Copy(Campo, I, 1) > '9') Then
        Begin
          Result := True;
          Exit;
        End
     End;

    Result := False;

  End;



//Função apenas letras.
Function Apenas_Letras(palavra:String):boolean;
Var
  I: Integer;
begin
  Palavra := AnsiUpperCase(Trim(Palavra));
  I       := 1;
  While (I <= Length(Palavra)) do
    Begin

      If Not (Copy(Palavra,I,1) >= 'A') And (Copy(Palavra,I,1) <= 'Z') Then
        Begin

          If (Copy(Palavra,I,1) = ' ') Then
            Begin
              I := I + 1;
            End
          Else
            Begin
              Result := True;
              Exit;
            End;
        End

      Else
        Begin
          I := I + 1;
        End;

    End;

  Result := False;

end;



//Função para validar cpf
Function ValidCPF(sCPF: String):String;
Var
   sDigs, sVal  : string;
   iSTot, iSTot2: integer;
   i: integer;

Begin

   Result := '---';
   sCPF   := Trim(sCPF);
   iSTot  := 0;
   iSTot2 := 0;

   If Length(sCPF) = 11 Then

   Begin

      For i := 9 Downto 1 Do

      Begin
        iSTot  := iSTot  + StrToInt(Copy(sCPF,i,1)) * (11-i);
        iSTot2 := iSTot2 + StrToInt(Copy(sCPF,i,1)) * (12-i);
      End;

      iSTot  := iSTot Mod 11;
      sDigs  := sDigs + IntToStr(iif(iSTot < 2, 0, 11-iSTot));

      iSTot2 := iSTot2 + 2*StrToInt(sDigs);
      isTot2 := iSTot2 Mod 11;
      sDigs  := sDigs + IntToStr(iif(iSTot2 < 2, 0, 11-iSTot2));

      sVal   := Copy(sCPF,10,2);
      Result := iif(sDigs = sVal,'',sDigs);

   End

end;

Function iif(lTest:Boolean; vExpr1,vExpr2:Variant):Variant;
begin
  If lTest Then
    Result := vExpr1
  Else
    Result := vExpr2
end;

end.
