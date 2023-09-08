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
    procedure AtualizarStatus(Mensagem : String; Image : TImage);

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
  10 : AtualizarStatus('Carregando Depêndencias...', imgImpressora);
  25 : AtualizarStatus('Carregando Depêndencias...', imgSave);
  45 : AtualizarStatus('Carregando Depêndencias...', imgPesquisar);
  75 : lblStatus.Caption := 'Iniciando o Sistema...';
  end;
  end;
  if ProgressBar1.Position = 100 then
  Close;
end;

procedure TfrmSplash.AtualizarStatus(Mensagem: String; aLabel: TLabel);  //PROCEDURE AtualizarStatus
begin
 lblStatus.Caption := Mensagem;
 aLabel.Visible := True  ;
end;

end.

