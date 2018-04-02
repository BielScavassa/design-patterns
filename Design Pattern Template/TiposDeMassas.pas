unit TiposDeMassas;

interface

uses
  System.SysUtils, PadocaClass;

type
  TMassaSalgada = class(TPadoca)
  protected
    procedure TemperaturaDoForno; override;
    procedure AddIngredientes; override;
  end;
  TMassaDoce = class(TPadoca)
  protected
    procedure AddIngredientes; override;
    procedure TemperaturaDoForno; override;
  end;

implementation

{ TMassas }

procedure TMassaSalgada.AddIngredientes;
begin
  inherited;
  Writeln('Fermento, Sal, �gua, Farinha, Tempero Especial...');
end;

procedure TMassaSalgada.TemperaturaDoForno;
begin
  inherited;
  Writeln('Temperatura de 230� Graus...');
end;

{ TMassaDoce }

procedure TMassaDoce.AddIngredientes;
begin
  inherited;
  Writeln('Farinha, A�ucar, Creme, Sal, Fermento, Leite Condensado, Tempero Especial...');
end;

procedure TMassaDoce.TemperaturaDoForno;
begin
  inherited;
  Writeln('Temperatura de 180� Graus...');
end;

end.
