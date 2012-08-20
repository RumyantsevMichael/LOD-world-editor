object NewMapForm: TNewMapForm
  Left = 0
  Top = 0
  Caption = #1053#1086#1074#1072#1103' '#1082#1072#1088#1090#1072
  ClientHeight = 241
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object lbl_size_px: TLabel
    Left = 199
    Top = 126
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_size_m: TLabel
    Left = 199
    Top = 158
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object gb_map: TGroupBox
    Left = 8
    Top = 1
    Width = 185
    Height = 92
    Caption = #1056#1072#1079#1084#1077#1088' '#1082#1072#1088#1090#1099
    TabOrder = 0
    object lbl_mapwidth: TLabel
      Left = 16
      Top = 27
      Width = 52
      Height = 16
      Caption = #1064#1080#1088#1080#1085#1072':'
    end
    object lbl_mapheight: TLabel
      Left = 16
      Top = 59
      Width = 47
      Height = 16
      Caption = #1042#1099#1089#1086#1090#1072':'
    end
    object edt_mapwidth: TSpinEdit
      Left = 80
      Top = 24
      Width = 95
      Height = 26
      MaxValue = 99
      MinValue = 1
      TabOrder = 0
      Value = 1
      OnChange = ChangeMapSize
      OnExit = BlockNil
    end
    object edt_mapheight: TSpinEdit
      Left = 80
      Top = 56
      Width = 95
      Height = 26
      MaxValue = 99
      MinValue = 1
      TabOrder = 1
      Value = 1
      OnChange = ChangeMapSize
      OnExit = BlockNil
    end
  end
  object btn_ok: TButton
    Left = 178
    Top = 197
    Width = 100
    Height = 35
    Caption = #1054#1050
    Default = True
    TabOrder = 1
    OnClick = btn_okClick
  end
  object btn_cancel: TButton
    Left = 284
    Top = 197
    Width = 100
    Height = 35
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = btn_cancelClick
  end
  object gb_tile: TGroupBox
    Left = 199
    Top = 1
    Width = 185
    Height = 91
    Caption = #1056#1072#1079#1084#1077#1088' '#1090#1072#1081#1083#1086#1074
    TabOrder = 3
    object lbl_TileSize: TLabel
      Left = 13
      Top = 27
      Width = 47
      Height = 16
      Caption = #1056#1072#1079#1084#1077#1088':'
    end
    object edt_TileSize: TSpinEdit
      Left = 79
      Top = 24
      Width = 95
      Height = 26
      MaxValue = 255
      MinValue = 1
      TabOrder = 0
      Value = 32
      OnChange = ChangeMapSize
      OnExit = BlockNil
    end
  end
  object gb_area: TGroupBox
    Left = 8
    Top = 99
    Width = 185
    Height = 92
    Caption = #1056#1072#1079#1084#1077#1088' '#1079#1086#1085#1099
    TabOrder = 4
    object lbl_areawidth: TLabel
      Left = 16
      Top = 27
      Width = 52
      Height = 16
      Caption = #1064#1080#1088#1080#1085#1072':'
    end
    object lbl_areaheight: TLabel
      Left = 16
      Top = 59
      Width = 47
      Height = 16
      Caption = #1042#1099#1089#1086#1090#1072':'
    end
    object edt_areawidth: TSpinEdit
      Left = 80
      Top = 24
      Width = 95
      Height = 26
      MaxValue = 99
      MinValue = 1
      TabOrder = 0
      Value = 16
      OnChange = ChangeMapSize
      OnExit = BlockNil
    end
    object edt_areaheight: TSpinEdit
      Left = 80
      Top = 56
      Width = 95
      Height = 26
      ParentCustomHint = False
      MaxValue = 99
      MinValue = 1
      TabOrder = 1
      Value = 16
      OnChange = ChangeMapSize
      OnExit = BlockNil
    end
  end
  object MapParamBind: TBindScope
    Left = 79
    Top = 203
  end
  object BindingsList: TBindingsList
    Methods = <>
    OutputConverters = <>
    UseAppManager = True
    Left = 21
    Top = 199
    object exp_MapWidth: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = edt_mapwidth
      SourceComponent = MapParamBind
      SourceExpression = 'MapWidth'
      ControlExpression = 'Text'
      AutoActivate = False
      NotifyOutputs = True
      Direction = dirControlToSource
    end
    object exp_MapHeight: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = edt_mapheight
      SourceComponent = MapParamBind
      SourceExpression = 'MapHeight'
      ControlExpression = 'Text'
      AutoActivate = False
      NotifyOutputs = True
      Direction = dirControlToSource
    end
    object exp_AreaWidth: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = edt_areawidth
      SourceComponent = MapParamBind
      SourceExpression = 'AreaWidth'
      ControlExpression = 'Text'
      AutoActivate = False
      NotifyOutputs = True
      Direction = dirControlToSource
    end
    object exp_AreaHeight: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = edt_areaheight
      SourceComponent = MapParamBind
      SourceExpression = 'AreaHeight'
      ControlExpression = 'Text'
      AutoActivate = False
      NotifyOutputs = True
      Direction = dirControlToSource
    end
    object exp_TileSize: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = edt_TileSize
      SourceComponent = MapParamBind
      SourceExpression = 'TileSize'
      ControlExpression = 'Text'
      AutoActivate = False
      NotifyOutputs = True
      Direction = dirControlToSource
    end
  end
end
