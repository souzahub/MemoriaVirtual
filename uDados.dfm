object dmDados: TdmDados
  OldCreateOrder = False
  Height = 300
  Width = 344
  object FDConnectionSql: TFDConnection
    Params.Strings = (
      'Database=D:\documentos\Banco de Dados\BDSqlLite\teste1\BD.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 45
    Top = 24
  end
  object QueryDados: TFDQuery
    Connection = FDConnectionSql
    SQL.Strings = (
      'SELECT * FROM DADOS ORDER BY ID ASC'
      '')
    Left = 40
    Top = 98
    object QueryDadosSENHA: TWideStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 30
    end
    object QueryDadosTIPO: TWideStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
  end
  object QueryAuxiliar: TFDQuery
    Active = True
    Connection = FDConnectionSql
    SQL.Strings = (
      'SELECT * FROM DADOS ORDER BY ID ASC'
      '')
    Left = 160
    Top = 106
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object WideStringField2: TWideStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 30
    end
    object WideStringField3: TWideStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
    object WideStringField4: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object WideStringField5: TWideStringField
      FieldName = 'NOME_USUARIO'
      Origin = 'NOME_USUARIO'
      Size = 40
    end
  end
end
