unit unit3Splash;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls;

type

  { TfrmSplash }

  TfrmSplash = class(TForm)
    imgSave: TImage;
    imgImpressora: TImage;
    imgPesquisar: TImage;
    imgLogo: TImage;
    lblNomeAplicacao: TLabel;
    lblStatus: TLabel;
    pnlPrincipal: TPanel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    //procedure AtualizarStatus(Mensagem : String; aLabel : TLabel);

  public

  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.lfm}

{ TfrmSplash }

procedure TfrmSplash.Timer1Timer(Sender: TObject);  //Componente TIMER
begin
  if ProgressBar1.Position <= 100 then  //se "ProgressBar" position for menor ou = 100, vai executar o bloco abaixo
  begin
  ProgressBar1.StepIt;

  case ProgressBar1.Position  of
  10 : lblStatus.Caption := 'Carregando Depêndencias...';
  25 : lblStatus.Caption := 'Conectando ao Banco de Dados...';
  45 : lblStatus.Caption := 'Carregando as Configurações...';
  75 : lblStatus.Caption := 'Iniciando o Sistema...';
  end;
  end;
  if ProgressBar1.Position = 100 then
  Close;
end;


end.

