object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Memoria Virtual'
  ClientHeight = 392
  ClientWidth = 527
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
    Width = 20
    Height = 13
    Caption = 'Tipo'
  end
  object Label2: TLabel
    Left = 352
    Top = 29
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 96
    Width = 465
    Height = 169
    DataSource = dsClient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SENHA'
        Visible = True
      end>
  end
  object dbTipo: TDBEdit
    Left = 32
    Top = 48
    Width = 273
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Tipo'
    DataSource = dsClient
    TabOrder = 1
  end
  object dbSenha: TDBEdit
    Left = 352
    Top = 48
    Width = 145
    Height = 21
    DataField = 'SENHA'
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
  object BitBtn1: TBitBtn
    Left = 190
    Top = 326
    Width = 152
    Height = 33
    Caption = 'Inserir'
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object cdsCliente: TClientDataSet
    PersistDataPacket.Data = {
      4D0000009619E0BD0100000018000000020000000000030000004D000553454E
      48410100490000000100055749445448020002002800045449504F0100490000
      0001000557494454480200020028000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 104
    object cdsClienteSENHA: TStringField
      FieldName = 'SENHA'
      Size = 40
    end
    object cdsClienteTIPO: TStringField
      FieldName = 'TIPO'
      Size = 40
    end
  end
  object dsClient: TDataSource
    DataSet = cdsCliente
    Left = 56
    Top = 168
  end
end
