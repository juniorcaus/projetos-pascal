unit Model.Conexaounit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, ZConnection, ZDataset;

type

  { TdmConexao }

  TdmConexao = class(TDataModule)
    SQLConexao: TZConnection;
    ZQuery1: TZQuery;
    procedure DataModuleCreate(Sender: TObject);

  private
     const ARQUIVOCONFIGURACAO = 'MonolitoFinanceiro.cfg';

  public
    procedure CarregarConfiguracoes;
    procedure Conectar;
    procedure Desconectar;

  end;

var
  dmConexao: TdmConexao;

implementation

{$R *.lfm}

{ TdmConexao }

procedure TdmConexao.DataModuleCreate(Sender: TObject);  //dmCONEXAO DataModule
begin
      CarregarConfiguracoes;
      Conectar;
end;

procedure TdmConexao.CarregarConfiguracoes; //procedure CarregarConfiguracoes
var
   ParametroNome : String;
   ParametroValor : String;
   Contador : Integer;
   ListaParametros : TStringList;
begin
 // SQLConexao.Params.Clear; //LIMPAR PARAMETROS DA CONEXAO
   if not FileExists(ARQUIVOCONFIGURACAO)  then  //CHECAR SE O ARQUIVO EXISTE
   raise Exception.Create('Arquivo de Configuração não Encontrado!!!!'); //CASO N EXISTA, VAI EXEBIR ESSA MSG DE ERROR

   ListaParametros := TStringList.Create;
   try
     ListaParametros.LoadFromFile(ARQUIVOCONFIGURACAO);
     for Contador := 0 to Pred(ListaParametros.Count) do
     begin
       if ListaParametros[Contador].IndexOf('=') > 0 then
       begin
         ParametroNome := ListaParametros[Contador].Split(['='])[0].Trim;  //o contador vai percorrer a lista. o 'Split' retorna um Array, e pegando o primeiro valor q é [0]
         ParametroValor := ListaParametros[Contador].Split(['='])[1].Trim; // o 'Trim' serve para tirar o espaço: "Protocol=sqlite-3"
         // Configurar as propriedades do TZConnection com base nos parâmetros

        case ParametroNome of
           'C:\DELPHI\Projetos - Pascal\financeiro\db\SistemaFinanceiroDB': SQLConexao.Database := ParametroValor;

          // Adicione outros parâmetros conforme necessário
        end;

         //SQLConexao.Params.Add(ParametroNome + '=' +   ParametroValor); //
       end;
     end;

   finally
     ListaParametros.Free;
   end;



end;

procedure TdmConexao.Conectar;  //PROCEDURE CONECTAR
begin
   SQLConexao.Connect;

end;

procedure TdmConexao.Desconectar;  //PROCEDURE DESCONECTAR
begin
       SQLConexao.Connect := False;
end;

end.

