unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, Buttons,
  ExtCtrls, DBGrids, StdCtrls;

type

  { TfrmCadastroPadrao }

  TfrmCadastroPadrao = class(TForm)
    btnSalvar1: TButton;
    btnPesquisar: TButton;
    Button1: TButton;
    btnImprimir: TButton;
    btnAlterar: TButton;
    btnIncluir: TButton;
    btnExcluir: TButton;
    btnCancelar1: TButton;
    cardPesquisa: TPage;
    DBGrid1: TDBGrid;
    edtPesquisar: TEdit;
    lbltxtPesquisar: TLabel;
    pnlPesquisaBotoes: TPanel;
    pnlGrid: TPanel;
    pnlPesquisa: TPanel;
    pnlPesquisaBotoes1: TPanel;
    pnlPrincipal: TNotebook;
    cardCadastro: TPage;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  frmCadastroPadrao: TfrmCadastroPadrao;

implementation

{$R *.lfm}

{ TfrmCadastroPadrao }

procedure TfrmCadastroPadrao.btnIncluirClick(Sender: TObject); //BOTAO INCLUIR
begin

  pnlPrincipal.PageIndex := pnlPrincipal.IndexOf(cardCadastro);//FUNCAO PARA QUANDO CLIKAR NO BOTAO "INCLUIR" ABRIR A PAGINA "cardCadastro"

end;

procedure TfrmCadastroPadrao.Button1Click(Sender: TObject);//BOTAO FECHAR
begin
  Close;

end;

procedure TfrmCadastroPadrao.btnAlterarClick(Sender: TObject); //BOTAO ALTERAR
begin
  pnlPrincipal.PageIndex := pnlPrincipal.IndexOf(cardCadastro);//FUNCAO PARA QUANDO CLIKAR NO BOTAO "ALTERAR" ABRIR A PAGINA "cardCadastro"
end;

end.

