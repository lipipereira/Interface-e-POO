unit uInterfaceModel;

interface

type
  {Crianção de um evento}
  TEvDisplay = procedure (Value: String) of Object;

  iPessoa = interface
    ['{F56F8623-CB64-4EDC-8745-883B17AAFA29}']  // Para gera a assinatura aperta Control + Shirt + G
    function Nome( Value: String ): iPessoa; overload;  // Metodo Set
    function Nome: String; overload; // Metodos Get
    function SobreNome( Value: String ): iPessoa;
    function NomeCompleto: iPessoa;
    // Display
    function Display( Value: TEvDisplay ): iPessoa;
  end;

  iPessoaFactory = interface
    ['{14CFD88E-ABAB-4CDD-A508-FD1C26BC3888}']
    function PessoaFisica: iPessoa;
    function PessoaJuridica: iPessoa;
  end;

implementation

end.
