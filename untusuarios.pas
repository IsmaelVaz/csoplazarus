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
    lblQtdRegistro: TLabel;
    lblFiltroAtivo: TLabel;
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
    procedure cboGrupoSelect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CarregarTodosDadosTabela();
    procedure CarregarComboBoxGrupo();

  private
    { Private declarations }
  public
    { Public declarations }
  protected
    lstGrupo: TStringList;
    minhaQuery: TSQLQuery;
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.dfm}

procedure TfrmUsuarios.FormCreate(Sender: TObject);
begin
      lstGrupo:= TStringList.Create;
      minhaQuery:= TSQLQuery.Create(nil);
      minhaQuery.SQLConnection:= conMysql;
      CarregarTodosDadosTabela;
      CarregarComboBoxGrupo;

end;

procedure TfrmUsuarios.cboGrupoSelect(Sender: TObject);
begin
    //ShowMessage();

    minhaQuery.Close;
    minhaQuery.SQL.Clear;
    minhaQuery.SQL.Add('select us.nomecompleto AS "Nome Completo", us.login AS "Login", gu.nome AS "Grupo" from ');
    minhaQuery.SQL.Add('usuariosistema as us inner join grupousuario as gu on (us.oid_grupo = gu.oid_grupo) ');
    minhaQuery.SQL.Add('where gu.nome = :pNomeGrupo;');
    minhaQuery.Params.ParamByName('pNomeGrupo').AsString:=cboGrupo.items[cboGrupo.ItemIndex];

    minhaQuery.Open;
    DBGrid1.Refresh;
    DBGrid1.AutoAdjustColumns;
    lblQtdRegistro.Visible:=true;
    lblQtdRegistro.Caption:=Inttostr(minhaQuery.RecordCount) + ' Registros';
    lblFiltroAtivo.Visible:=true;
end;



procedure TfrmUsuarios.CarregarComboBoxGrupo();
var
   minhaQueryGrupo: TSQLQuery;
begin
      lstGrupo.Clear;
      minhaQueryGrupo:= TSQLQuery.Create(nil);
      try
        cboGrupo.Items.Clear;
        minhaQueryGrupo.SQLConnection:= conMysql;
        minhaQueryGrupo.SQL.Text:='select * from grupousuario order by oid_grupo;';
        minhaQueryGrupo.Open;
        minhaQueryGrupo.Active:=true;
        try
            minhaQueryGrupo.First;
            while not minhaQueryGrupo.EOF do
            begin
                 lstGrupo.Add(minhaQueryGrupo.FieldByName('nome').AsString);
                 //cboGrupo.Items.Add(minhaQuery.FieldByName('nome').AsString);
                 minhaQueryGrupo.Next;
            end;
        finally
          cboGrupo.Items:=lstGrupo;
          minhaQueryGrupo.Close;
        end;

      except
      end;

end;

procedure TfrmUsuarios.CarregarTodosDadosTabela();

begin

  try
    minhaQuery.Close;
    //minhaQuery.SQL.Text:= 'select * from usuariosistema;';
    minhaQuery.SQL.Add('select us.nomecompleto AS "Nome Completo", us.login AS "Login", gu.nome AS "Grupo" from');
    minhaQuery.SQL.Add('usuariosistema as us inner join grupousuario as gu on (us.oid_grupo = gu.oid_grupo);');
    minhaQuery.open;
    minhaQuery.Active:=true;
    DBGrid1.DataSource.DataSet:= minhaQuery;
    DBGrid1.AutoAdjustColumns;

    lblQtdRegistro.Caption:=Inttostr(minhaQuery.RecordCount) + ' Registros';

  except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;

end;
end.
