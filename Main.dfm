object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Memoria Virtual'
  ClientHeight = 638
  ClientWidth = 772
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
    Left = 216
    Top = 29
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Panel2: TPanel
    Left = 24
    Top = 24
    Width = 697
    Height = 338
    Caption = 'Panel2'
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 15
  end
  object Panel1: TPanel
    Left = 24
    Top = 368
    Width = 697
    Height = 249
    Caption = 'Panel1'
    Color = clGray
    ParentBackground = False
    TabOrder = 14
    object BitBtn3: TBitBtn
      Left = 231
      Top = 184
      Width = 98
      Height = 33
      Caption = 'Json para Grid'
      TabOrder = 0
      OnClick = BitBtn3Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 96
    Width = 329
    Height = 161
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
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SENHA'
        Width = 170
        Visible = True
      end>
  end
  object dbTipo: TDBEdit
    Left = 32
    Top = 48
    Width = 152
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Tipo'
    DataSource = dsClient
    TabOrder = 1
  end
  object dbSenha: TDBEdit
    Left = 216
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
    Width = 43
    Height = 33
    Caption = 'Incluir'
    TabOrder = 3
    OnClick = btAddClick
  end
  object btAlt: TBitBtn
    Left = 81
    Top = 263
    Width = 43
    Height = 33
    Caption = 'Editar'
    TabOrder = 4
    OnClick = btAltClick
  end
  object btExcl: TBitBtn
    Left = 130
    Top = 263
    Width = 43
    Height = 33
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = btExclClick
  end
  object btSalvar: TBitBtn
    Left = 249
    Top = 263
    Width = 48
    Height = 33
    Caption = 'Salvar'
    TabOrder = 6
    OnClick = btSalvarClick
  end
  object btCancel: TBitBtn
    Left = 313
    Top = 263
    Width = 48
    Height = 33
    Caption = 'Cancelar'
    TabOrder = 7
    OnClick = btCancelClick
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 318
    Width = 329
    Height = 33
    Caption = 'INSERT NORMAL'
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object memoJson: TMemo
    Left = 32
    Top = 392
    Width = 217
    Height = 200
    Lines.Strings = (
      'memoJson')
    ScrollBars = ssVertical
    TabOrder = 9
  end
  object btnGeraJson: TBitBtn
    Left = 255
    Top = 474
    Width = 98
    Height = 33
    Caption = 'Json'
    TabOrder = 10
    OnClick = btnGeraJsonClick
  end
  object DBGrid2: TDBGrid
    Left = 367
    Top = 96
    Width = 330
    Height = 161
    DataSource = dsDados
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid2DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'SENHA'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Width = 172
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 255
    Top = 513
    Width = 98
    Height = 33
    Caption = 'Insert Json'
    TabOrder = 12
    OnClick = BitBtn2Click
  end
  object DBGrid3: TDBGrid
    Left = 367
    Top = 392
    Width = 330
    Height = 200
    DataSource = dsJson
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid2DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'SENHA'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Width = 172
        Visible = True
      end>
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
  object dsDados: TDataSource
    DataSet = dmDados.QueryDados
    Left = 440
    Top = 168
  end
  object dsJson: TDataSource
    DataSet = cdJson
    Left = 416
    Top = 440
  end
  object cdJson: TClientDataSet
    PersistDataPacket.Data = {
      4D0000009619E0BD0100000018000000020000000000030000004D000553454E
      48410100490000000100055749445448020002002800045449504F0100490000
      0001000557494454480200020028000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 440
    object StringField1: TStringField
      FieldName = 'SENHA'
      Size = 40
    end
    object StringField2: TStringField
      FieldName = 'TIPO'
      Size = 40
    end
  end
end
