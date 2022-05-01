unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  uInterfaceModel;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    edtNome: TEdit;
    edtSobreNome: TEdit;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    Fpessoa: iPessoa;
    procedure ExibirNome(Value: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uPessoaController, uInterfaceController;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Fpessoa
    .Nome(edtNome.Text)
    .SobreNome(edtSobreNome.Text)
    .Display(ExibirNome)
    .NomeCompleto;

  // Retorna o Get do nome
  ShowMessage( Fpessoa.Nome );
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: Fpessoa:= TPessoaController.NovaInstancia.Pessoa(tpFisica);
    1: Fpessoa:= TPessoaController.NovaInstancia.Pessoa(tpJuridica);
  end;
end;

procedure TForm1.ExibirNome(Value: String);
begin
  Memo1.Lines.Add(Value);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Verifica o varamento de memoria
  ReportMemoryLeaksOnShutdown:= true;
end;

end.
