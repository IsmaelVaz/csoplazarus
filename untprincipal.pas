unit untprincipal;

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  EditBtn,Buttons, ComCtrls, Menus, MaskEdit, ExtCtrls, Grids, DBGrids, untpedidos, untusuarios;

type
  TfrmPrincipal = class(TForm)
    pnMenu: TPanel;
    sbtnExpedicao: TSpeedButton;
    sbtnRel: TSpeedButton;
    sbtnUsuario: TSpeedButton;
    pnMenuExpedicao: TPanel;
    sbtnTransportadora: TSpeedButton;
    sbtnPedidos: TSpeedButton;
    sbtnLotes: TSpeedButton;
    pnMenuRel: TPanel;
    sbtnMensal: TSpeedButton;
    sbtnAnual: TSpeedButton;
    sbtnPeriodo: TSpeedButton;
    pnMenuUsuario: TPanel;
    sbtnUser: TSpeedButton;
    sbtnGrupoUser: TSpeedButton;
    procedure sbtnExpedicaoClick(Sender: TObject);
    procedure sbtnPedidosClick(Sender: TObject);
    procedure sbtnRelClick(Sender: TObject);
    procedure sbtnUsuarioClick(Sender: TObject);
    procedure sbtnUserClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}


procedure TfrmPrincipal.sbtnExpedicaoClick(Sender: TObject);
begin
  if not pnMenuExpedicao.Visible then
  begin
      pnMenuRel.Visible:= false;
      pnMenuUsuario.Visible:= false;
      pnMenuExpedicao.Visible:=true;
  end;
end;

procedure TfrmPrincipal.sbtnRelClick(Sender: TObject);
begin
  if not pnMenuRel.Visible then
  begin
      pnMenuExpedicao.Visible:= false;
      pnMenuUsuario.Visible:= false;
      pnMenuRel.Visible:= true;
  end;
end;

procedure TfrmPrincipal.sbtnUserClick(Sender: TObject);
begin
  if not Assigned(frmUsuarios) then
    begin
      Application.CreateForm(TfrmUsuarios,frmUsuarios);
      //frmUsuarios.Parent:= frmPrincipal;
      //frmPrincipal.SetParent(frmUsuarios.Handle);

    end;
end;

procedure TfrmPrincipal.sbtnPedidosClick(Sender: TObject);
begin
  if not Assigned(frmPedidos) then
    begin
      Application.CreateForm(TfrmPedidos,frmPedidos);
    end;
end;

procedure TfrmPrincipal.sbtnUsuarioClick(Sender: TObject);
begin
  if not pnMenuUsuario.Visible then
  begin
      pnMenuExpedicao.Visible:= false;
      pnMenuRel.Visible:= false;
      pnMenuUsuario.Visible:= true;
  end;
end;

end.
