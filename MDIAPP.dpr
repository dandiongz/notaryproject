program Mdiapp;

uses
  Forms,
  MAIN in 'MAIN.PAS' {MainForm},
  about in 'about.pas' {AboutBox},
  Data in 'Data.pas' {dm: TDataModule},
  Client in 'Client.pas' {fClient},
  Customer in 'Customer.pas' {fCustomer};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
