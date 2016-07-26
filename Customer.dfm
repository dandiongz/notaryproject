object fCustomer: TfCustomer
  Left = 400
  Top = 217
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Customer Info'
  ClientHeight = 400
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 617
    Height = 105
    Caption = 'Name'
    TabOrder = 0
  end
  object qryCustomer: TADOQuery
    Connection = dm.Conn
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 88
    Top = 160
    object qryCustomerCustomerID: TAutoIncField
      FieldName = 'CustomerID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object qryCustomerCustomerName: TWideStringField
      FieldName = 'CustomerName'
      Size = 150
    end
    object qryCustomerRemarks: TWideStringField
      FieldName = 'Remarks'
      Size = 300
    end
  end
  object qryAddress: TADOQuery
    Connection = dm.Conn
    DataSource = ds_Customer
    Parameters = <
      item
        Name = 'CUSTOMERID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ADDRESS A'
      'JOIN CUSTOMERADDRESS B ON A.ADDRESSID = B.ADDRESSID'
      'WHERE B.CUSTOMERID =:CUSTOMERID')
    Left = 88
    Top = 192
    object qryAddressAddressID: TAutoIncField
      FieldName = 'AddressID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object qryAddressAddressTypeID: TIntegerField
      FieldName = 'AddressTypeID'
    end
    object qryAddressStreetAddress: TWideStringField
      FieldName = 'StreetAddress'
      Size = 150
    end
    object qryAddressOtherInfo: TWideStringField
      FieldName = 'OtherInfo'
      Size = 50
    end
    object qryAddressCity: TWideStringField
      FieldName = 'City'
      Size = 50
    end
    object qryAddressCounty: TWideStringField
      FieldName = 'County'
      Size = 50
    end
    object qryAddressState: TWideStringField
      FieldName = 'State'
      Size = 2
    end
    object qryAddressCustomerAddressID: TAutoIncField
      FieldName = 'CustomerAddressID'
      ReadOnly = True
    end
    object qryAddressCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object qryAddressAddressID_1: TIntegerField
      FieldName = 'AddressID_1'
    end
    object qryAddressIsDefault: TBooleanField
      FieldName = 'IsDefault'
    end
    object qryAddressInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryAddressLabelInfo: TWideStringField
      FieldName = 'LabelInfo'
      Size = 50
    end
    object qryAddressRemarks: TWideStringField
      FieldName = 'Remarks'
      Size = 300
    end
  end
  object ds_Customer: TDataSource
    AutoEdit = False
    DataSet = qryCustomer
    Left = 120
    Top = 160
  end
  object prvCustomer: TDataSetProvider
    DataSet = qryCustomer
    Left = 152
    Top = 160
  end
  object cdsCustomer: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCustomer'
    Left = 184
    Top = 160
    object cdsCustomerCustomerID: TAutoIncField
      FieldName = 'CustomerID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object cdsCustomerCustomerName: TWideStringField
      FieldName = 'CustomerName'
      Size = 150
    end
    object cdsCustomerRemarks: TWideStringField
      FieldName = 'Remarks'
      Size = 300
    end
    object cdsCustomerqryAddress: TDataSetField
      FieldName = 'qryAddress'
    end
  end
  object cdsAddress: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCustomerqryAddress
    Params = <>
    Left = 184
    Top = 192
    object cdsAddressAddressID: TAutoIncField
      FieldName = 'AddressID'
      ReadOnly = True
    end
    object cdsAddressAddressTypeID: TIntegerField
      FieldName = 'AddressTypeID'
    end
    object cdsAddressStreetAddress: TWideStringField
      FieldName = 'StreetAddress'
      Size = 150
    end
    object cdsAddressOtherInfo: TWideStringField
      FieldName = 'OtherInfo'
      Size = 50
    end
    object cdsAddressCity: TWideStringField
      FieldName = 'City'
      Size = 50
    end
    object cdsAddressCounty: TWideStringField
      FieldName = 'County'
      Size = 50
    end
    object cdsAddressState: TWideStringField
      FieldName = 'State'
      Size = 2
    end
    object cdsAddressCustomerAddressID: TAutoIncField
      FieldName = 'CustomerAddressID'
      ReadOnly = True
    end
    object cdsAddressCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object cdsAddressAddressID_1: TIntegerField
      FieldName = 'AddressID_1'
    end
    object cdsAddressIsDefault: TBooleanField
      FieldName = 'IsDefault'
    end
    object cdsAddressInActive: TBooleanField
      FieldName = 'InActive'
    end
    object cdsAddressLabelInfo: TWideStringField
      FieldName = 'LabelInfo'
      Size = 50
    end
    object cdsAddressRemarks: TWideStringField
      FieldName = 'Remarks'
      Size = 300
    end
  end
  object dsCustomer: TDataSource
    AutoEdit = False
    DataSet = cdsCustomer
    Left = 216
    Top = 160
  end
  object dsAddress: TDataSource
    AutoEdit = False
    DataSet = cdsAddress
    Left = 216
    Top = 192
  end
end
