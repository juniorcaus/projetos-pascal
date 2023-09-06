unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  valor1, valor2, porcentagem:real;
  tipoconta:string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button10Click(Sender: TObject);
begin
  edit1.text:=edit1.text + '0';
end;

procedure TForm1.Button11Click(Sender: TObject);  //PORCENTAGEM
begin
  if tipoconta = 'adicao' then
  begin
    porcentagem:=StrToFloat(edit1.text);
    porcentagem:=porcentagem/100;
    porcentagem:=porcentagem*valor1;
    edit1.text:= FloatToStr(valor1+porcentagem);
  end;

  if tipoconta = 'subtracao' then
  begin
    porcentagem:=StrToFloat(edit1.text);
    porcentagem:=porcentagem/100;
    porcentagem:=porcentagem*valor1;
    edit1.text:= FloatToStr(valor1-porcentagem);
  end;

end;

procedure TForm1.Button12Click(Sender: TObject);   //BOTAO CLEAR
begin
 edit1.text:= '';
 valor1:=0;
 valor2:=0;
 tipoconta:='';
 Label1.Caption:='';
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  tipoconta:='adicao';
  valor1:=strtofloat(edit1.text);
  Edit1.Text:='';
  Label1.Caption:='+';

end;

procedure TForm1.Button14Click(Sender: TObject);     //BOTÃO SUBTRACAO -
begin
   tipoconta:='subtracao';
  valor1:=strtofloat(edit1.text);
  Edit1.Text:='';
  Label1.Caption:='-';

end;

procedure TForm1.Button15Click(Sender: TObject);  //BOTAO MULTIPLICACAO
begin
   tipoconta:='multiplicacao';
  valor1:=strtofloat(edit1.text);
  Edit1.Text:='';
  Label1.Caption:='X';
end;

procedure TForm1.Button16Click(Sender: TObject);  //BOTAO DIVISÃO
begin
   tipoconta:='divisao';
  valor1:=strtofloat(edit1.text);
  Edit1.Text:='';
  Label1.Caption:='/';
end;

procedure TForm1.Button17Click(Sender: TObject);  // BOTÃO IGUAL =
begin
    if tipoconta = 'adicao' then
    begin
      valor2:=strtofloat(edit1.text);
      Edit1.text:=floattostr(valor1 + valor2);

    end;

    if tipoconta = 'subtracao' then
    begin
      valor2:=strtofloat(edit1.text);
      Edit1.text:=floattostr(valor1 - valor2);

    end;

     if tipoconta = 'divisao' then
    begin
      valor2:=strtofloat(edit1.text);
      Edit1.text:=floattostr(valor1 / valor2);

    end;

      if tipoconta = 'multiplicacao' then
    begin
      valor2:=strtofloat(edit1.text);
      Edit1.text:=floattostr(valor1 * valor2);

    end;

end;

procedure TForm1.Button18Click(Sender: TObject); //BOTAO VIRGULA
begin
  edit1.text:=edit1.text + ',';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  edit1.text:=edit1.text + '7';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.text:=edit1.text + '8';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  edit1.text:=edit1.text + '9';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  edit1.text:=edit1.text + '4';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  edit1.text:=edit1.text + '5';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  edit1.text:=edit1.text + '6';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  edit1.text:=edit1.text + '1';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  edit1.text:=edit1.text + '2';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  edit1.text:=edit1.text + '3';
end;

end.

