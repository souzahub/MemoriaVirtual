program MemoriaVirtual;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  uDados in 'uDados.pas' {dmDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmDados, dmDados);
  Application.Run;
end.
