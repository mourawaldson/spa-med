unit unit_pacientes;

interface

uses
  Cadastro_Pacientes, SysUtils, Dialogs;

Procedure Armazenar(Var I: Integer; COD: Integer; N: String; R: Integer; C: String; P: String; E: String; Est: String; Cid: String; B: String; Ce: Integer; Tel1: String; Tel2: String; Var Vetor_P: TVetor_Pacientes);
Function Pesquisar(Codigo: Integer; Var Vetor_P : TVetor_Pacientes): Integer;
Procedure Alterar(Var I: Integer; COD: Integer; N: String; R: Integer; C: String; P: String; E: String; Est: String; Cid: String; B: String; Ce: Integer; Tel1: String; Tel2: String; Var Vetor_P: TVetor_Pacientes);
Procedure Excluir(I: Integer; Var Vetor_P: TVetor_Pacientes);
Procedure Ordenar(Var Vetor_P : TVetor_Pacientes);
Function Apenas_Numeros(Campo: String):Boolean;
Function Apenas_Letras(Campo: String):Boolean;
Function ValidCPF(sCPF: String):String;
Function iif(lTest:Boolean; vExpr1,vExpr2:Variant):Variant;

implementation


//Procedimento de cadastrar.
Procedure Armazenar(Var I: Integer; COD: Integer; N: String; R: Integer; C: String; P: String; E: String; Est: String; Cid: String; B: String; Ce: Integer; Tel1: String; Tel2: String; Var Vetor_P: TVetor_Pacientes);
  Begin
    SetLength(Vetor_P, I + 1);
    Vetor_P[I].Codigo    := COD;
    Vetor_P[I].Nome      := N;
    Vetor_P[I].RG        := R;
    Vetor_P[I].CPF       := C;
    Vetor_P[I].Profissao := P;
    Vetor_P[I].Endereco  := E;
    Vetor_P[I].Estado    := Est;
    Vetor_P[I].Cidade    := Cid;
    Vetor_P[I].Bairro    := B;
    Vetor_P[I].CEP       := Ce;
    Vetor_P[I].Telefone1 := Tel1;
    Vetor_P[I].Telefone2 := Tel2;
    I := I + 1;
  End;


//Função para pesquisar pelo código.
Function Pesquisar(Codigo: Integer; Var Vetor_P : TVetor_Pacientes): Integer;

Var

 Aux_COD : Integer;
 I       : Integer;

Begin

  For I:= 0 To Length(Vetor_P)-1 Do
    Begin

        Aux_COD:= Vetor_P[I].Codigo;

      If (Codigo = Aux_COD) Then
        Begin
          Result := I;
          Exit;
        End;

    End;

  Result := -1;

End;


//Procedimento para alteração dos dados.
Procedure Alterar(Var I: Integer; COD: Integer; N: String; R: Integer; C: String; P: String; E: String; Est: String; Cid: String; B: String; Ce: Integer; Tel1: String; Tel2: String; Var Vetor_P: TVetor_Pacientes);
  Begin
    Vetor_P[I].Codigo    := COD;
    Vetor_P[I].Nome      := N;
    Vetor_P[I].RG        := R;
    Vetor_P[I].CPF       := C;
    Vetor_P[I].Profissao := P;
    Vetor_P[I].Endereco  := E;
    Vetor_P[I].Estado    := Est;
    Vetor_P[I].Cidade    := Cid;
    Vetor_P[I].Bairro    := B;
    Vetor_P[I].CEP       := Ce;
    Vetor_P[I].Telefone1 := Tel1;
    Vetor_P[I].Telefone2 := Tel2;
  End;


//procedimento para excluir e classificar funcionario
Procedure Excluir(I: Integer; Var Vetor_P: TVetor_Pacientes);
  Begin
    Vetor_P[I].Codigo    :=0;
    Vetor_P[I].Nome      :='';
    Vetor_P[I].Rg        :=0;
    Vetor_P[I].CPF       :='';
    Vetor_P[I].Profissao :='';
    Vetor_P[I].Endereco  :='';
    Vetor_P[I].Cidade    :='';
    Vetor_P[I].Estado    :='';
    Vetor_P[I].Bairro    :='';
    Vetor_P[I].CEP       :=0;
    Vetor_P[I].Telefone1 :='';
    Vetor_P[I].Telefone2 :='';
  End;


//Procedimento para ordenar e classificar.
Procedure Ordenar(Var Vetor_P : TVetor_Pacientes);

Var

 Pac_Aux : TPacientes;
 I       : Integer;
 Y       : Integer;

  Begin
    For I:= 0 To Ind-2 Do

      For Y:= I + 1 To Ind-1 Do

        If (Vetor_P[I].Codigo > Vetor_P[Y].Codigo) Then
          Begin
            Pac_Aux    := Vetor_P[I];
            Vetor_P[I] := Vetor_P[Y];
            Vetor_P[Y] := Pac_Aux;
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
Function Apenas_Letras(Campo: String):Boolean;
Var
 I: Integer;

  Begin

    Campo := Trim(Campo);
    Campo := AnsiUpperCase(Campo);

    For I := 1 To Length(Campo) Do
     Begin
      If (Copy(Campo, I, 1) < 'A') or (Copy(Campo, I, 1) > 'Z') Then
        Begin
          Result := True;
          Exit;
        End
     End;

    Result := False;

  End;

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
