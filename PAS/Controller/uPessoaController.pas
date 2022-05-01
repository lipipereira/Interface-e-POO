unit uPessoaController;

interface

uses
  uInterfaceController, uInterfaceModel;

type
  TPessoaController = class(TInterfacedObject, icontrollerPessoa)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function NovaInstancia: icontrollerPessoa;

      function Pessoa( Value: TTypePessoa): iPessoa;
  end;

implementation

uses
  uPessoaFactory;

{ TPessoaController }

constructor TPessoaController.Create;
begin

end;

destructor TPessoaController.Destroy;
begin

  inherited;
end;

class function TPessoaController.NovaInstancia: icontrollerPessoa;
begin
  result:= Self.Create;
end;

function TPessoaController.Pessoa(Value: TTypePessoa): iPessoa;
begin
  case Value of
    tpFisica: Result:= TPessoaModelFactory.NovaInstancia.PessoaFisica;
    tpJuridica: Result:= TPessoaModelFactory.NovaInstancia.PessoaJuridica;
  end;
end;

end.
