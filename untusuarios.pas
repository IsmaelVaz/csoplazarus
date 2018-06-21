unit untusuarios;

interface

uses
  Classes, SysUtils, mysql51conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, StdCtrls, EditBtn, ComCtrls, Menus, MaskEdit, ExtCtrls,
  Grids, DBGrids, Buttons;

type

  { TfrmUsuarios }

  TfrmUsuarios = class(TForm)
    conMysql: TMySQL51Connection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    pnFiltroUsuarios: TPanel;
    pnConteudoUsuario: TPanel;
    cboGrupo: TComboBox;
    edtUsuario: TEdit;
    rbtnNome: TRadioButton;
    rbtnLogin: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    sbtnLimparFiltro: TSpeedButton;
    sbtnCancelarFiltro: TSpeedButton;
    sbtnFiltrar: TSpeedButton;
    transMysql: TSQLTransaction;
    procedure FormCreate(Sender: TObject);
    procedure CarregarTodosDadosTabela();
    procedure CarregarComboBoxGrupo();

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.dfm}

procedure TfrmUsuarios.FormCreate(Sender: TObject);
begin
      CarregarTodosDadosTabela;
      CarregarComboBoxGrupo;
end;



procedure TfrmUsuarios.CarregarComboBoxGrupo();
var
   minhaQuery: TSQLQuery;
begin

      minhaQuery:= TSQLQuery.Create(nil);
      try
        cboGrupo.Items.Clear;
        minhaQuery.SQLConnection:= conMysql;
        minhaQuery.SQL.Text:='select * from grupousuario order by nome;';
        minhaQuery.Open;
        minhaQuery.Active:=true;
        try
            minhaQuery.First;
            while not minhaQuery.EOF do
            begin
                 cboGrupo.Items.Add(minhaQuery.FieldByName('nome').AsString);
                 minhaQuery.Next;
            end;
        finally
          minhaQuery.Close;
        end;

      except
      end;

end;

procedure TfrmUsuarios.CarregarTodosDadosTabela();
var
  minhaQuery: TSQLQuery;
begin
     minhaQuery:= TSQLQuery.Create(nil);
  try

    minhaQuery.SQLConnection:= conMysql;
    minhaQuery.SQL.Text:= 'select * from usuariosistema;';
    minhaQuery.open;
    minhaQuery.Active:=true;
    DBGrid1.DataSource.DataSet:= minhaQuery;
    DBGrid1.AutoAdjustColumns;

  except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;

end;
end.
