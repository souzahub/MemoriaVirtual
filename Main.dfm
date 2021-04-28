object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Memoria Virtual'
  ClientHeight = 338
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 29
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 352
    Top = 29
    Width = 17
    Height = 13
    Caption = 'Cpf'
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 88
    Width = 465
    Height = 169
    DataSource = dsClient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbNome: TDBEdit
    Left = 32
    Top = 48
    Width = 273
    Height = 21
    DataField = 'NOME'
    DataSource = dsClient
    TabOrder = 1
  end
  object edCpf: TDBEdit
    Left = 352
    Top = 48
    Width = 145
    Height = 21
    DataField = 'CPF'
    DataSource = dsClient
    TabOrder = 2
  end
  object btAdd: TBitBtn
    Left = 32
    Top = 263
    Width = 73
    Height = 33
    Caption = 'Incluir'
    TabOrder = 3
    OnClick = btAddClick
  end
  object btAlt: TBitBtn
    Left = 111
    Top = 263
    Width = 73
    Height = 33
    Caption = 'Editar'
    TabOrder = 4
    OnClick = btAltClick
  end
  object btExcl: TBitBtn
    Left = 190
    Top = 263
    Width = 73
    Height = 33
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = btExclClick
  end
  object btSalvar: TBitBtn
    Left = 345
    Top = 263
    Width = 73
    Height = 33
    Caption = 'Salvar'
    TabOrder = 6
    OnClick = btSalvarClick
  end
  object btCancel: TBitBtn
    Left = 424
    Top = 263
    Width = 73
    Height = 33
    Caption = 'Cancelar'
    TabOrder = 7
    OnClick = btCancelClick
  end
  object cdsCliente: TClientDataSet
    PersistDataPacket.Data = {
      4B0000009619E0BD0100000018000000020000000000030000004B00044E4F4D
      4501004900000001000557494454480200020028000343504601004900000001
      00055749445448020002000B000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 120
    object cdsClienteNOME: TStringField
      DisplayWidth = 48
      FieldName = 'NOME'
      Size = 40
    end
    object cdsClienteCPF: TStringField
      DisplayWidth = 25
      FieldName = 'CPF'
      Size = 11
    end
  end
  object dsClient: TDataSource
    DataSet = cdsCliente
    Left = 144
    Top = 120
  end
end
