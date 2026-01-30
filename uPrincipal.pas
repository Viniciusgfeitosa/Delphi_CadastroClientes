unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

type
  TfrmPrincipal = class(TForm)
    lblNome: TLabel;
    btnNovo: TButton;
    edtNome: TEdit;
    lblCPF: TLabel;
    edtCPF: TEdit;
    lblTelefone: TLabel;
    edtTelefone: TEdit;
    lblEmail: TLabel;
    edtEmail: TEdit;
    btnSalvar: TButton;
    btnLimpar: TButton;
    sgClientes: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnNovoClick(Sender: TObject);
begin
  btnLimparClick(Sender);
end;


procedure TfrmPrincipal.btnSalvarClick(Sender: TObject);
var
  linha: Integer;
begin
  if Trim(edtNome.Text) = '' then
  begin
    ShowMessage('Informe o nome');
    Exit;
  end;

  linha := sgClientes.RowCount;
  sgClientes.RowCount := linha + 1;

  sgClientes.Cells[0, linha] := edtNome.Text;
  sgClientes.Cells[1, linha] := edtCPF.Text;
  sgClientes.Cells[2, linha] := edtTelefone.Text;
  sgClientes.Cells[3, linha] := edtEmail.Text;

  ShowMessage('Cliente salvo com sucesso!');
end;


procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  sgClientes.Cells[0,0] := 'Nome';
  sgClientes.Cells[1,0] := 'CPF';
  sgClientes.Cells[2,0] := 'Telefone';
  sgClientes.Cells[3,0] := 'Email';


  sgClientes.RowCount := 1;
  sgClientes.Row := 0;
end;

procedure TfrmPrincipal.btnLimparClick(Sender: TObject);
begin
  edtNome.Clear;
  edtCPF.Clear;
  edtTelefone.Clear;
  edtEmail.Clear;
  edtNome.SetFocus;
end;


end.
