unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, Unit2,unit3Splash, SysUtils, Forms, Controls, Graphics, Dialogs, Menus;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mnuCadastroPadrao: TMenuItem;
    mnuRelatorios: TMenuItem;
    mnuCadastros: TMenuItem;
    mnuAjuda: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure mnuCadastroPadraoClick(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.mnuCadastroPadraoClick(Sender: TObject);  //SUBMENU CADASTRO PADRAO
begin
     frmCadastroPadrao.Show;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject); //FORM PRINCIPAL COM O "OnCreate"
begin
 frmSplash := TfrmSplash.Create(nil);  //criando o objeto "frmSplash"

 try
   frmSplash.ShowModal;   //exibir o formulario
 finally
   FreeAndNil(frmSplash); //destruir objeto acima, para evitar vazamento de memoria

 end;

end;

end.

