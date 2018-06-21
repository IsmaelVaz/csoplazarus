unit untexpedicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, untpedidos;

type
  TfrmExpedicao = class(TForm)
    pnMenuLateral: TPanel;
    sbtnTransportadora: TSpeedButton;
    sbtnPedidos: TSpeedButton;
    sbtnLotes: TSpeedButton;
    procedure sbtnPedidosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExpedicao: TfrmExpedicao;

implementation

{$R *.dfm}

procedure TfrmExpedicao.sbtnPedidosClick(Sender: TObject);
begin
   if not Assigned(frmPedidos) then
    begin
      Application.CreateForm(TfrmPedidos,frmPedidos);
    end;
end;

end.
