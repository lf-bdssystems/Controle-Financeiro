object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 224
  Width = 371
  object FDCon: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Suporte-Luiz\Documents\Embarcadero\Studio\Proj' +
        'ects\Controle_Financeiro\Banco\Controle_Financiro.db'
      'OpenMode=ReadWrite'
      'LockingMode=normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 8
  end
  object QRYCategoria: TFDQuery
    Active = True
    Connection = FDCon
    SQL.Strings = (
      'Select * from Categoria')
    Left = 48
    Top = 56
    object QRYCategoriaid_categoria: TFDAutoIncField
      FieldName = 'id_categoria'
      Origin = 'id_categoria'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QRYCategoriaDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 50
    end
  end
  object QRYLancamento: TFDQuery
    Connection = FDCon
    SQL.Strings = (
      'SELECT * FROM Lancamento')
    Left = 48
    Top = 112
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 184
    Top = 48
  end
end
