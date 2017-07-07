program ProductRange;

uses
  Forms,
  ProductRangeUnit in 'ProductRangeUnit.pas' {frmMain},
  RecListUnit in 'RecListUnit.pas',
  dmDatabase in 'dmDatabase.pas' {dmRange: TDataModule},
  DataSerializationUnit in 'DataSerializationUnit.pas',
  Constants in 'Constants.pas',
  TreeViewHelperUnit in 'TreeViewHelperUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
