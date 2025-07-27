program MedicHealthManagment_p;

uses
  Forms,
  MedicHealthDBManagment_p in 'MedicHealthDBManagment_p.pas' {frmDataBaseManipulation},
  dmClientDBManagment_u in 'dmClientDBManagment_u.pas' {dmClient: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDataBaseManipulation, frmDataBaseManipulation);
  Application.CreateForm(TdmClient, dmClient);
  Application.Run;
end.
