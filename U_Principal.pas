unit U_Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.Layouts,
  System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList, FMX.MultiView,
  FMX.ListBox, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TForm1 = class(TForm)
    Pnl_Principal: TPanel;
    TabControl: TTabControl;
    Tab_Login: TTabItem;
    Rect_TabLogin: TRectangle;
    Rect_ImgLogin: TRectangle;
    Image1: TImage;
    Layout_Campos: TLayout;
    Label1: TLabel;
    Edit_Usuario: TEdit;
    Label2: TLabel;
    Edit_Senha: TEdit;
    ImgLst: TImageList;
    TabMain: TTabItem;
    Rect_Botao: TRectangle;
    Btn_Acessar: TButton;
    ActLst: TActionList;
    ActMain: TChangeTabAction;
    Ract_tabMain: TRectangle;
    Layout1: TLayout;
    Img_receita: TImage;
    Img_despesa: TImage;
    Layout2: TLayout;
    Layout3: TLayout;
    Label5: TLabel;
    Label6: TLabel;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ToolBar1: TToolBar;
    Rectangle1: TRectangle;
    MultiView: TMultiView;
    Rect_Menu: TRectangle;
    Img_menu: TImage;
    ListBox_menu: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    StyleBook1: TStyleBook;
    Btn_menu: TSpeedButton;
    Tab_Lancamento: TTabItem;
    Rectangle2: TRectangle;
    ToolBar2: TToolBar;
    Rectangle3: TRectangle;
    Btn_VoltarLanc: TSpeedButton;
    Label9: TLabel;
    Layout8: TLayout;
    Label10: TLabel;
    Btn_MesAnterior: TSpeedButton;
    Btn_MesProximo: TSpeedButton;
    LstBx_Lancamentos: TListBox;
    Rectangle4: TRectangle;
    Label11: TLabel;
    Label12: TLabel;
    Layout9: TLayout;
    Layout10: TLayout;
    Label13: TLabel;
    Label14: TLabel;
    ActLanc: TChangeTabAction;
    Tab_Categoria: TTabItem;
    Rectangle5: TRectangle;
    Label15: TLabel;
    Btn_VoltarCat: TSpeedButton;
    Btn_AddCat: TSpeedButton;
    Lstbx_Categorias: TListBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Tab_CadCategoria: TTabItem;
    ActCadCategoria: TChangeTabAction;
    ActCategoria: TChangeTabAction;
    Rectangle6: TRectangle;
    Label16: TLabel;
    Btn_VoltarCadCat: TSpeedButton;
    Btn_salvarCat: TSpeedButton;
    Label17: TLabel;
    Edit_CadCategoria: TEdit;
    LinkControlToField1: TLinkControlToField;
    LinkListControlToField1: TLinkListControlToField;
    procedure Btn_AcessarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure ListBoxItem3Click(Sender: TObject);
    procedure Lstbx_CategoriasItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses UDM;
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.Macintosh.fmx MACOS}
{$R *.SmXhdpiPh.fmx ANDROID}

procedure TForm1.Btn_AcessarClick(Sender: TObject);
begin
  ActMain.ExecuteTarget(self);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    TabControl.ActiveTab := Tab_Login;
    TabControl.TabPosition := TTabPosition.None;
end;

procedure TForm1.ListBoxItem2Click(Sender: TObject);
begin
    ActLanc.ExecuteTarget(Self);
    MultiView.HideMaster;
    MultiView.Visible := False;
end;

procedure TForm1.ListBoxItem3Click(Sender: TObject);
begin
    ActCategoria.ExecuteTarget(Self);
    MultiView.HideMaster;
    MultiView.Visible := False;
end;

procedure TForm1.Lstbx_CategoriasItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin
    dm.QRYCategoria.Edit;
    ActCadCategoria.ExecuteTarget(Sender);
end;

end.
