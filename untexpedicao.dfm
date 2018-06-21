object frmExpedicao: TfrmExpedicao
  Left = 0
  Top = 0
  Caption = 'Expedicao'
  ClientHeight = 336
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pnMenuLateral: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 126
    Height = 330
    Align = alLeft
    Caption = 'pnMenuLateral'
    ShowCaption = False
    TabOrder = 0
    object sbtnTransportadora: TSpeedButton
      Left = 8
      Top = 112
      Width = 105
      Height = 22
      Caption = 'Transportadora'
    end
    object sbtnPedidos: TSpeedButton
      Left = 8
      Top = 20
      Width = 105
      Height = 22
      Caption = 'Pedidos'
      OnClick = sbtnPedidosClick
    end
    object sbtnLotes: TSpeedButton
      Left = 8
      Top = 64
      Width = 105
      Height = 22
      Caption = 'Lotes'
    end
  end
end
