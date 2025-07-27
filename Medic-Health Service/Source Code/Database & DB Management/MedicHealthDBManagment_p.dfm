object frmDataBaseManipulation: TfrmDataBaseManipulation
  Left = 0
  Top = 0
  Caption = 'Medic-Health Service DataBase Managment '
  ClientHeight = 493
  ClientWidth = 1233
  Color = clBlack
  TransparentColorValue = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lblHeading: TLabel
    Left = 288
    Top = 24
    Width = 468
    Height = 16
    Caption = 'Medic-Health Service DataBase Managment'
    Font.Charset = OEM_CHARSET
    Font.Color = clLime
    Font.Height = -16
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
  end
  object lblClinicName: TLabel
    Left = 944
    Top = 86
    Width = 96
    Height = 12
    Caption = 'Clinic Name:'
    Font.Charset = OEM_CHARSET
    Font.Color = clLime
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
  end
  object lblAdress: TLabel
    Left = 944
    Top = 150
    Width = 56
    Height = 12
    Caption = 'Adress:'
    Font.Charset = OEM_CHARSET
    Font.Color = clLime
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
  end
  object lblContactNum: TLabel
    Left = 944
    Top = 206
    Width = 64
    Height = 12
    Caption = 'Contact:'
    Font.Charset = OEM_CHARSET
    Font.Color = clLime
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
  end
  object lblOpenningTime: TLabel
    Left = 944
    Top = 262
    Width = 112
    Height = 12
    Caption = 'Openning Time:'
    Font.Charset = OEM_CHARSET
    Font.Color = clLime
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
  end
  object lblClosingTime: TLabel
    Left = 944
    Top = 307
    Width = 104
    Height = 12
    Caption = 'Closing Time:'
    Font.Charset = OEM_CHARSET
    Font.Color = clLime
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
  end
  object lblProvinces: TLabel
    Left = 944
    Top = 354
    Width = 128
    Height = 12
    Caption = 'Choose Province:'
    Font.Charset = OEM_CHARSET
    Font.Color = clLime
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
  end
  object btbExit: TBitBtn
    Left = 8
    Top = 408
    Width = 75
    Height = 56
    TabOrder = 0
    Kind = bkClose
  end
  object DBNavigator1: TDBNavigator
    Left = 256
    Top = 351
    Width = 380
    Height = 42
    DataSource = dmClient.dsrQuery
    TabOrder = 1
  end
  object dbgClinics: TDBGrid
    Left = 8
    Top = 48
    Width = 913
    Height = 297
    DataSource = dmClient.dsrQuery
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ClinicID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Clinic_Name'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Address'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Contact'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Openning'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Closing'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Clinic_City'
        Width = 100
        Visible = True
      end>
  end
  object btbSort: TBitBtn
    Left = 944
    Top = 24
    Width = 81
    Height = 41
    Caption = '&SORT'
    TabOrder = 3
    Kind = bkRetry
  end
  object cmbCities: TComboBox
    Left = 944
    Top = 372
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Mthatha'
      'East London'
      'Gqeberha'
      'Cradock'
      'Bisho'
      'Graaff-Reinet'
      'Karlega'
      'Makhanda'
      'Alwal North'
      'Hogsback'
      'Qonce'
      'Port Alfred'
      'Burgersdrop'
      'Middelburg'
      'Butterworth'
      'Jeffreys Back'
      'Saint Francis Bay'
      'Queenstown'
      'Nqanqarhu'
      'Barkly East'
      'Stutterheim'
      'Lady Grey'
      'Alice'
      'Kareedouw'
      'Fort Beaufort'
      'Hofmeyr'
      'Somerset East'
      'Patensie'
      'Nieu-Bethesda'
      'Cookhouse'
      'Molteno'
      'Elliot'
      'Whittlesea'
      'Komga'
      'Willowmore'
      'Alexandria'
      'Peddie'
      'Dordrecht'
      'Mount Frere'
      'Tarkastad'
      'Bathurst'
      'Cathcart'
      'Hankey'
      'Aberdeen'
      'Steynsburg'
      'Joubertina'
      'Sterkstroom'
      'Venterstad'
      'Indwe'
      'Oyster Bay'
      'Bedford')
  end
  object edtClinicName: TEdit
    Left = 944
    Top = 104
    Width = 225
    Height = 21
    TabOrder = 5
  end
  object edtAdress: TEdit
    Left = 944
    Top = 168
    Width = 225
    Height = 21
    TabOrder = 6
  end
  object edtContact: TEdit
    Left = 944
    Top = 224
    Width = 161
    Height = 21
    Hint = '+27 -- --- ----'
    TabOrder = 7
  end
  object edtOpenning: TEdit
    Left = 944
    Top = 280
    Width = 161
    Height = 21
    Hint = '08:00 am'
    TabOrder = 8
  end
  object edtClosing: TEdit
    Left = 944
    Top = 325
    Width = 161
    Height = 21
    Hint = '08:00 pm'
    TabOrder = 9
  end
  object btbInsert: TBitBtn
    Left = 1129
    Top = 291
    Width = 98
    Height = 46
    Caption = '&INSERT Clinic'
    TabOrder = 10
    OnClick = btbInsertClick
    Kind = bkAll
  end
  object pgrLoadBar: TProgressBar
    Left = 232
    Top = 447
    Width = 553
    Height = 17
    TabOrder = 11
    Visible = False
  end
  object tmrProgress: TTimer
    Enabled = False
    Interval = 30
    OnTimer = tmrProgressTimer
    Left = 120
    Top = 432
  end
end
