object frmPrincipal: TfrmPrincipal
  Left = 326
  Height = 461
  Top = 97
  Width = 784
  Caption = 'CSOP'
  ClientHeight = 461
  ClientWidth = 784
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  FormStyle = fsMDIForm
  Position = poScreenCenter
  LCLVersion = '1.8.2.0'
  object pnMenu: TPanel
    Left = 0
    Height = 50
    Top = 0
    Width = 784
    Align = alTop
    ClientHeight = 50
    ClientWidth = 784
    TabOrder = 0
    object sbtnExpedicao: TSpeedButton
      Left = 168
      Height = 30
      Top = 11
      Width = 127
      Align = alCustom
      Caption = 'Expedição'
      OnClick = sbtnExpedicaoClick
    end
    object sbtnRel: TSpeedButton
      Left = 304
      Height = 30
      Top = 11
      Width = 127
      Align = alCustom
      Caption = 'Relatórios'
      OnClick = sbtnRelClick
    end
    object sbtnUsuario: TSpeedButton
      Left = 440
      Height = 30
      Top = 11
      Width = 127
      Align = alCustom
      Caption = 'Usuario'
      OnClick = sbtnUsuarioClick
    end
  end
  object pnMenuExpedicao: TPanel
    Left = 0
    Height = 411
    Top = 50
    Width = 125
    Align = alLeft
    ClientHeight = 411
    ClientWidth = 125
    TabOrder = 1
    Visible = False
    object sbtnTransportadora: TSpeedButton
      Left = 8
      Height = 22
      Top = 112
      Width = 105
      Caption = 'Transportadora'
    end
    object sbtnPedidos: TSpeedButton
      Left = 8
      Height = 22
      Top = 20
      Width = 105
      Caption = 'Pedidos'
      OnClick = sbtnPedidosClick
    end
    object sbtnLotes: TSpeedButton
      Left = 8
      Height = 22
      Top = 64
      Width = 105
      Caption = 'Lotes'
    end
  end
  object pnMenuRel: TPanel
    Left = 125
    Height = 411
    Top = 50
    Width = 125
    Align = alLeft
    ClientHeight = 411
    ClientWidth = 125
    TabOrder = 2
    Visible = False
    object sbtnMensal: TSpeedButton
      Left = 8
      Height = 22
      Top = 20
      Width = 105
      Caption = 'Mensal'
    end
    object sbtnAnual: TSpeedButton
      Left = 8
      Height = 22
      Top = 64
      Width = 105
      Caption = 'Anual'
    end
    object sbtnPeriodo: TSpeedButton
      Left = 8
      Height = 22
      Top = 112
      Width = 105
      Caption = 'Periodo'
    end
  end
  object pnMenuUsuario: TPanel
    Left = 250
    Height = 411
    Top = 50
    Width = 125
    Align = alLeft
    ClientHeight = 411
    ClientWidth = 125
    TabOrder = 3
    Visible = False
    object sbtnUser: TSpeedButton
      Left = 8
      Height = 22
      Top = 20
      Width = 105
      Caption = 'Usuário'
      OnClick = sbtnUserClick
    end
    object sbtnGrupoUser: TSpeedButton
      Left = 8
      Height = 22
      Top = 64
      Width = 105
      Caption = 'Grupos'
    end
  end
end
