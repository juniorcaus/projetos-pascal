unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, unitLOGIN2, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button3Click(Sender: TObject);  //BOTAO LOGIN
begin
    if ((Edit1.Text ='')and (Edit2.Text ='')) then
    begin
     Showmessage('OPS!. Os campos precisam ser preenchidos !!');
    end;

    if ((Edit1.Text ='admin')and (Edit2.Text ='12345')) then
    begin

    Form1.Hide;
     form2.Showmodal;
      Form1.Close;
    end;

    if ((Edit1.Text <> 'admin') and (Edit2.Text <> '12345')) then // se o usuario e senha for diferente vai..
    begin
      Showmessage('ERROR. Login ou Senha Errado!!');

    end;


end;

procedure TForm1.Button4Click(Sender: TObject); //BOTAO RESET
var
  reset:String;

begin
Edit1.Text:= reset;
Edit2.Text:= reset;
Reset := '';

end;

end.

