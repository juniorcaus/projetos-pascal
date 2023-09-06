unit Calculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFrmCalculadora }

  TFrmCalculadora = class(TForm)
    bt7: TButton;
    bt2: TButton;
    bt3: TButton;
    btMultiplicar: TButton;
    btLimpar: TButton;
    bt0: TButton;
    btIgual: TButton;
    btDividir: TButton;
    bt8: TButton;
    bt9: TButton;
    btSoma: TButton;
    bt4: TButton;
    bt5: TButton;
    bt6: TButton;
    btSubtrair: TButton;
    bt1: TButton;
    edResultado: TEdit;
    procedure btIgualClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NumeroClick(Sender: TObject);
    procedure btDividirClick(Sender: TObject);
    procedure btMultiplicarClick(Sender: TObject);
    procedure btSomaClick(Sender: TObject);
    procedure btSubtrairClick(Sender: TObject);
  private

    FOperacao : Char;
    FTotal : Double;    // tipo double é numero com virgulas
    FUltimoNumero: Double;


    procedure calcular;
    procedure Limpar;
  public


  end;

var
  FrmCalculadora: TFrmCalculadora;

implementation

{$R *.lfm}

{ TFrmCalculadora }

procedure TFrmCalculadora.btSomaClick(Sender: TObject);
begin
  FUltimoNumero:= StrtoFloat (edResultado.Text);

   calcular;


  FOperacao := '+';
end;

procedure TFrmCalculadora.btMultiplicarClick(Sender: TObject);
begin
  FUltimoNumero:= StrtoFloat (edResultado.Text);

  calcular;

  FOperacao := '*';
end;

procedure TFrmCalculadora.btDividirClick(Sender: TObject);
begin
  FUltimoNumero:= StrtoFloat (edResultado.Text);

  calcular;

  FOperacao := '/';
end;

procedure TFrmCalculadora.NumeroClick(Sender: TObject);
begin
  if FUltimoNumero = 0 then
  edResultado.Text := TButton(Sender).Caption

  else
  edResultado.Text := edResultado.Text + TButton(Sender).Caption;


  FUltimoNumero := StrToFloat (edResultado.Text);
end;

procedure TFrmCalculadora.btIgualClick(Sender: TObject);
begin
    calcular;
end;

procedure TFrmCalculadora.btLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TFrmCalculadora.FormCreate(Sender: TObject);
begin
  Limpar;
end;

procedure TFrmCalculadora.btSubtrairClick(Sender: TObject);
begin
  FUltimoNumero:= StrtoFloat (edResultado.Text);

  calcular;

  FOperacao := '-';
end;

procedure TFrmCalculadora.calcular;
begin
  case FOperacao of
  '+': FTotal := FTotal + StrToFloat (edResultado.Text);
  '-': FTotal := FTotal - StrToFloat (edResultado.Text);
  '*': FTotal := FTotal * StrToFloat (edResultado.Text);
  '/': FTotal := FTotal / StrToFloat (edResultado.Text);

  end;

  edResultado.Text := FloatToStr (FTotal);
  FultimoNumero := 0;

end;

procedure TFrmCalculadora.Limpar;
begin
  FUltimoNumero := 0;
  edResultado.Text := '0';

  FOperacao := '+';
end;

end.
                                Cal
