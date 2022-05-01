unit uInterfaceController;

interface

uses
  uInterfaceModel;

type
  TTypePessoa = (tpFisica, tpJuridica);

  icontrollerPessoa = interface
    ['{BF9AC9DB-91E9-42A3-8155-A19341E4E75B}']
    function Pessoa( Value: TTypePessoa): iPessoa;
  end;

implementation

end.
