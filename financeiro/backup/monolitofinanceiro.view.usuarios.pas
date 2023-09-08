unit MonolitoFinanceiro.View.Usuarios;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Unit2, DB, Model.Conexaounit3;

type

  { TfrmUsuarios }

  TfrmUsuarios = class(TfrmCadastroPadrao)
    DataSource1: TDataSource;
    procedure btnPesquisarClick(Sender: TObject);
  private

  public

  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.lfm}

{ TfrmUsuarios }

procedure TfrmUsuarios.btnPesquisarClick(Sender: TObject);
begin
  //inheritd;
  dmConexao;
end;

end.

