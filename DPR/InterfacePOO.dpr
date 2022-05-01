program InterfacePOO;

uses
  Vcl.Forms,
  uPrincipal in '..\PAS\View\uPrincipal.pas' {Form1},
  uPessoaModelFisica in '..\PAS\Model\uPessoaModelFisica.pas',
  uPessoaModelJuridica in '..\PAS\Model\uPessoaModelJuridica.pas',
  uPessoaFactory in '..\PAS\Factory\uPessoaFactory.pas',
  uPessoaController in '..\PAS\Controller\uPessoaController.pas',
  uInterfaceController in '..\PAS\Controller\uInterfaceController.pas',
  uInterfaceModel in '..\PAS\Model\uInterfaceModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
