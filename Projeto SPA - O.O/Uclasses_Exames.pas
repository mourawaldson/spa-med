unit Uclasses_Exames;

interface

Type

TExames = Class

 Private
  Codigo: Integer;
  Exame: String;
 Public
  Function getCodigo: Integer;
  Function getExame: String;
  Procedure setExame(E: String);
  Constructor Create(C: Integer; E: String);
  Destructor Free;
    //destructor Free; override;
end;

implementation

Constructor TExames.Create(C:Integer; E: String);
begin
 Codigo:= C;
 Exame:= E;
end;

destructor TExames.Free;
begin
Codigo:=0;
Exame:='';
end;

{Destructor TExames.Free;
begin
 {Codigo:= 0;
 Exame:= '';}


Function TExames.getCodigo: Integer;
begin
 Result:= Codigo;
end;

Function TExames.getExame: String;
begin
 Result:= Exame;
end; 

Procedure TExames.setExame(E: String);
begin
 Exame:= E;
end;

end.
