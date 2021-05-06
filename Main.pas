unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, uDados,
  DataSet.Serialize, DataSet.Serialize.Utils, System.JSON, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    cdsCliente: TClientDataSet;
    DBGrid1: TDBGrid;
    dbTipo: TDBEdit;
    dbSenha: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    btAdd: TBitBtn;
    btAlt: TBitBtn;
    btExcl: TBitBtn;
    btSalvar: TBitBtn;
    btCancel: TBitBtn;
    dsClient: TDataSource;
    cdsClienteSENHA: TStringField;
    cdsClienteTIPO: TStringField;
    BitBtn1: TBitBtn;
    memoJson: TMemo;
    btnGeraJson: TBitBtn;
    DBGrid2: TDBGrid;
    dsDados: TDataSource;
    BitBtn2: TBitBtn;
    DBGrid3: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    dsJson: TDataSource;
    cdJson: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    BitBtn3: TBitBtn;
    procedure btAddClick(Sender: TObject);
    procedure btAltClick(Sender: TObject);
    procedure btExclClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnGeraJsonClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
I : Integer;
xerro : String;
lStart, lEnd: TDateTime;

begin

    // FORMA 1 de Insert
    dmDados.QueryDados.Params.ArraySize := cdsCliente.RecordCount;

    dmDados.QueryAuxiliar.Close;
    dmDados.QueryAuxiliar.SQL.Clear;
    dmDados.QueryAuxiliar.SQL.Add('INSERT INTO DADOS (TIPO, SENHA )');
    dmDados.QueryAuxiliar.SQL.Add('values (:vTIPO, :vSENHA )');

    cdsCliente.First;

    for I := 1 to cdsCliente.RecordCount do
    begin
     dmDados.QueryAuxiliar.Params[0].DataType := ftString;
     dmDados.QueryAuxiliar.Params[0].Value := cdsCliente.FieldByName('TIPO').AsString;

     dmDados.QueryAuxiliar.Params[1].DataType := ftString;
     dmDados.QueryAuxiliar.Params[1].Value := cdsCliente.FieldByName('SENHA').AsString;

     dmDados.QueryAuxiliar.ExecSQL( xerro );

     cdsCliente.Next;

    end;

    dmDados.QueryDados.Close;
    dmDados.QueryDados.Open;
//    ShowMessage('Time elapsed: ' + FormatDateTime('hh:nn:ss:zzz', lEnd - lStart));

//    // FORMA 2 de Insert
//    dmDados.QueryDados.Params.ArraySize := cdsCliente.RecordCount;
//
//    dmDados.QueryAuxiliar.Close;
//    dmDados.QueryAuxiliar.SQL.Clear;
//    dmDados.QueryAuxiliar.SQL.Add('INSERT INTO DADOS (TIPO, SENHA )');
//    dmDados.QueryAuxiliar.SQL.Add('values (:vTIPO, :vSENHA )');
//
//    cdsCliente.First;
//
//    for I := 1 to cdsCliente.RecordCount do
//    begin
//     dmDados.QueryAuxiliar.ParamByName('TIPO').AsStrings[I] := cdsCliente.FieldByName('TIPO').AsString;
//
////     dmDados.QueryAuxiliar.Params[1].Value := cdsCliente.FieldByName('SENHA').AsString;
//
//     dmDados.QueryAuxiliar.ExecSQL( xerro );
//
//     cdsCliente.Next;
//
//    end;
//    dmDados.QueryAuxiliar.Execute(cdsCliente.RecordCount);


end;

procedure TForm1.BitBtn2Click(Sender: TObject);

  var
  I : Integer;
  xerro : String;
  lStart, lEnd: TDateTime;

begin

  if not(cdJson.Active) then
  cdJson.Open;
  cdJson.EmptyDataSet;
  cdJson.LoadFromJSON(memoJson.Lines.Text);

    // insert viaJson
    dmDados.QueryDados.Params.ArraySize := cdJson.RecordCount;

    dmDados.QueryAuxiliar.Close;
    dmDados.QueryAuxiliar.SQL.Clear;
    dmDados.QueryAuxiliar.SQL.Add('INSERT INTO DADOS (TIPO, SENHA )');
    dmDados.QueryAuxiliar.SQL.Add('values (:vTIPO, :vSENHA )');

    cdsCliente.First;

    for I := 1 to cdsCliente.RecordCount do
    begin
     dmDados.QueryAuxiliar.Params[0].DataType := ftString;
     dmDados.QueryAuxiliar.Params[0].Value := cdJson.FieldByName('TIPO').AsString;

     dmDados.QueryAuxiliar.Params[1].DataType := ftString;
     dmDados.QueryAuxiliar.Params[1].Value := cdJson.FieldByName('SENHA').AsString;

     dmDados.QueryAuxiliar.ExecSQL( xerro );

     cdJson.Next;

    end;

    dmDados.QueryDados.Close;
    dmDados.QueryDados.Open;

end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin

  if not(cdJson.Active) then
  cdJson.Open;
  cdJson.EmptyDataSet;
  cdJson.LoadFromJSON(memoJson.Lines.Text);

end;

procedure TForm1.btAddClick(Sender: TObject);
begin
  cdsCliente.Append;
  dbTipo.SetFocus;
end;

procedure TForm1.btAltClick(Sender: TObject);
begin

  if cdsCliente.IsEmpty then Exit ;
  cdsCliente.Edit;
  dbTipo.SetFocus;
end;

procedure TForm1.btCancelClick(Sender: TObject);
begin
  cdsCliente.Cancel;
  dbTipo.SetFocus;
end;

procedure TForm1.btExclClick(Sender: TObject);
begin
  if cdsCliente.IsEmpty then Exit ;

  cdsCliente.Delete;
  dbTipo.SetFocus;
end;

procedure TForm1.btnGeraJsonClick(Sender: TObject);
var
  LJSONArray: TJSONArray;
begin
  if not cdsCliente.IsEmpty then
  begin
    LJSONArray := cdsCliente.ToJSONArray;
    try
      memoJson.Lines.Text := LJSONArray.Format(2);
    finally
      LJSONArray.Free;
    end;
  end;

end;

procedure TForm1.btSalvarClick(Sender: TObject);
begin

    if cdsCliente.IsEmpty then Exit ;
    cdsCliente.Post;
    dbTipo.SetFocus;

end;

procedure TForm1.DBGrid2DblClick(Sender: TObject);
begin
if dmDados.QueryDados.IsEmpty  then exit;
  dmDados.QueryDados.Delete;
end;

end.
