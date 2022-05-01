unit uPessoaModelJuridica;

interface

uses
  uInterfaceModel;

type
  TPessoaModelJuridica = class( TInterfacedObject, iPessoa )
  private
    FNome: String;
    FSobreNome: String;
    FDisplay: TEvDisplay;

    function Nome( Value: String ): iPessoa; overload;
    function Nome: String; overload;
    function SobreNome( Value: String ): iPessoa;
    function NomeCompleto: iPessoa;
    function Display( Value: TEvDisplay ): iPessoa;
  public
    constructor Create;
    destructor Destroy; override;
    { Class function, Serve para ser executado antes de cria a classe, porem não pode acessa os atributos da internos da classe }
    class function NovaInstancia: iPessoa;
  end;

implementation

{ TPessoaModel }

constructor TPessoaModelJuridica.Create;
begin

end;

destructor TPessoaModelJuridica.Destroy;
begin

  inherited;
end;

function TPessoaModelJuridica.Display(Value: TEvDisplay): iPessoa;
begin
  Result:= Self;
  FDisplay:= Value;
end;

// Metodo Set
function TPessoaModelJuridica.Nome(Value: String): iPessoa;
begin
  Result:= Self;
  FNome:= Value;
end;

function TPessoaModelJuridica.Nome: String;
begin
  Result:= FNome;
end;

function TPessoaModelJuridica.NomeCompleto: iPessoa;
begin
  Result:= Self;
  FDisplay(FNome + ' ' + FSobreNome + ' LTDA ME ');
end;

class function TPessoaModelJuridica.NovaInstancia: iPessoa;
begin
  Result:= Self.Create;
end;

// Metodo Set
function TPessoaModelJuridica.SobreNome(Value: String): iPessoa;
begin
  Result:= Self;
  FSobreNome:= Value;
end;

end.
