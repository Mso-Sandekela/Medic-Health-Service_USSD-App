unit dmClientDBManagment_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmClient = class(TDataModule)
    connClinicDB: TADOConnection;
    QuerySQL: TADOQuery;
    TableClinic: TADOTable;
    dsrQuery: TDataSource;
    dsrTable: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmClient: TdmClient;

implementation

{$R *.dfm}

end.
