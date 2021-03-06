unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Help1: TMenuItem;
    N1: TMenuItem;
    FileExitItem: TMenuItem;
    HelpAboutItem: TMenuItem;
    OpenDialog: TOpenDialog;
    StatusBar: TStatusBar;
    ToolBar2: TToolBar;
    tbSearch: TToolButton;
    ImageList1: TImageList;
    tbNew: TToolButton;
    tbEdit: TToolButton;
    tbSave: TToolButton;
    tbDelete: TToolButton;
    tbCancel: TToolButton;
    tbPrint: TToolButton;
    Maintenance: TMenuItem;
    Invoice1: TMenuItem;
    Expense1: TMenuItem;
    Customer1: TMenuItem;
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure EnableNavigation(Search,New,Edit,Save,Delete,Cancel,Print : Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Customer1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses about, Customer;

procedure TMainForm.HelpAbout1Execute(Sender: TObject);
begin
 with TAboutBox.Create(nil) do
  begin
   try
   ShowModal;
   finally
   end;//try finally
  end;
end;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.EnableNavigation(Search, New, Edit, Save, Delete, Cancel,
  Print: Boolean);
begin
 tbSearch.Enabled := Search;
 tbNew.Enabled := New;
 tbEdit.Enabled := Edit;
 tbSave.Enabled := Save;
 tbDelete.Enabled := Delete;
 tbCancel.Enabled := Cancel;
 tbPrint.Enabled := Print;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
 EnableNavigation(False,False,False,False,False,False,False);
end;

procedure TMainForm.Customer1Click(Sender: TObject);
begin
 if FindComponent('fCustomer') = nil then
  begin
  with TfCustomer.Create(Self) do
   Show;
  end
   else
    with TfCustomer(FindComponent('fCustomer')) do
    begin
    WindowState := wsNormal;
    BringToFront;
    end;
end;

end.
