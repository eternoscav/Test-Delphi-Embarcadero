object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 437
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 64
    Top = 64
    Width = 320
    Height = 120
    DataSource = DataSource1
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NNUMEACOM'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CDESCACOM'
        Title.Caption = 'NOME'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 58
    Align = alTop
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 48
      Top = 16
      Width = 65
      Height = 22
      Caption = 'INSERIR'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 119
      Top = 16
      Width = 65
      Height = 22
      Caption = 'CANCELAR'
    end
    object SpeedButton3: TSpeedButton
      Left = 190
      Top = 16
      Width = 65
      Height = 22
      Caption = 'DELETAR'
    end
    object SpeedButton4: TSpeedButton
      Left = 261
      Top = 16
      Width = 65
      Height = 22
      Caption = 'GRAVAR'
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=SOLUS'
      'User_Name=HUMANA'
      'Password=h'
      'DriverID=Ora')
    Connected = True
    Left = 608
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = Q_Query
    Left = 488
    Top = 80
  end
  object Q_Query: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT NNUMEACOM, CDESCACOM FROM HSSACOM ORDER BY CDESCACOM')
    Left = 552
    Top = 80
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 480
    Top = 144
  end
end
