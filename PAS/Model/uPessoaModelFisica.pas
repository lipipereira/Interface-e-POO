unit uPessoaModelFisica;

interface

uses
  uInterfaceModel;

type
  TPessoaModelFisica = class( TInterfacedObject, iPessoa )
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

constructor TPessoaModelFisica.Create;
begin

end;

destructor TPessoaModelFisica.Destroy;
begin

  inherited;
end;

function TPessoaModelFisica.Display(Value: TEvDisplay): iPessoa;
begin
  Result:= self;
  FDisplay:= Value;
end;

// Metodo Set
function TPessoaModelFisica.Nome(Value: String): iPessoa;
begin
  Result:= Self;
  FNome:= Value;
end;

// Metodo Get
function TPessoaModelFisica.Nome: String;
begin
  Result:= FNome;
end;

function TPessoaModelFisica.NomeCompleto: iPessoa;
begin
  Result:= Self;
  FDisplay(FNome + ' ' + FSobreNome);
end;

class function TPessoaModelFisica.NovaInstancia: iPessoa;
begin
  Result:= Self.Create;
end;

// Metodo Set
function TPessoaModelFisica.SobreNome(Value: String): iPessoa;
begin
  Result:= Self;
  FSobreNome:= Value;
end;

end.
