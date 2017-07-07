unit dmDatabase;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmRange = class(TDataModule)
    ADOConnection: TADOConnection;
    Query: TADOQuery;
  private
    { Private declarations }

  public                                                         
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure LoadData(const ASqlStr: string; const AIsUpdate: Boolean = False);
  end;

implementation

uses
  Constants;


{$R *.dfm}

{ TdmRange }

constructor TdmRange.Create(AOwner: TComponent);
begin
  inherited;
  ADOConnection.ConnectionString := CONN_STR;
  ADOConnection.Open;
  Query.Connection := ADOConnection;
end;

destructor TdmRange.Destroy;
begin

  inherited;
end;

procedure TdmRange.LoadData(const ASqlStr: string; const AIsUpdate: Boolean = False);
begin
  with Query do
  begin
    Close;
    SQL.Clear;
    SQL.Add(ASqlStr);
    if AIsUpdate then
      ExecSQL
    else
      Open;
  end;
end;

end.
