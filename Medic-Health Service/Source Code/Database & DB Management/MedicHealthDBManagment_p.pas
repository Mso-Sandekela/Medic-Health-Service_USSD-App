unit MedicHealthDBManagment_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, dmClientDBManagment_u, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, ComCtrls;

type
  TfrmDataBaseManipulation = class(TForm)
    btbExit: TBitBtn;
    DBNavigator1: TDBNavigator;
    lblHeading: TLabel;
    dbgClinics: TDBGrid;
    btbSort: TBitBtn;
    cmbCities: TComboBox;
    edtClinicName: TEdit;
    edtAdress: TEdit;
    edtContact: TEdit;
    edtOpenning: TEdit;
    edtClosing: TEdit;
    lblClinicName: TLabel;
    lblAdress: TLabel;
    lblContactNum: TLabel;
    lblOpenningTime: TLabel;
    lblClosingTime: TLabel;
    lblProvinces: TLabel;
    btbInsert: TBitBtn;
    tmrProgress: TTimer;
    pgrLoadBar: TProgressBar;
    procedure btbInsertClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tmrProgressTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iProvince : Integer;
  end;

var
  frmDataBaseManipulation: TfrmDataBaseManipulation;

implementation

{$R *.dfm}



procedure TfrmDataBaseManipulation.btbInsertClick(Sender: TObject);
var
sClinic, sAdress, sContact, sOpenning, sClosing : String;

begin
sClinic := edtClinicName.Text;
sAdress := edtAdress.Text;
sContact := edtContact.Text;
sOpenning := edtOpenning.Text;
sClosing := edtClosing.Text;

case cmbCities.ItemIndex of
0: iprovince := 1;
1: iprovince := 2;
2: iprovince := 3;
3: iprovince := 4;
4: iprovince := 5;
5: iprovince := 6;
6: iprovince := 7;
7: iprovince := 8;
8: iprovince := 9;
9: iprovince := 10;
end;


//INSERT Clinic Value in DataBase...
With dmClient do
begin
QuerySQL.SQL.Clear;
QuerySQL.SQL.Add('INSERT INTO Clinics '+
'(Clinic_Name, Address, Contact, Openning, Closing, Clinic_City) VALUES '+
'("'+sClinic+'", "'+sAdress+'", "'+sContact+'", "'+sOpenning+'", '+
'"'+sClosing+'", '+IntToStr(iprovince)+')');

QuerySQL.ExecSQL;
QuerySQL.Close;

//Progress bar CODE...
pgrLoadBar.Visible:= True;
pgrLoadBar.Min := 0;
pgrLoadBar.Max := 100;
pgrLoadBar.Position:= 0;
tmrProgress.Enabled := True;
end;
end;

procedure TfrmDataBaseManipulation.FormActivate(Sender: TObject);
begin
edtOpeNning.Hint := '08:00 am';
edtClosing.Hint := '08:00 pm';
end;

procedure TfrmDataBaseManipulation.tmrProgressTimer(Sender: TObject);
begin
pgrLoadBar.Position:= pgrLoadbar.Position + 10;

if PgrLoadBar.Position = 100 then
 Begin
  tmrProgress.Enabled:= False;
  with dmClient do
   Begin
        QuerySQL.SQL.Clear;
        QuerySQL.SQL.Add('SELECT * FROM Clinics');
        QuerySQL.Open;
   End;
  Showmessage('Clinic Sucessfully Added!');
  edtClinicName.Text:= '';
  edtAdress.Text:= '';
  edtContact.Text:= '';
  edtOpenning.Text:= '';
  edtClosing.Text:= '';
 End;

end;

end.
