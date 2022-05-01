unit uPessoaFactory;

interface

uses
  uInterfaceModel;

type
  TPessoaModelFactory = class( TInterfacedObject, iPessoaFactory )
  private
  public
    constructor Create;
    destructor Destroy; override;
    { Class function, Serve para ser executado antes de cria a classe, porem não pode acessa os atributos da internos da classe }
    class function NovaInstancia: iPessoaFactory;

    function PessoaFisica: iPessoa;
    function PessoaJuridica: iPessoa;
  end;

implementation

uses
  uPessoaModelFisica, uPessoaModelJuridica;

{ TPessoaModelFactory }

constructor TPessoaModelFactory.Create;
begin

end;

destructor TPessoaModelFactory.Destroy;
begin

  inherited;
end;



class function TPessoaModelFactory.NovaInstancia: iPessoaFactory;
begin
  Result:= Self.Create;
end;

function TPessoaModelFactory.PessoaFisica: iPessoa;
begin
  Result:= TPessoaModelFisica.NovaInstancia;
end;

function TPessoaModelFactory.PessoaJuridica: iPessoa;
begin
  Result:= TPessoaModelJuridica.NovaInstancia;
end;

end.

