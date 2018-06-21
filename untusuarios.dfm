object frmUsuarios: TfrmUsuarios
  Left = 428
  Height = 406
  Top = 148
  Width = 654
  Caption = 'Usuarios'
  ClientHeight = 406
  ClientWidth = 654
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  OnCreate = FormCreate
  LCLVersion = '1.8.2.0'
  Visible = True
  object pnFiltroUsuarios: TPanel
    Left = 0
    Height = 118
    Top = 0
    Width = 654
    Align = alTop
    ClientHeight = 118
    ClientWidth = 654
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Height = 13
      Top = 11
      Width = 29
      Caption = 'Grupo'
      ParentColor = False
    end
    object Label2: TLabel
      Left = 24
      Height = 13
      Top = 38
      Width = 36
      Caption = 'Usuário'
      ParentColor = False
    end
    object cboGrupo: TComboBox
      Left = 88
      Height = 21
      Top = 8
      Width = 145
      ArrowKeysTraverseList = False
      ItemHeight = 13
      TabOrder = 0
      TabStop = False
    end
    object edtUsuario: TEdit
      Left = 88
      Height = 21
      Top = 35
      Width = 201
      TabStop = False
      TabOrder = 1
    end
    object rbtnNome: TRadioButton
      Left = 89
      Height = 19
      Top = 62
      Width = 47
      Caption = 'Nome'
      TabOrder = 2
    end
    object rbtnLogin: TRadioButton
      Left = 208
      Height = 19
      Top = 62
      Width = 45
      Caption = 'Login'
      TabOrder = 3
    end
    object sbtnFiltrar: TSpeedButton
      Left = 24
      Height = 22
      Top = 88
      Width = 56
      Caption = 'Filtrar'
    end
    object sbtnLimparFiltro: TSpeedButton
      Left = 104
      Height = 22
      Top = 88
      Width = 80
      Caption = 'Limpar Filtro'
    end
    object sbtnCancelarFiltro: TSpeedButton
      Left = 544
      Height = 22
      Top = 88
      Width = 80
      Caption = 'Cancelar Filtro'
    end
  end
  object pnConteudoUsuario: TPanel
    Left = 0
    Height = 288
    Top = 118
    Width = 654
    Align = alClient
    ClientHeight = 288
    ClientWidth = 654
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 10
      Height = 222
      Top = 10
      Width = 630
      AutoEdit = False
      Color = clWindow
      Columns = <>
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
    end
  end
  object conMysql: TMySQL51Connection
    Connected = True
    LoginPrompt = False
    DatabaseName = 'dbcsop'
    KeepConnection = False
    Params.Strings = (
      'Port=3306'
    )
    Password = 'root'
    Transaction = transMysql
    UserName = 'root'
    HostName = '127.0.0.1'
    SkipLibraryVersionCheck = False
    left = 48
    top = 352
  end
  object transMysql: TSQLTransaction
    Active = False
    Database = conMysql
    left = 152
    top = 352
  end
  object DataSource1: TDataSource
    AutoEdit = False
    left = 200
    top = 352
  end
end
