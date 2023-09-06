unit dashboard;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, DateUtils;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lbldiames: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblsemana: TLabel;
    lblmesano: TLabel;
    lbldataatual: TLabel;
    lblano: TLabel;
    lbldiasemana: TLabel;
    lblhoraatual: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
  Procedure AtualizaDados;




  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  AtualizaDados;

  //QUARTO CARD
  lblhoraatual.Caption := FormatDateTime('hh:nn:ss', now);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  WindowState := wsMinimized;
end;

procedure TForm1.AtualizaDados;
begin

  //primeiro card
  lblano.Caption:= FormatdateTime('yyyy',now);
  lbldataatual.Caption:= FormatDateTime('dd-mmm-yyyy',now);

  //segundo card
  lblsemana.Caption:= DayOfWeek(now).ToString;

  //Aqui o lblsemana vai receber o retorno dia da semana do metado DayOfWeek

  case DayOfWeek(now) of
    1: lblsemana.Caption:= 'Domingo';
    2: lblsemana.Caption:= 'Segunda';
    3: lblsemana.Caption:= 'Terça';
    4: lblsemana.Caption:= 'Quarta';
    5: lblsemana.Caption:= 'Quinta';
    6: lblsemana.Caption:= 'Sexta';
    7: lblsemana.Caption:= 'Sábado';
  end;

  //TERCEIRO CARD
  lbldiames.Caption:= DayOfTheMonth(now).ToString;
  lblmesano.Caption:= FormatDateTime('mmm', now);




end;

end.

