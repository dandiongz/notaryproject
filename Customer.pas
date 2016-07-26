unit Customer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBClient, Provider;

type
  TfCustomer = class(TForm)
    GroupBox1: TGroupBox;
    qryCustomer: TADOQuery;
    qryCustomerCustomerID: TAutoIncField;
    qryCustomerCustomerName: TWideStringField;
    qryCustomerRemarks: TWideStringField;
    qryAddress: TADOQuery;
    qryAddressAddressID: TAutoIncField;
    qryAddressAddressTypeID: TIntegerField;
    qryAddressStreetAddress: TWideStringField;
    qryAddressOtherInfo: TWideStringField;
    qryAddressCity: TWideStringField;
    qryAddressCounty: TWideStringField;
    qryAddressState: TWideStringField;
    qryAddressCustomerAddressID: TAutoIncField;
    qryAddressCustomerID: TIntegerField;
    qryAddressAddressID_1: TIntegerField;
    qryAddressIsDefault: TBooleanField;
    qryAddressInActive: TBooleanField;
    qryAddressLabelInfo: TWideStringField;
    qryAddressRemarks: TWideStringField;
    ds_Customer: TDataSource;
    prvCustomer: TDataSetProvider;
    cdsCustomer: TClientDataSet;
    cdsCustomerCustomerID: TAutoIncField;
    cdsCustomerCustomerName: TWideStringField;
    cdsCustomerRemarks: TWideStringField;
    cdsCustomerqryAddress: TDataSetField;
    cdsAddress: TClientDataSet;
    cdsAddressAddressID: TAutoIncField;
    cdsAddressAddressTypeID: TIntegerField;
    cdsAddressStreetAddress: TWideStringField;
    cdsAddressOtherInfo: TWideStringField;
    cdsAddressCity: TWideStringField;
    cdsAddressCounty: TWideStringField;
    cdsAddressState: TWideStringField;
    cdsAddressCustomerAddressID: TAutoIncField;
    cdsAddressCustomerID: TIntegerField;
    cdsAddressAddressID_1: TIntegerField;
    cdsAddressIsDefault: TBooleanField;
    cdsAddressInActive: TBooleanField;
    cdsAddressLabelInfo: TWideStringField;
    cdsAddressRemarks: TWideStringField;
    dsCustomer: TDataSource;
    dsAddress: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCustomer: TfCustomer;

implementation

uses Data;

{$R *.dfm}

procedure TfCustomer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

end.
