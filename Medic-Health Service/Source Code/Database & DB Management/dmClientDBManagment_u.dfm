object dmClient: TdmClient
  OldCreateOrder = False
  Height = 320
  Width = 658
  object connClinicDB: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\User1\3D Objects\Mobile app Creation\Eskom Expo (Sandekela S' +
      'opumelela)\Medic-Health Service USSD Application\USSD PHP Softwa' +
      're Code\Practice\Database\Delphi DataBase Managment\DataBase 200' +
      '2-2003 Compatibility\Medic-Health Service USSD DELPHI.mdb;Mode=R' +
      'eadWrite;Persist Security Info=False;Jet OLEDB:System database="' +
      '";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet ' +
      'OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:' +
      'Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;J' +
      'et OLEDB:New Database Password="";Jet OLEDB:Create System Databa' +
      'se=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy L' +
      'ocale on Compact=False;Jet OLEDB:Compact Without Replica Repair=' +
      'False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 136
  end
  object QuerySQL: TADOQuery
    Active = True
    Connection = connClinicDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Clinics')
    Left = 400
    Top = 104
  end
  object TableClinic: TADOTable
    Active = True
    Connection = connClinicDB
    CursorType = ctStatic
    TableName = 'Clinics'
    Left = 400
    Top = 184
  end
  object dsrQuery: TDataSource
    DataSet = QuerySQL
    Left = 192
    Top = 96
  end
  object dsrTable: TDataSource
    DataSet = TableClinic
    Left = 192
    Top = 184
  end
end
