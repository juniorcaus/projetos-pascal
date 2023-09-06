unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ZConnection, ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    DataSource1: TDataSource;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    ZConnection1: TZConnection;
    ZTable1: TZTable;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Timer1Timer(Sender: TObject);//TIMER 1
var
  Somar:Real;
begin
  ZTable1.Close;
  ZTable1.Open;
  ZTable1.First;

  while not ZTable1.Eof do
  begin
    if ZTable1.FieldByName('Vendedor').AsString = Label3.Caption then
     Somar:=(Somar + ZTable1.FieldByName('Valor vendas').Value);

    Label15.Caption:=FormatFloat('R$ #,##0.00', Somar);
    ZTable1.Next;
  end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);//TIMER 2
var
  Somar:Real;
begin
  ZTable1.Close;
  ZTable1.Open;
  ZTable1.First;

  while not ZTable1.Eof do
  begin
    if ZTable1.FieldByName('Vendedor').AsString = Label4.Caption then
     Somar:=(Somar + ZTable1.FieldByName('Valor vendas').Value);

    Label16.Caption:=FormatFloat('R$ #,##0.00', Somar);
    ZTable1.Next;

  end;

  end;

procedure TForm1.Timer3Timer(Sender: TObject); //TIMER 3
var
  Somar:Real;
begin
  ZTable1.Close;
  ZTable1.Open;
  ZTable1.First;

  while not ZTable1.Eof do
  begin
    if ZTable1.FieldByName('Vendedor').AsString = Label5.Caption then
     Somar:=(Somar + ZTable1.FieldByName('Valor vendas').Value);

    Label17.Caption:=FormatFloat('R$ #,##0.00', Somar);
    ZTable1.Next;

    end;

  end;

procedure TForm1.Timer4Timer(Sender: TObject);
var
  Somar:Real;
begin
  ZTable1.Close;
  ZTable1.Open;
  ZTable1.First;

  while not ZTable1.Eof do
  begin
    if ZTable1.FieldByName('Vendedor').AsString = Label6.Caption then
     Somar:=(Somar + ZTable1.FieldByName('Valor vendas').Value);

    Label18.Caption:=FormatFloat('R$ #,##0.00', Somar);
    ZTable1.Next;

    end;

end;


end.

