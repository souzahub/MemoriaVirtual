unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TForm1 = class(TForm)
    cdsCliente: TClientDataSet;
    DBGrid1: TDBGrid;
    dbNome: TDBEdit;
    edCpf: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    btAdd: TBitBtn;
    btAlt: TBitBtn;
    btExcl: TBitBtn;
    btSalvar: TBitBtn;
    btCancel: TBitBtn;
    dsClient: TDataSource;
    cdsClienteNOME: TStringField;
    cdsClienteCPF: TStringField;
    procedure btAddClick(Sender: TObject);
    procedure btAltClick(Sender: TObject);
    procedure btExclClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btAddClick(Sender: TObject);
begin
  cdsCliente.Append;
  dbNome.SetFocus;
end;

procedure TForm1.btAltClick(Sender: TObject);
begin
  if cdsCliente.IsEmpty then Exit ;
  cdsCliente.Edit;
  dbNome.SetFocus;
end;

procedure TForm1.btCancelClick(Sender: TObject);
begin
  cdsCliente.Cancel;
  dbNome.SetFocus;
end;

procedure TForm1.btExclClick(Sender: TObject);
begin
  if cdsCliente.IsEmpty then Exit ;

  cdsCliente.Delete;
  dbNome.SetFocus;
end;

procedure TForm1.btSalvarClick(Sender: TObject);
begin
  if cdsCliente.IsEmpty then Exit ;
  cdsCliente.Post;
  dbNome.SetFocus;
end;

end.
