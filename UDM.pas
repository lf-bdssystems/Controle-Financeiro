unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  system.IOUtils;

type
  TDM = class(TDataModule)
    FDCon: TFDConnection;
    QRYCategoria: TFDQuery;
    QRYLancamento: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    QRYCategoriaid_categoria: TFDAutoIncField;
    QRYCategoriaDescricao: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
    with FDCon do
    begin
        {$IFDEF IOS}
          Params.Values['DriverID'] := 'SQLite';
          try
              Params.Values['database']:= TPath.combine(TPath.GetDocumentsPath, 'Controle_Financiro.db');
              Connected := True;
          except on E:Exeption do
              raise Exception.Create('Falha na conexão com o banco de dados!' + E.Message);
          end;
          {$ENDIF}

          {$IFDEF ANDROID}
          Params.Values['DriverID'] := 'SQLite';
          try
              Params.Values['database'] := TPath.combine(TPath.GetDocumentsPath, 'Controle_Financiro.db');
              Connected := True;
          except on E:Exception do
              raise Exception.Create('Falha na conexão com o bando de dados!' + E.Message);
          end;
          {$ENDIF}

          {$IFDEF MSWINDOWS}
          try
              Params.Values['database'] := 'C:\Users\Suporte-Luiz\Documents\Embarcadero\Studio\Projects\Controle_Financeiro\Banco\Controle_Financiro.db';
              Connected := True;
          except on E:Exception do
              raise Exception.Create('Falha na conexão com o bando de dados!' + E.Message);          
          end;          
          {$ENDIF}
    end;

end;

end.
