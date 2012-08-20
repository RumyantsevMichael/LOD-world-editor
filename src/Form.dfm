object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 710
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 17
  object Splitter1: TSplitter
    Left = 0
    Top = 499
    Width = 1008
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    AutoSnap = False
    MinSize = 40
    ResizeStyle = rsUpdate
    ExplicitTop = 494
  end
  object RenderPanel: TPanel
    Left = 0
    Top = 32
    Width = 1008
    Height = 467
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    Caption = 'RenderPanel'
    DoubleBuffered = False
    DragCursor = crCross
    ParentDoubleBuffered = False
    TabOrder = 0
    OnMouseEnter = RenderPanelMouseEnter
    OnMouseLeave = RenderPanelMouseLeave
    ExplicitTop = 29
    ExplicitHeight = 470
  end
  object ToolBar: TToolBar
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 1008
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    AutoSize = True
    ButtonHeight = 32
    ButtonWidth = 32
    Caption = 'ToolBar'
    DrawingStyle = dsGradient
    GradientEndColor = 14606046
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object ToolButton2: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object edt_BrushSize: TEdit
      Left = 8
      Top = 0
      Width = 57
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 3
      NumbersOnly = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '1'
    end
    object btn_brush_point: TToolButton
      Tag = 1
      Left = 65
      Top = 0
      Hint = #1058#1086#1095#1082#1072
      Caption = #1058#1086#1095#1082#1072
      Down = True
      Grouped = True
      ImageIndex = 1
      Style = tbsCheck
      OnClick = BrushChangeShape
    end
    object btn_brush_square: TToolButton
      Tag = 2
      Left = 97
      Top = 0
      Hint = #1050#1074#1072#1076#1088#1072#1090
      Caption = 'btn_brush_square'
      Grouped = True
      ImageIndex = 2
      Style = tbsCheck
      OnClick = BrushChangeShape
    end
    object btn_brush_circle: TToolButton
      Tag = 3
      Left = 129
      Top = 0
      Hint = #1050#1088#1091#1075
      Caption = 'btn_brush_circle'
      Grouped = True
      ImageIndex = 3
      Style = tbsCheck
      OnClick = BrushChangeShape
    end
  end
  object TilePanel: TPanel
    Left = 0
    Top = 502
    Width = 1008
    Height = 208
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 2
    object ctrl_Layer: TPageControl
      Left = 1
      Top = 1
      Width = 1006
      Height = 206
      ActivePage = page_objects
      Align = alClient
      BiDiMode = bdLeftToRight
      Images = imglist_layer
      ParentBiDiMode = False
      TabOrder = 0
      OnChange = BrushChange
      object page_collision: TTabSheet
        Caption = #1050#1086#1083#1083#1080#1079#1080#1080
        ImageIndex = 8
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object tool_collision: TToolBar
          Left = 0
          Top = 0
          Width = 39
          Height = 161
          Align = alLeft
          AutoSize = True
          ButtonHeight = 38
          ButtonWidth = 39
          Caption = 'ToolBar1'
          Customizable = True
          DrawingStyle = dsGradient
          GradientEndColor = clWindow
          GradientStartColor = 14079702
          Images = imglist_layer
          GradientDirection = gdHorizontal
          TabOrder = 0
          Transparent = True
          object ToolButton13: TToolButton
            Tag = 1
            Left = 0
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1087#1088#1103#1090#1072#1090#1100' '#1089#1083#1086#1081
            Caption = 'ToolButton1'
            Down = True
            ImageIndex = 0
            ParentShowHint = False
            Wrap = True
            ShowHint = True
            Style = tbsCheck
            OnClick = SetLayerVisible
          end
        end
        object pnl_collision: TPanel
          Left = 39
          Top = 0
          Width = 959
          Height = 161
          Align = alClient
          BevelOuter = bvNone
          Caption = 'pnl_collision'
          ShowCaption = False
          TabOrder = 1
          object gb_collision: TGroupBox
            Left = 0
            Top = 0
            Width = 959
            Height = 57
            Align = alTop
            Caption = #1057#1090#1077#1087#1077#1085#1100' '#1087#1088#1086#1093#1086#1076#1080#1084#1086#1089#1090#1080
            TabOrder = 0
            object edt_collision: TEdit
              Left = 2
              Top = 19
              Width = 55
              Height = 36
              Align = alLeft
              Alignment = taCenter
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -25
              Font.Name = 'Tahoma'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              Text = '1'
              ExplicitHeight = 38
            end
            object tb_collision: TTrackBar
              Left = 57
              Top = 19
              Width = 900
              Height = 36
              Align = alClient
              Max = 255
              Frequency = 5
              TabOrder = 1
              TickMarks = tmTopLeft
              OnChange = BrushChangeID
            end
          end
        end
      end
      object page_terrain: TTabSheet
        Caption = #1047#1077#1084#1083#1103
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object sb_terrain: TScrollBox
          Left = 39
          Top = 0
          Width = 959
          Height = 161
          HorzScrollBar.Smooth = True
          HorzScrollBar.Tracking = True
          VertScrollBar.Smooth = True
          VertScrollBar.Tracking = True
          Align = alClient
          BorderStyle = bsNone
          Color = clBtnHighlight
          ParentColor = False
          TabOrder = 0
          object img_Tileset: TImage
            Tag = 1
            Left = 0
            Top = 0
            Width = 25
            Height = 25
            AutoSize = True
            OnMouseDown = img_TilesetMouseDown
          end
        end
        object tool_terrain: TToolBar
          Left = 0
          Top = 0
          Width = 39
          Height = 161
          Align = alLeft
          AutoSize = True
          ButtonHeight = 38
          ButtonWidth = 39
          Caption = 'tool_terrain'
          Customizable = True
          DrawingStyle = dsGradient
          GradientEndColor = clWindow
          GradientStartColor = 14079702
          Images = imglist_layer
          GradientDirection = gdHorizontal
          TabOrder = 1
          Transparent = True
          object ToolButton5: TToolButton
            Left = 0
            Top = 0
            Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1085#1072#1073#1086#1088' '#1090#1072#1081#1083#1086#1074
            Caption = #1053#1086#1074#1099#1081' '#1085#1072#1073#1086#1088' '#1090#1072#1081#1083#1086#1074
            ImageIndex = 3
            MenuItem = btn_newtileset
            ParentShowHint = False
            Wrap = True
            ShowHint = True
          end
          object ToolButton1: TToolButton
            Tag = 2
            Left = 0
            Top = 38
            Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1087#1088#1103#1090#1072#1090#1100' '#1089#1083#1086#1081
            Caption = 'ToolButton1'
            Down = True
            ImageIndex = 0
            ParentShowHint = False
            Wrap = True
            ShowHint = True
            Style = tbsCheck
            OnClick = SetLayerVisible
          end
        end
      end
      object page_decoration: TTabSheet
        Caption = #1044#1077#1082#1086#1088#1072#1094#1080#1080
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object sb_decoration: TScrollBox
          Left = 39
          Top = 0
          Width = 959
          Height = 161
          HorzScrollBar.Smooth = True
          HorzScrollBar.Tracking = True
          VertScrollBar.Smooth = True
          VertScrollBar.Tracking = True
          Align = alClient
          BorderStyle = bsNone
          Color = clBtnHighlight
          ParentColor = False
          TabOrder = 0
          object img_decoration: TImage
            Tag = 2
            Left = 0
            Top = 0
            Width = 25
            Height = 25
            AutoSize = True
            ParentShowHint = False
            ShowHint = True
            OnMouseDown = img_TilesetMouseDown
          end
        end
        object ToolBar1: TToolBar
          Left = 0
          Top = 0
          Width = 39
          Height = 161
          Align = alLeft
          AutoSize = True
          ButtonHeight = 38
          ButtonWidth = 39
          Caption = 'tool_decorition'
          Customizable = True
          DrawingStyle = dsGradient
          GradientEndColor = clWindow
          GradientStartColor = 14079702
          Images = imglist_layer
          GradientDirection = gdHorizontal
          TabOrder = 1
          Transparent = True
          object ToolButton17: TToolButton
            Left = 0
            Top = 0
            Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1085#1072#1073#1086#1088' '#1076#1077#1082#1086#1088#1072#1094#1080#1081
            Caption = #1053#1086#1074#1099#1081' '#1085#1072#1073#1086#1088' '#1076#1077#1082#1086#1088#1072#1094#1080#1081
            ImageIndex = 3
            MenuItem = btn_newdecor
            ParentShowHint = False
            Wrap = True
            ShowHint = True
          end
          object ToolButton18: TToolButton
            Tag = 3
            Left = 0
            Top = 38
            Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1087#1088#1103#1090#1072#1090#1100' '#1089#1083#1086#1081
            Caption = 'ToolButton1'
            Down = True
            ImageIndex = 0
            ParentShowHint = False
            Wrap = True
            ShowHint = True
            Style = tbsCheck
            OnClick = SetLayerVisible
          end
        end
      end
      object page_objects: TTabSheet
        Caption = #1054#1073#1098#1077#1082#1090#1099
        ImageIndex = 6
        object sp_Object: TSplitter
          Left = 369
          Top = 0
          Height = 161
          ResizeStyle = rsUpdate
          ExplicitLeft = 400
          ExplicitHeight = 174
        end
        object tool_objects: TToolBar
          Left = 0
          Top = 0
          Width = 39
          Height = 161
          Align = alLeft
          AutoSize = True
          ButtonHeight = 38
          ButtonWidth = 39
          Caption = 'ToolBar1'
          Customizable = True
          DrawingStyle = dsGradient
          GradientEndColor = clWindow
          GradientStartColor = 14079702
          Images = imglist_layer
          GradientDirection = gdHorizontal
          TabOrder = 0
          Transparent = True
          object ToolButton7: TToolButton
            Left = 0
            Top = 0
            Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1086#1073#1098#1077#1082#1090
            Caption = #1053#1086#1074#1099#1081' '#1086#1073#1098#1077#1082#1090
            ImageIndex = 3
            MenuItem = btn_newobject
            ParentShowHint = False
            Wrap = True
            ShowHint = True
          end
          object ToolButton8: TToolButton
            Tag = 4
            Left = 0
            Top = 38
            Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1089#1087#1088#1103#1090#1072#1090#1100' '#1089#1083#1086#1081
            Caption = 'ToolButton1'
            Down = True
            ImageIndex = 0
            ParentShowHint = False
            Wrap = True
            ShowHint = True
            Style = tbsCheck
            OnClick = SetLayerVisible
          end
        end
        object sb_object: TScrollBox
          Left = 372
          Top = 0
          Width = 626
          Height = 161
          HorzScrollBar.Smooth = True
          HorzScrollBar.Tracking = True
          VertScrollBar.Smooth = True
          VertScrollBar.Tracking = True
          Align = alClient
          BorderStyle = bsNone
          Color = clWindow
          ParentColor = False
          TabOrder = 1
          object img_object: TImage
            Left = 0
            Top = 0
            Width = 25
            Height = 25
            AutoSize = True
          end
        end
        object lv_object: TListView
          Left = 39
          Top = 0
          Width = 330
          Height = 161
          Align = alLeft
          Checkboxes = True
          Columns = <
            item
              AutoSize = True
              Caption = 'ID'
              MaxWidth = 26
              MinWidth = 26
            end
            item
              Caption = 'Name'
              MinWidth = 100
              Width = 100
            end
            item
              Caption = 'Path'
              MinWidth = 200
              Width = 200
            end>
          ColumnClick = False
          HideSelection = False
          ReadOnly = True
          RowSelect = True
          TabOrder = 2
          ViewStyle = vsReport
          OnChange = lv_objectChange
        end
      end
    end
  end
  object MainMenu: TMainMenu
    BiDiMode = bdLeftToRight
    Images = imglist_layer
    ParentBiDiMode = False
    Left = 272
    Top = 112
    object btn_menu: TMenuItem
      Caption = #1060#1072#1081#1083
      object btn_new: TMenuItem
        Tag = 1
        Caption = #1057#1086#1079#1076#1072#1090#1100
        Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1082#1072#1088#1090#1091
        ImageIndex = 2
        ShortCut = 16462
        OnClick = MainMenuFile
      end
      object btn_open: TMenuItem
        Tag = 2
        Caption = #1054#1090#1082#1088#1099#1090#1100
        Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1097#1091#1102' '#1082#1072#1088#1090#1091
        ImageIndex = 13
        ShortCut = 16463
        OnClick = MainMenuFile
      end
      object N9: TMenuItem
        Caption = '-'
        ImageIndex = 13
      end
      object btn_save: TMenuItem
        Tag = 3
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1088#1090#1091
        ImageIndex = 14
        ShortCut = 16467
        OnClick = MainMenuFile
      end
      object btn_saveas: TMenuItem
        Tag = 4
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
        Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1088#1090#1091' '#1082#1072#1082'...'
        ImageIndex = 15
        OnClick = MainMenuFile
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object btn_close: TMenuItem
        Tag = 5
        Caption = #1047#1072#1082#1088#1099#1090#1100
        Hint = #1047#1072#1082#1088#1099#1090#1100' '#1082#1072#1088#1090#1091
        ImageIndex = 12
        ShortCut = 16499
        OnClick = MainMenuFile
      end
      object btn_quit: TMenuItem
        Tag = 6
        Caption = #1042#1099#1093#1086#1076
        Hint = #1042#1099#1093#1086#1076' '#1080#1079' '#1088#1077#1076#1072#1082#1090#1086#1088#1072
        ImageIndex = 10
        OnClick = MainMenuFile
      end
    end
    object btn_edit: TMenuItem
      Caption = #1055#1088#1072#1074#1082#1072
      object btn_undo: TMenuItem
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1088#1080#1089#1086#1074#1072#1085#1080#1077
        ShortCut = 16474
      end
      object btn_redo: TMenuItem
        Caption = #1055#1086#1074#1090#1086#1088#1080#1090#1100
        ShortCut = 16473
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object btn_cut: TMenuItem
        Caption = #1042#1099#1088#1077#1079#1072#1090#1100
        ShortCut = 16472
      end
      object btn_copy: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
        ShortCut = 16451
      end
      object btn_past: TMenuItem
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100
        ShortCut = 16470
      end
      object btn_delete: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        ShortCut = 46
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object btn_selectall: TMenuItem
        Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1105
        ShortCut = 16449
      end
      object btn_selectnone: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077
        ShortCut = 24641
      end
      object N25: TMenuItem
        Caption = '-'
      end
      object btn_settings: TMenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      end
    end
    object btn_view: TMenuItem
      Caption = #1042#1080#1076
      object btn_showgrid: TMenuItem
        Tag = 1
        Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1089#1077#1090#1082#1091
        Default = True
        ImageIndex = 7
        ShortCut = 16455
        OnClick = MainMenuView
      end
      object btn_highlight: TMenuItem
        Tag = 2
        Caption = #1055#1086#1076#1089#1074#1077#1090#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1089#1083#1086#1081
        ShortCut = 72
        OnClick = MainMenuView
      end
      object N29: TMenuItem
        Caption = '-'
      end
      object btn_zoomin: TMenuItem
        Tag = 3
        Caption = #1055#1088#1080#1073#1083#1080#1079#1080#1090#1100
        OnClick = MainMenuView
      end
      object btn_zoomout: TMenuItem
        Tag = 4
        Caption = #1054#1090#1076#1072#1083#1080#1090#1100
        OnClick = MainMenuView
      end
      object btn_normalsize: TMenuItem
        Tag = 5
        Caption = #1053#1086#1088#1084#1072#1083#1100#1085#1099#1081' '#1088#1072#1079#1084#1077#1088
        ShortCut = 16432
        OnClick = MainMenuView
      end
      object N33: TMenuItem
        Caption = '-'
      end
      object btn_showlayers: TMenuItem
        Tag = 6
        Caption = #1057#1083#1086#1080
        OnClick = MainMenuView
      end
    end
    object btm_map: TMenuItem
      Caption = #1050#1072#1088#1090#1072
      object btn_newtileset: TMenuItem
        Tag = 1
        Caption = #1053#1086#1074#1099#1081' '#1085#1072#1073#1086#1088' '#1090#1072#1081#1083#1086#1074
        Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1085#1072#1073#1086#1088' '#1090#1072#1081#1083#1086#1074
        ImageIndex = 3
        OnClick = MainMenuMap
      end
      object btn_newdecor: TMenuItem
        Tag = 2
        Caption = #1053#1086#1074#1099#1081' '#1085#1072#1073#1086#1088' '#1076#1077#1082#1086#1088#1072#1094#1080#1081
        Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1085#1072#1073#1086#1088' '#1076#1077#1082#1086#1088#1072#1094#1080#1081
        ImageIndex = 3
        OnClick = MainMenuMap
      end
      object btn_newobject: TMenuItem
        Tag = 3
        Caption = #1053#1086#1074#1099#1081' '#1086#1073#1098#1077#1082#1090
        Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1086#1073#1098#1077#1082#1090
        ImageIndex = 3
        OnClick = MainMenuMap
      end
      object btn_loadback: TMenuItem
        Tag = 4
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1087#1086#1076#1083#1086#1078#1082#1091
        ImageIndex = 11
        OnClick = MainMenuMap
      end
      object N37: TMenuItem
        Caption = '-'
      end
      object btn_resize: TMenuItem
        Tag = 5
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1072#1079#1084#1077#1088' '#1082#1072#1088#1090#1099
        ImageIndex = 9
        OnClick = MainMenuMap
      end
    end
    object btn_layer: TMenuItem
      Caption = #1057#1083#1086#1081
      object btn_selectprev: TMenuItem
        Tag = 6
        Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1087#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1089#1083#1086#1081
        ShortCut = 33
        OnClick = MainMenuLayer
      end
      object btn_selectnext: TMenuItem
        Tag = 7
        Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1089#1083#1086#1081
        ShortCut = 34
        OnClick = MainMenuLayer
      end
      object N49: TMenuItem
        Caption = '-'
      end
      object btn_showhide: TMenuItem
        Tag = 10
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1057#1087#1088#1103#1090#1072#1090#1100' '#1076#1088#1091#1075#1080#1077' '#1089#1083#1086#1080
        ImageIndex = 1
        ShortCut = 24648
        OnClick = MainMenuLayer
      end
    end
    object btn_help: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
    end
  end
  object BindingsList: TBindingsList
    Methods = <>
    OutputConverters = <>
    UseAppManager = True
    Left = 276
    Top = 168
    object exp_BrushID: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = tb_collision
      SourceComponent = BindScope
      SourceExpression = 'ID'
      ControlExpression = 'Position'
      AutoActivate = False
      NotifyOutputs = False
      Direction = dirControlToSource
    end
    object exp_BrushLayer: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = ctrl_Layer
      SourceComponent = BindScope
      SourceExpression = 'layer'
      ControlExpression = 'ActivePageIndex'
      AutoActivate = False
      NotifyOutputs = False
      Direction = dirControlToSource
    end
    object exp_collision: TBindExpression
      Category = 'Binding Expressions'
      ControlComponent = edt_collision
      SourceComponent = tb_collision
      SourceExpression = 'Position'
      ControlExpression = 'Text'
      NotifyOutputs = False
      Direction = dirSourceToControl
    end
    object exp_BrushSize: TBindExpression
      Category = '-'
      ControlComponent = edt_BrushSize
      SourceComponent = BindScope
      SourceExpression = 'size'
      ControlExpression = 'Text'
      NotifyOutputs = True
      Direction = dirSourceToControl
    end
  end
  object BindScope: TBindScope
    AutoActivate = False
    Left = 360
    Top = 168
  end
  object OpenTilesetDialog: TOpenDialog
    Filter = 
      'All (*.png; *.bmp; *.jpeg; *.jpg)|*.png;*.bmp;*.jpeg;*.jpg|Porta' +
      'ble Network Graphics (*.png)|*.png|Bitmaps (*.bmp)|*.bmp|JPEG Im' +
      'age File (*.jpg)|*.jpeg; *.jpg'
    Left = 360
    Top = 112
  end
  object imglist_layer: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 101
    Top = 309
    Bitmap = {
      494C01011000A800640020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000A000000001002000000000000040
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000070000000F000000150000001600000016000000150000000F0000
      0007000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000060000001000000010000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000040000000D0000
      0015000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      001600000016000000150000000D000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      000F00000021000000330000003F00000043000000430000003F000000330000
      00210000000F0000000300000000000000000000000000000005000000100000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000150000000D00000004000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000110000003100000035000000190000
      0005000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000D0000002B0000
      003F000000430000004300000043000000430000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000003F0000002B0000000D000000050000000F000000150000
      0016000000160000001600000016000000160000001600000016000000160000
      00160000001600000016000000160000001600000016000000160000001D0000
      002F0C0F3073202B86C82F3FC4FF2F3FC4FF2F3FC4FF2F3FC4FF202B86C80C0F
      30730000002D0000001200000003000000000000000000000010000000310000
      0042000000430000004300000043000000430000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      00430000003F0000002B0000000D000000000000000500000010000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      001600000016000000160000001600000027008F4DFF008245F10000003A0000
      001F000000100000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000015626262C38989
      89FF868686FF868686FF868686FF868686FF868686FF868686FF868686FF8686
      86FF868686FF868686FF868686FF868686FF868686FF868686FF868686FF8686
      86FF868686FF898989FF626262C4000000150000000F0000002E000000410000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000461B24
      6EB23546CBFF4E60E8FF5E71FAFF6275FEFF6275FEFF5E71FAFF4E60E8FF3546
      CBFF1A236EB00000002D0000000F000000010000000000000016AA7641F3B379
      3FFFB2773CFFB1763BFFB1763BFFB1763BFFB1763BFFB1763BFFB1763BFFB176
      3BFFB1763BFFB1763BFFB1763BFFB1763BFFB1763BFFB1763BFFB1763BFFB176
      3BFFB1763BFFB1763BFFB1763BFFB1763BFFB1763BFFB1763BFFB1763BFFB277
      3CFFB3793FFF7D572FC400000015000000000000001000000031000000420000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      004300000043000000430000004300000048008D4BFF00C886FF00793FE90000
      0047000000300000001000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016898989FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF898989FF000000160000001594693BDBB88249FFB882
      49FFB88249FFB88249FFB88249FFB88249FFB88249FFB88249FFB88249FFB882
      49FFB88249FFB88249FFB88249FFB88249FFB88249FFB88249FF6B5C8FFF3748
      CEFF5A6CF8FF5D70FBFF5D70FBFF5D70FBFF5D70FBFF5D70FBFF5D70FBFF5A6C
      F8FF3748CEFF1B236EAD00000021000000070000000000000016B3793FFFFFF8
      E7FFFFF2DFFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1
      DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1
      DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF2
      DFFFFFF8E7FFB3793FFF000000160000000000000016A97640F2B3793FFFB277
      3CFFB1763BFFB1763BFFB1763BFFB1763BFFB1763BFFB1763BFFB1763BFFB176
      3BFFB1763BFFB1763BFFB2773BFFB6783EFFC07B43FFC87E46FFCB7E47FFCB80
      47FFCB8047FFCB8047FFCE7E47FFD97C46FF008947FF00E5A6FF00C181FF4183
      45FFC07441F00000001D00000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016868686FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF868686FF0000001600000016B88249FFFAE6CFFFFAE6
      CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6
      CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFC8BDCCFF3444CBFF5569
      F6FF586CF9FF586CF9FF586CF9FF586CF9FF586CF9FF586CF9FF586CF9FF586C
      F9FF5569F6FF3444CBFF0B0F31660000000F0000000000000016B2773CFFFFF2
      DFFFFBE8D1FFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7
      CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7
      CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFBE8
      D1FFFFF2DFFFB2773CFF000000160000000000000016B3793FFFFFF8E7FFFFF2
      DFFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1
      DDFFFFF1DDFFFFF1DDFFFFF1DEFFFFF6E5FF52B382FF008945FF008946FF0089
      46FF008947FF008947FF008947FF008846FF008341FF00DCA2FF00DCA1FF00BD
      81FF498344FF0000003300000014000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000016868686FFFFFF
      FFFFFBFBFBFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
      FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
      FAFFFBFBFBFFFFFFFFFF868686FF0000001600000016B88249FFFAE6CFFFF9E5
      CDFFF9E5CDFFF9E5CDFFF9E5CDFFF9E5CDFFF9E5CDFFF9E5CDFFF9E5CDFFF9E5
      CDFFF9E5CDFFF9E5CDFFF9E5CDFFF9E5CDFFF9E5CDFF6E73C7FF4558E4FF5368
      F7FF5368F7FF5368F7FF5368F7FF5368F7FF5368F7FF5368F7FF5368F7FF5368
      F7FF5368F7FF4558E4FF202C87C3000000150000000000000016B1763BFFFFF1
      DDFFF9E4CCFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3
      CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3
      CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF9E4
      CCFFFFF1DDFFB1763BFF000000160000000000000016B2773CFFFFF2DFFFFBE8
      D1FFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7
      CFFFFAE7CFFFFAE7CFFFFEE8D1FFFFEEDAFF008038FF2FE7BBFF00DAA1FF00DA
      A2FF00DAA2FF00DAA2FF00DAA2FF00D9A2FF00D8A0FF00D39DFF00D39CFF00D7
      A0FF00BB81FF00572DBF0000002E0000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000016868686FFFFFF
      FFFFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF7F7F7FFFFFFFFFF868686FF0000001600000016B88249FFFAE6CFFFF8E3
      CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3
      CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFF2F3FC4FF4C61F1FF4E64
      F4FF4E64F4FF4E64F4FF4E64F4FF4E64F4FF4E64F4FF4E64F4FF4E64F4FF4E64
      F4FF4E64F4FF4C61F1FF2F3FC4FF000000160000000000000016B1763BFFFFF1
      DEFFF8E2C8FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1
      C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1
      C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF8E2
      C8FFFFF1DEFFB1763BFF000000160000000000000016B1763BFFFFF1DDFFF9E4
      CCFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3
      CAFFF8E3CAFFF8E3CAFFFCE5CCFFFFEBD5FF007D37FF4DE4C1FF00CF9AFF00CF
      9BFF00CF9BFF00CF9BFF00CF9BFF00CF9BFF00CF9BFF00CD9AFF00CD9AFF00CF
      9BFF00D29FFF00B881FF005D31C0000000120000000000000000000000000000
      0000000000000000000000000000000000000000000000000016858686FFFFFF
      FFFFF4F4F4FFF3F3F3FFF3F3F4FFF3F3F4FFF3F3F4FFF3F3F4FFF3F3F4FFF3F3
      F4FFF3F3F4FFF3F3F4FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFFFFFFFFF868686FF0000001600000016B88249FFFAE6CFFFF7E1
      C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1
      C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FF2F3FC4FF5A6EF3FF485F
      F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF485FF2FF5A6EF3FF2F3FC4FF000000160000000000000016B1773BFFFFF1
      DEFFF7E1C5FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0
      C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0
      C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF7E1
      C5FFFFF1DEFFB1773BFF000000160000000000000016B1763BFFFFF1DEFFF8E2
      C8FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1
      C7FFF7E1C7FFF7E1C7FFFBE2C9FFFFE8D2FF007E36FF68E4CBFF00C897FF00C8
      98FF00C899FF00C899FF00C899FF00C899FF00C999FF00C999FF00C99AFF00C9
      99FF06CDA1FF2BDCB7FF008A47FF0000000D0000000500000010000000160000
      001600000016000000160000001600000016000000160000002784888BFFFFFF
      FFFFF2F5F5FFF2F4F5FFF2F4F5FFF2F4F5FFF2F4F5FFF2F4F5FFF2F4F5FFF2F4
      F5FFF2F4F5FFF2F3F4FFF1F2F2FFF0F1F0FFF0F0EFFFF0F0EFFFF0F0EFFFF0F0
      EFFFF0F0EFFFFFFFFFFF868686FF0000001600000016B88249FFFAE6CFFFF6E0
      C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0
      C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FF2F3FC4FF687BF3FF435B
      F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF435BF0FF687BF3FF2F3FC4FF000000150000000000000016B1773BFFFFF1
      DFFFF5DFC2FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DE
      C1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DE
      C1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DF
      C2FFFFF1DFFFB1773BFF000000160000000000000016B1773BFFFFF1DEFFF7E1
      C5FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0
      C4FFF6E0C4FFF6E0C4FFFAE2C6FFFFE7CEFF007E36FF83E7D7FF00C397FF00C3
      98FF00C399FF00C399FF00C399FF00C399FF00C398FF00C498FF00C599FF00C6
      9AFF60E0C7FF00B381FF005E31B3000000040000001000000031000000420000
      004300000043000000430000004300000043000000430000004884888BFFFFFF
      FFFFF2F5F5FFF2F4F5FFF2F4F5FFF2F4F5FFF2F4F5FFF2F4F5FFF2F4F5FFF2F4
      F5FFF2F4F5FFF2F3F4FFF1F2F2FFEDEFF1FFECECEDFFECECECFFECECECFFECEC
      ECFFECECECFFFFFFFFFF868686FF0000001600000016B88249FFFAE6CFFFF5DE
      C1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DE
      C1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FF2F3FC4FF8392F1FF3E57
      EDFF3E57EDFF3E57EDFF3E57EDFF3E57EDFF3E57EDFF3E57EDFF3E57EDFF3E57
      EDFF3E57EDFF8392F1FF2F3FC4FF0000000F0000000000000016B1773BFFFFF2
      DFFFF4DDBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DC
      BEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DC
      BEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DD
      BEFFFFF2DFFFB1773BFF000000160000000000000016B1773BFFFFF1DFFFF5DF
      C2FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DE
      C1FFF5DEC1FFF5DEC1FFF9DFC3FFFFE4CAFF007E36FF94EDE2FF48E8D2FF4CE7
      D3FF4DE7D3FF4DE7D3FF4EE8D3FF4EE8D3FF4CE7D1FF93E6D7FF00C097FF5CDC
      C6FF00AF7EFF00592DAE000000030000000000000016A97640F2B3793FFFB277
      3CFFB1763BFFB1763BFFB1763BFFB1763BFFB2763AFFB37637FFB27333FFAE6F
      2FFFAD6E2EFFAD6E2DFFAD6E2EFFAD6E2EFFAD6E2EFFAD6E2EFFAD6E2EFFAD6E
      2EFFAD6E2EFFAD6E2DFFB98651FFECF0F2FFE9EAEAFFE9E9E8FFE9E9E8FFE9E9
      E8FFE9E9E7FFFFFFFFFF868686FF0000001600000016B88249FFFAE6CFFFF4DC
      BEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DC
      BEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFF6C70C2FF7684E3FF596F
      EEFF3953EBFF3953EBFF3953EBFF3953EBFF3953EBFF3953EBFF3953EBFF3953
      EBFF596FEEFF7684E3FF202C86B9000000070000000000000016B1773BFFFFF2
      DFFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DA
      BBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DA
      BBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DA
      BBFFFFF2DFFFB1773BFF000000160000000000000016B1773BFFFFF2DFFFF4DD
      BEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DC
      BEFFF4DCBEFFF4DCBEFFF6DDBFFFFFE1C4FF46A56CFF007E37FF007E37FF007E
      37FF007E37FF007E37FF007E38FF008139FF008037FF80E3D5FF54D8C3FF00A9
      7BFF468342FF00000016000000000000000000000016B3793FFFFFF8E7FFFFF2
      DFFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF0DCFFFFEF
      DCFFFFEFDBFFFFEFDBFFFFEFDBFFFFEFDBFFFFEFDBFFFFEFDBFFFFEFDBFFFFEF
      DBFFFFF0DDFFFFF5E2FFAD6D2CFFEAEDF2FFE7E7E7FFE6E5E5FFE6E5E5FFE6E5
      E5FFE5E4E4FFFFFFFFFF868686FF0000001600000016B88249FFFAE6CFFFF3DA
      BBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DA
      BBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFC2B3BDFF3D4CCAFF919F
      F0FF4F65ECFF344EE9FF344EE9FF344EE9FF344EE9FF344EE9FF344EE9FF4F65
      ECFF919FF0FF3D4CCAFF0C0F314B000000010000000000000016B1773BFFFFF2
      DFFFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8
      B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8
      B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8
      B8FFFFF2DFFFB1773BFF000000160000000000000016B1773BFFFFF2DFFFF3DA
      BBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DA
      BBFFF3DABBFFF3DABBFFF4DABBFFF8DCBDFFFFDFC1FFFFE0C4FFFFE1C5FFFFE1
      C5FFFFE1C5FFFFE1C5FFFFE2C6FFFFE6CBFF00833BFF73E0D5FF00A678FF59B1
      7EFFCC7A40FF00000016000000000000000000000016B2773CFFFFF2DFFFFBE8
      D1FFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7
      CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7
      CFFFFBE8D1FFFFF0DCFFAD6D2BFFE6EAEFFFE4E4E3FFE3E2E1FFE3E2E1FFE3E2
      E1FFE2E1DFFFFFFFFFFF868686FF0000001600000016B88249FFFAE6CFFFF2D8
      B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8
      B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FF7878BFFF4353
      CDFF95A2F0FF7386EEFF435BE9FF2F4AE6FF2F4AE6FF435BE9FF7386EEFF95A2
      F0FF4353CDFF1A236E9C00000003000000000000000000000016B1773BFFFFF2
      E0FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7
      B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7
      B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7
      B5FFFFF2E0FFB1773BFF000000160000000000000016B1773BFFFFF2DFFFF2D8
      B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8
      B8FFF2D8B8FFF2D8B8FFF2D8B8FFF3D8B8FFF4D9B9FFF5D9BAFFF6D9BAFFF6D9
      BAFFF6D9BAFFF6D9BAFFFADABBFFFFE0C3FF00833DFF00A67DFF159351FFFFF9
      E9FFBA783EFF00000016000000000000000000000016B1763BFFFFF1DEFFF9E3
      CBFFF8E2C9FFF8E2C9FFF8E2C9FFF8E2C9FFF8E2C9FFF8E2C9FFF8E2C9FFF8E2
      C9FFF8E2C9FFF8E2C9FFF8E2C9FFF8E2C9FFF8E2C9FFF8E2C9FFF8E2C9FFF8E2
      C9FFF9E3CBFFFFEFDBFFAD6D2BFFE2E6EBFFE0E0E0FFDFDEDEFFDFDEDEFFDEDD
      DEFFDDDCDCFFFFFFFFFF868686FF0000001600000016B88249FFFAE6CFFFF1D7
      B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7
      B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FF8482
      BDFF3C4CCAFF7180E1FF93A0EFFF9AA7F2FF9AA7F2FF93A0EFFF7180E1FF3C4C
      CAFF6B5C8FFF0000001600000000000000000000000000000016B1773BFFFFF2
      E0FFF0D5B1FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5
      B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5
      B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5
      B1FFFFF2E0FFB1773BFF000000160000000000000016B1773BFFFFF2E0FFF1D7
      B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7
      B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7
      B5FFF1D7B5FFF1D7B5FFF4D8B6FFFFDCBCFF008039FF109253FFF8D8B5FFFFF5
      E4FFB3773CFF00000016000000000000000000000016B1773BFFFFF1DEFFF7E1
      C6FFF6E0C5FFF6E0C5FFF6E0C5FFF6E0C5FFF6E0C5FFF6E0C5FFF6E0C5FFF6E0
      C5FFF6E0C5FFF6E0C5FFF6E0C5FFF6E0C5FFF6E0C5FFF6E0C5FFF6E0C5FFF6E0
      C5FFF7E1C6FFFFF0DCFFAD6D2CFFDEE2E6FFDCDCDCFFDBDAD9FFDBDAD9FFDBDA
      D8FFDAD9D7FFFFFFFFFF868686FF0000001600000016B88249FFFAE6CFFFF0D5
      B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5
      B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5
      B2FFC0AFB6FF6B6DBEFF2F3FC4FF2F3FC4FF2F3FC4FF2F3FC4FF6B6DBEFFC8BD
      CCFFB88249FF0000001600000000000000000000000000000016B1773CFFFFF3
      E0FFEFD3ADFFEFD3ADFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3
      AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3
      AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3ADFFEFD3
      ADFFFFF3E0FFB1773CFF000000160000000000000016B1773BFFFFF2E0FFF0D5
      B1FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5
      B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5
      B2FFF0D5B2FFF0D5B2FFF1D5B2FFF7D7B5FFFFDAB9FFFFDAB8FFF8D7B5FFFFF3
      E1FFB2773CFF00000016000000000000000000000016B1773BFFFFF1DFFFF6DE
      C2FFF5DDC1FFF5DDC1FFF5DDC1FFF5DDC1FFF5DDC1FFF5DDC1FFF5DDC1FFF5DD
      C1FFF5DDC1FFF5DDC1FFF5DDC1FFF5DDC1FFF5DDC1FFF5DDC1FFF5DDC1FFF5DD
      C1FFF6DEC2FFFFF0DCFFAD6D2CFFD9DDE2FFD7D7D7FFD6D5D4FFD6D5D4FFD6D5
      D4FFD5D4D3FFFFFFFFFF868686FF0000001600000016B88249FFFAE6CFFFEFD3
      AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3
      AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3
      AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFFAE6
      CFFFB88249FF0000001600000000000000000000000000000016B1773CFFFFF3
      E1FFEED0A9FFEED1AAFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1
      ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1
      ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1AAFFEED0
      A9FFFFF3E1FFB1773CFF000000160000000000000016B1773CFFFFF3E0FFEFD3
      ADFFEFD3ADFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3
      AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3
      AEFFEFD3AEFFEFD3AEFFEFD3AEFFF0D3AEFFF2D4AFFFF1D3AEFFF0D3ADFFFFF3
      E0FFB1773CFF00000016000000000000000000000016B1773BFFFFF2DFFFF3DB
      BCFFF3DBBCFFF3DBBCFFF3DBBCFFF3DBBCFFF3DBBCFFF3DBBCFFF3DBBCFFF3DB
      BCFFF3DBBCFFF3DBBCFFF3DBBCFFF3DBBCFFF3DBBCFFF3DBBCFFF3DBBCFFF3DB
      BCFFF3DBBCFFFFF0DDFFAE6E2DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF898989FF0000001000000016B88249FFFAE6CFFFEED1
      ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1
      ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1
      ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFFAE6
      CFFFB88249FF0000001600000000000000000000000000000016B1773CFFFFF3
      E1FFECCEA6FFECCFA7FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCF
      A8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCF
      A8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA7FFECCE
      A6FFFFF3E1FFB1773CFF000000160000000000000016B1773CFFFFF3E1FFEED0
      A9FFEED1AAFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1
      ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1
      ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1AAFFEED0A9FFFFF3
      E1FFB1773CFF00000016000000000000000000000016B1773BFFFFF2DFFFF2D8
      B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8
      B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8
      B8FFF2D8B8FFFFF1DEFFB27231FF84898EFF868788FF868686FF868686FF8686
      86FF868686FF898989FF848484EE0000000500000016B88249FFFAE6CFFFECCF
      A8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCF
      A8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCF
      A8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFFAE6
      CFFFB88249FF0000001600000000000000000000000000000016B1773CFFFFF3
      E2FFEBCCA3FFEBCDA4FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCD
      A5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCD
      A5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA4FFEBCC
      A3FFFFF3E2FFB1773CFF000000160000000000000016B1773CFFFFF3E1FFECCE
      A6FFECCFA7FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCF
      A8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCF
      A8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA7FFECCEA6FFFFF3
      E1FFB1773CFF00000016000000000000000000000016B1773BFFFFF2E0FFF1D6
      B3FFF1D6B4FFF1D6B4FFF1D6B4FFF1D6B4FFF1D6B4FFF1D6B4FFF1D6B4FFF1D6
      B4FFF1D6B4FFF1D6B4FFF1D6B4FFF1D6B4FFF1D6B4FFF1D6B4FFF1D6B4FFF1D6
      B4FFF1D6B3FFFFF2DFFFB57534FF000000160000000000000000000000000000
      00000000000000000000000000000000000000000016B88249FFFAE6CFFFEBCD
      A5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCD
      A5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCD
      A5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFFAE6
      CFFFB88249FF0000001600000000000000000000000000000016B1773CFFFFF3
      E2FFE9CB9FFFEACCA1FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACC
      A2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACC
      A2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA1FFE9CB
      9FFFFFF3E2FFB1773CFF000000160000000000000016B1773CFFFFF3E2FFEBCC
      A3FFEBCDA4FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCD
      A5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCD
      A5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA4FFEBCCA3FFFFF3
      E2FFB1773CFF00000016000000000000000000000016B1773BFFFFF3E0FFEFD4
      AFFFEFD4B0FFEFD4B0FFEFD4B0FFEFD4B0FFEFD4B0FFEFD4B0FFEFD4B0FFEFD4
      B0FFEFD4B0FFEFD4B0FFEFD4B0FFEFD4B0FFEFD4B0FFEFD4B0FFEFD4B0FFEFD4
      B0FFEFD4AFFFFFF3DFFFB47636FF000000160000000000000000000000000000
      00000000000000000000000000000000000000000016B88249FFFAE6CFFFEACC
      A2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACC
      A2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACC
      A2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFFAE6
      CFFFB88249FF0000001600000000000000000000000000000016B1773CFFFFF3
      E2FFE8C99CFFE9CA9EFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA
      9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA
      9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9EFFE8C9
      9CFFFFF3E2FFB1773CFF000000160000000000000016B1773CFFFFF3E2FFE9CB
      9FFFEACCA1FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACC
      A2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACC
      A2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA1FFE9CB9FFFFFF3
      E2FFB1773CFF00000016000000000000000000000016B1773CFFFFF3E1FFEED0
      AAFFEED1ABFFEED1ACFFEED1ACFFEED1ACFFEED1ACFFEED1ACFFEED1ACFFEED1
      ACFFEED1ACFFEED1ACFFEED1ACFFEED1ACFFEED1ACFFEED1ACFFEED1ACFFEED1
      ABFFEED0AAFFFFF3E0FFB37639FF000000160000000000000000000000000000
      00000000000000000000000000000000000000000016B88249FFFAE6CFFFE9CA
      9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA
      9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA
      9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFFAE6
      CFFFB88249FF0000001600000000000000000000000000000016B1773CFFFFF4
      E2FFE7C699FFE8C89BFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C8
      9CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C8
      9CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89BFFE7C6
      99FFFFF4E2FFB1773CFF000000160000000000000016B1773CFFFFF3E2FFE8C9
      9CFFE9CA9EFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA
      9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA
      9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9EFFE8C99CFFFFF3
      E2FFB1773CFF00000016000000000000000000000016B1773CFFFFF3E1FFECCE
      A6FFECCFA7FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCF
      A8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCF
      A7FFECCEA6FFFFF3E1FFB2773BFF000000160000000000000000000000000000
      00000000000000000000000000000000000000000016B88249FFFAE6CFFFE8C8
      9CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C8
      9CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C8
      9CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFFAE6
      CFFFB88249FF0000001600000000000000000000000000000016B2773CFFFFF4
      E3FFE6C496FFE7C698FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C6
      99FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C6
      99FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C698FFE6C4
      96FFFFF4E3FFB2773CFF000000160000000000000016B1773CFFFFF4E2FFE7C6
      99FFE8C89BFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C8
      9CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C8
      9CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89BFFE7C699FFFFF4
      E2FFB1773CFF00000016000000000000000000000016B1773CFFFFF3E2FFEBCB
      A2FFEBCCA3FFEBCCA4FFEBCCA4FFEBCCA4FFEBCCA4FFEBCCA4FFEBCCA4FFEBCC
      A4FFEBCCA4FFEBCCA4FFEBCCA4FFEBCCA4FFEBCCA4FFEBCCA4FFEBCCA4FFEBCC
      A3FFEBCBA2FFFFF3E2FFB1773CFF000000160000000000000000000000000000
      00000000000000000000000000000000000000000016B88249FFFAE6CFFFE7C6
      99FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C6
      99FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C6
      99FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFFAE6
      CFFFB88249FF0000001600000000000000000000000000000016B2773CFFFFF4
      E3FFE5C292FFE6C495FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C4
      96FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C4
      96FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C495FFE5C2
      92FFFFF4E3FFB2773CFF000000160000000000000016B2773CFFFFF4E3FFE6C4
      96FFE7C698FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C6
      99FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C6
      99FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C698FFE6C496FFFFF4
      E3FFB2773CFF00000016000000000000000000000016B1773CFFFFF3E2FFE8C9
      9DFFE9CA9FFFE9CAA0FFE9CAA0FFE9CAA0FFE9CAA0FFE9CAA0FFE9CAA0FFE9CA
      A0FFE9CAA0FFE9CAA0FFE9CAA0FFE9CAA0FFE9CAA0FFE9CAA0FFE9CAA0FFE9CA
      9FFFE8C99DFFFFF3E2FFB1773CFF000000160000000000000000000000000000
      00000000000000000000000000000000000000000016B88249FFFAE6CFFFE6C4
      96FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C4
      96FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C4
      96FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFFAE6
      CFFFB88249FF0000001600000000000000000000000000000016B2773CFFFFF4
      E4FFE4C08FFFE5C192FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C2
      93FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C2
      93FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C192FFE4C0
      8FFFFFF4E4FFB2773CFF000000160000000000000016B2773CFFFFF4E3FFE5C2
      92FFE6C495FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C4
      96FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C4
      96FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C495FFE5C292FFFFF4
      E3FFB2773CFF00000016000000000000000000000016B1773CFFFFF4E2FFE7C5
      99FFE8C79BFFE8C79CFFE8C79CFFE8C79CFFE8C79CFFE8C79CFFE8C79CFFE8C7
      9CFFE8C79CFFE8C79CFFE8C79CFFE8C79CFFE8C79CFFE8C79CFFE8C79CFFE8C7
      9BFFE7C599FFFFF4E2FFB1773CFF000000160000000000000000000000000000
      00000000000000000000000000000000000000000016B88249FFFAE6CFFFE5C2
      93FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C2
      93FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C2
      93FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFFAE6
      CFFFB88249FF0000001600000000000000000000000000000016B2773CFFFFF4
      E4FFE3BF8BFFE4C08FFFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C1
      90FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C1
      90FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C08FFFE3BF
      8BFFFFF4E4FFB2773CFF000000160000000000000016B2773CFFFFF4E4FFE4C0
      8FFFE5C192FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C2
      93FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C2
      93FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C192FFE4C08FFFFFF4
      E4FFB2773CFF00000016000000000000000000000016B2773CFFFFF4E3FFE6C3
      95FFE7C597FFE7C598FFE7C598FFE7C598FFE7C598FFE7C598FFE7C598FFE7C5
      98FFE7C598FFE7C598FFE7C598FFE7C598FFE7C598FFE7C598FFE7C598FFE7C5
      97FFE6C395FFFFF4E3FFB2773CFF000000160000000000000000000000000000
      00000000000000000000000000000000000000000016B88249FFFAE6CFFFE4C1
      90FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C1
      90FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C1
      90FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFFAE6
      CFFFB88249FF0000001600000000000000000000000000000016B2773CFFFFF5
      E4FFE1BC88FFE3BE8CFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF
      8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF
      8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BE8CFFE1BC
      88FFFFF5E4FFB2773CFF000000160000000000000016B2773CFFFFF4E4FFE3BF
      8BFFE4C08FFFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C1
      90FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C1
      90FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C08FFFE3BF8BFFFFF4
      E4FFB2773CFF00000016000000000000000000000016B2773CFFFFF4E4FFE4C0
      8FFFE5C192FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C2
      93FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C1
      92FFE4C08FFFFFF4E4FFB2773CFF000000160000000000000000000000000000
      00000000000000000000000000000000000000000016B88249FFFAE6CFFFE3BF
      8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF
      8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF
      8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFFAE6
      CFFFB88249FF0000001600000000000000000000000000000016B2773CFFFFF5
      E4FFE0BA84FFE1BB88FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC
      89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC
      89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE1BB88FFE0BA
      84FFFFF5E4FFB2773CFF000000160000000000000016B2773CFFFFF5E4FFE1BC
      88FFE3BE8CFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF
      8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF
      8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BE8CFFE1BC88FFFFF5
      E4FFB2773CFF00000016000000000000000000000016B2773CFFFFF4E4FFE3BE
      8AFFE4BF8EFFE4C08FFFE4C08FFFE4C08FFFE4C08FFFE4C08FFFE4C08FFFE4C0
      8FFFE4C08FFFE4C08FFFE4C08FFFE4C08FFFE4C08FFFE4C08FFFE4C08FFFE4BF
      8EFFE3BE8AFFFFF4E4FFB2773CFF000000160000000000000000000000000000
      00000000000000000000000000000000000000000016B88249FFFAE6CFFFE2BD
      8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD
      8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD
      8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFFAE6
      CFFFB88249FF0000001600000000000000000000000000000015B2783CFFFFF5
      E4FFDEB67DFFDFB781FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB8
      81FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB8
      81FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB781FFDEB6
      7DFFFFF5E4FFB2783CFF000000150000000000000016B2773CFFFFF5E4FFE0BA
      84FFE1BB88FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC
      89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC
      89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE1BB88FFE0BA84FFFFF5
      E4FFB2773CFF00000016000000000000000000000016B2773CFFFFF4E4FFE0BB
      85FFE1BC89FFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD
      8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE2BD8AFFE1BC
      89FFE0BB85FFFFF4E4FFB2773CFF000000160000000000000000000000000000
      00000000000000000000000000000000000000000014B88249FFFAE6CFFFE1BB
      87FFE1BB87FFE1BB87FFE1BB87FFE1BB87FFE1BB87FFE1BB87FFE1BB87FFE1BB
      87FFE1BB87FFE1BB87FFE1BB87FFE1BB87FFE1BB87FFE1BB87FFE1BB87FFE1BB
      87FFE1BB87FFE1BB87FFE1BB87FFE1BB87FFE1BB87FFE1BB87FFE1BB87FFFAE6
      CFFFB88249FF000000140000000000000000000000000000000DB3793FFFFFF9
      E9FFFFF5E4FFFFF5E4FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5
      E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5
      E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E4FFFFF5
      E4FFFFF9E9FFB3793FFF0000000D0000000000000015B2783CFFFFF5E4FFDEB6
      7DFFDFB781FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB8
      81FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB8
      81FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB781FFDEB67DFFFFF5
      E4FFB2783CFF00000015000000000000000000000015B2783CFFFFF5E4FFDEB6
      7DFFDFB780FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB8
      81FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB7
      80FFDEB67DFFFFF5E4FFB2783CFF000000150000000000000000000000000000
      0000000000000000000000000000000000000000000DB88249FFFAE6CFFFFAE6
      CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6
      CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6
      CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6CFFFFAE6
      CFFFB88249FF0000000D000000000000000000000000000000047E572FB4B37A
      3FFFB2783CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB277
      3CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB277
      3CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB278
      3CFFB37A3FFF7E572FB400000004000000000000000DB3793FFFFFF9E9FFFFF5
      E4FFFFF5E4FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5
      E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5
      E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E4FFFFF5E4FFFFF9
      E9FFB3793FFF0000000D00000000000000000000000DB3793FFFFFF9E9FFFFF5
      E4FFFFF5E4FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5
      E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5
      E4FFFFF5E4FFFFF9E9FFB3793FFF0000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000372502EA4B88249FFB882
      49FFB88249FFB88249FFB88249FFB88249FFB88249FFB88249FFB88249FFB882
      49FFB88249FFB88249FFB88249FFB88249FFB88249FFB88249FFB88249FFB882
      49FFB88249FFB88249FFB88249FFB88249FFB88249FFB88249FFB88249FFB882
      49FF72502EA40000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000047E572FB4B37A3FFFB278
      3CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB277
      3CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB277
      3CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2783CFFB37A
      3FFF7E572FB4000000040000000000000000000000047E572FB4B37A3FFFB278
      3CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB277
      3CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB277
      3CFFB2783CFFB37A3FFF7E572FB4000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000050505061010101115151516151515161010
      1011050505060000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000040000000D000000150000
      0016000000160000001600000016000000160000001600000011000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000800000012000000160000001600000016000000160000
      001600000016000000150000000D000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000010101011303030323E3E3E433E3E3E433030
      3032101010110000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D0000002B0000003F0000
      0043000000430000004300000043000000430000004300000032000000110000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000030000001600000035000000430000004300000043000000430000
      0043000000430000003F0000002B0000000D0000000600000011000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000011000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000141414152C73B6FF2B70B4FF2C71B4FF2E73
      B7FF262626271010101105050506000000000000000000000000000000000000
      00000000000000000000000000000000000000000015006234C4008948FF0087
      46FF008746FF008746FF008746FF008948FF008B4AFF008D4CFF000000110000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010023144F008D4CFF008B4AFF008948FF008746FF008746FF0087
      46FF008746FF008948FF006234C4000000150000000B000000220000002D0000
      002D0000002D0000002D000000320000003D0000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004300000043000000430000003D000000320000002D0000
      002D0000002D0000002D000000220000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C0D2C72B5FF4DC9FDFF4CC7FBFF2C70
      B3FF424242483030303210101011000000000000000000000000000000000000
      00000000000000000000000000000000000000000016008948FF0AE8ABFF00E2
      A1FF00E1A1FF00E1A1FF00E2A2FF00E6A5FF0ACA8CFF008C4BFF000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000006008C4BFF0ACA8CFF00E6A5FF00E2A2FF00E1A1FF00E1
      A1FF00E2A1FF0AE8ABFF008948FF00000016000000065B5B5BFF5B5B5BFF5B5B
      5BFF5B5B5BFF5B5B5BFF5C5A59FF5D5956FF5D5854FF5D5753FF5D5753FF5D57
      53FF5D5753FF5D5753FF5D5753FF5D5753FF5D5753FF5D5753FF5D5753FF5D57
      53FF5D5753FF5D5753FF5D5753FF5D5854FF5D5956FF5C5A59FF5B5B5BFF5B5B
      5BFF5B5B5BFF5B5B5BFF5B5B5BFF00000006000000030000000B000000140000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      001600000016000000140000000B000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303046A8298B33792CFFF4BC5F9FF3486
      C2FF3489C5FF3075B7FF26262627101010110505050600000000000000000000
      00000000000000000000000000000000000000000016008746FF1BE3ADFF00D8
      9BFF00D89AFF00D89AFF00D99CFF1BC48CFF008745FF00000022000000060000
      0006000000110000001100000006000000000000000000000006000000110000
      0011000000060000000600000022008745FF1BC48CFF00D99CFF00D89AFF00D8
      9AFF00D89BFF1BE3ADFF008746FF000000160000000000000000000000000000
      000000000000000000000000001639699CFF4C87B3FF4881AFFF4881AFFF4881
      AFFF4881AFFF4881AFFF4881AFFF4881AFFF4881AFFF4881AFFF4881AFFF4881
      AFFF4881AFFF4881AFFF4881AFFF4C87B3FF39699CFF00000016000000000000
      0000000000000000000000000000000000000000000B000000270000003D0000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000003D000000270000000B030303040C0C0C0D141414151515
      1516151515161515151615151516151515161515151615151516151515161515
      1516151515161515151615151516151515161919191A687F95B23993D0FF51C9
      FDFF51C9FCFF2E72B4FF42424248343434372121212215151516151515161313
      13140C0C0C0D03030304000000000000000000000016008745FF2CE0B4FF00D2
      9AFF00D29AFF00D29AFF00D49CFF2EC496FF008744FF0000003D000000220000
      0022000000370000003200000011000000000000000000000011000000320000
      003700000022000000220000003D008744FF2EC496FF00D49CFF00D29AFF00D2
      9AFF00D29AFF2CE0B4FF008745FF000000160000000000000000000000000000
      00000000000000000000000000163D6795FF5489B1FF4A80AAFF4B81AAFF4B81
      AAFF4B81AAFF4B81AAFF4B81AAFF4B81AAFF4B81AAFF4B81AAFF4B81AAFF4B81
      AAFF4B81AAFF4B81AAFF4A80AAFF5489B1FF3D6795FF00000016000000000000
      00000000000000000000000000000000000000000014162D499E2B5992FF2B58
      91FF2B5892FF2B5992FF2B5992FF2B5992FF2B5992FF2B5992FF2B5992FF2B58
      92FF2B5892FF2B5791FF2B5791FF2B5791FF2B5791FF2B5791FF2B5791FF2B58
      92FF2B5892FF2B5992FF2B5992FF2B5992FF2B5992FF2B5992FF2B5992FF2B58
      92FF2B5891FF2B5992FF162D499E000000140C0C0C0D2929292B3B3B3B3F3E3E
      3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E
      3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E4340404046637B90B33793
      D3FF59CEFFFF3989C4FF3B8DC6FF3275B6FF424242483E3E3E433E3E3E433B3B
      3B3F2E2E2E3016161617040404050000000000000016008745FF3CE1BAFF00CF
      99FF00CF9AFF00CF9AFF00D09BFF00D49FFF00B880FF008946FF000000480000
      0048008C4AFF008D4CFF00000016000000000000000000000016008D4CFF008C
      4AFF0000004800000048008946FF00B880FF00D49FFF00D09BFF00CF9AFF00CF
      9AFF00CF99FF3CE1BAFF008745FF000000160000000000000000000000000000
      00000000000000000000000000163D6794FF5C8DB4FF4B81ABFF4C81ABFF4C81
      ABFF4C81ABFF4C81ABFF4C81ABFF4C81ABFF4C81ABFF4C81ABFF4C81ABFF4C81
      ABFF4C81ABFF4C81ABFF4B81ABFF5C8DB4FF3D6794FF00000016000000000000
      000000000000000000000000000000000000000000162B5892FF2E97D8FF2D84
      C2FF2D86C3FF2D86C4FF2D87C4FF2D87C4FF2D87C4FF2D87C4FF2D87C4FF2D86
      C4FF2D84C2FF2C81BFFF2B7EBDFF2B7EBDFF2B7EBDFF2B7EBDFF2C81BFFF2D84
      C2FF2D86C4FF2D87C4FF2D87C4FF2D87C4FF2D87C4FF2D87C4FF2D86C4FF2D86
      C3FF2D84C2FF2E97D8FF2B5892FF00000016141414159B8558C4B67B0BFFB478
      06FFB47704FFB47704FFB47704FFB47704FFB47704FFB47704FFB47704FFB477
      04FFB47704FFB47704FFB57704FFB67702FFB97800FFBF7800FFC67800FF5A6E
      68FF3691D1FF62D3FFFF64D3FEFF52B1E2FF3173B4FF3477B6FF3377B8FF497A
      A0FF728289C433333336141414150202020300000016008744FF4CE1C2FF00CB
      99FF00CB9AFF00CB9AFF00CB9AFF00CC9CFF00D0A0FF00B680FF008845FF0088
      44FF50D4AFFF008B48FF00000016000000000000000000000016008B48FF50D4
      AFFF008844FF008845FF00B680FF00D0A0FF00CC9CFF00CB9AFF00CB9AFF00CB
      9AFF00CB99FF4CE1C2FF008744FF000000160000000000000000000000000000
      00000000000000000000000000163D6894FF6293B8FF4C83ADFF4D83ADFF4D83
      ADFF4D83ADFF4D83ADFF4D83ADFF4D83ADFF4D83ADFF4D83ADFF4D83ADFF4D83
      ADFF4D83ADFF4D83ADFF4C83ADFF6293B8FF3D6894FF00000016000000000000
      000000000000000000000000000000000000000000162B5790FF309ADAFF2E89
      C7FF2C6EA9FF2C6FADFF2C70AEFF2C71AEFF2C71AEFF2C71AEFF2C71AEFF2C70
      ADFF2B6CAAFF47DCFFFF47D9FFFF47D8FFFF47D8FFFF47D9FFFF47DCFFFF2B6C
      AAFF2C70ADFF2C71AEFF2C71AEFF2C71AEFF2C71AEFF2C70AEFF2C6FADFF2C6E
      A9FF2E89C7FF309ADAFF2B5790FF0000001615151516B67B0BFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF78A8D2FF3D93CDFF6ED6FDFF5EC8F9FF47B5F6FF4BB8F8FF4BB9F9FF40AB
      F1FF388CCDFF4B82AFEE2A2A2A2C0A0A0A0B00000016008845FF5CE5CCFF5CD0
      AEFF60D0AEFF00CA9DFF00C89BFF00C89BFF00CA9DFF00CCA0FF00B17BFF00B0
      7AFF5FE7CEFF008945FF00000016000000000000000000000016008945FF5FE7
      CEFF00B07AFF00B17BFF00CCA0FF00CA9DFF00C89BFF00C89BFF00CA9DFF60D0
      AEFF5CD0AEFF5CE5CCFF008845FF000000160000000000000000000000000000
      00000000000000000000000000163E6894FF6897BDFF4C83AFFF4E84AFFF4E84
      AFFF4E84AFFF4E84AFFF4E84AFFF4E84AFFF4E84AFFF4E84AFFF4E84AFFF4E84
      AFFF4E84AFFF4E84AFFF4C83AFFF6897BDFF3E6894FF00000016000000000000
      000000000000000000000000000000000000000000162B5790FF2E96D6FF2E93
      D3FF2C7EBFFF295898FF29599CFF29599CFF29599CFF29599CFF29599CFF2958
      9CFF29579AFF285397FF275196FF275195FF275195FF275196FF285397FF2957
      9AFF29589CFF29599CFF29599CFF29599CFF29599CFF29599CFF295898FF2C7E
      BFFF2E93D3FF2E96D6FF2B5790FF0000001615151516B47806FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF1F68AFFF67D0FDFF56BEF7FF72D6FCFF76D8FCFF77D9FCFF74D8
      FEFF5AC5FCFF3C8FCCFF6C7A86A01313131400000011008A47FF71DBC2FF0086
      41FF008540FF73D6BBFF00C59DFF00C49BFF00C49BFF00C59CFF00C69DFF00C5
      9CFF6EE5D0FF008843FF00000016000000000000000000000016008843FF6EE5
      D0FF00C59CFF00C69DFF00C59CFF00C49BFF00C49BFF00C59DFF73D6BBFF0085
      40FF008641FF71DBC2FF008A47FF000000110000000000000000000000000000
      00000000000000000000000000163D6895FF6D9CC0FF4D84B1FF4F85B1FF4F85
      B1FF4F85B1FF4F85B1FF4F85B1FF4F85B1FF4F85B1FF4F85B1FF4F85B1FF4F85
      B1FF4F85B1FF4F85B1FF4D84B1FF6D9CC0FF3D6895FF00000016000000000000
      000000000000000000000000000000000000000000162B5790FF2E92D2FF2E8E
      CEFF2C8CD3FF44B47DFF3AAF7CFF3BAF7DFF3BAF7DFF3BAF7DFF3BAF7DFF3BAF
      7DFF3BAF7DFF3AAE7CFF3AAE7CFF3AAE7CFF3AAE7CFF3AAE7CFF3BAE7CFF3BB0
      7DFF3BB07DFF3BAF7DFF3BAF7DFF3BAF7DFF3BAF7DFF3AAF7CFF44B47DFF2C8C
      D3FF2E8ECEFF2E92D2FF2B5790FF0000001615151516B47704FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF1E68AEFF5CC8FDFF81DCFEFF7CDBFDFF7CDBFEFF7CDDFFFF81DE
      FFFF84E1FFFF57BFF6FF3980B9FF1515151600000006008D4CFF008C49FF0000
      000600000006008742FF85DAC5FF00C19BFF00C19AFF00C19BFF00C19BFF00C0
      99FF80E5D6FF008742FF00000016000000000000000000000016008742FF80E5
      D6FF00C099FF00C19BFF00C19BFF00C19AFF00C19BFF85DAC5FF008742FF0000
      000600000006008C49FF008D4CFF000000060000000000000000000000000000
      00000000000000000000000000163E6995FF73A0C4FF4E86B3FF5087B3FF5087
      B3FF5087B3FF5087B3FF5087B3FF5087B3FF5087B3FF5087B3FF5087B3FF5087
      B3FF5087B3FF5087B3FF4E86B3FF73A0C4FF3E6995FF00000016000000000000
      000000000000000000000000000000000000000000162B5791FF2E90CEFF2E8B
      CBFF2B87CFFF58BF90FF40B488FF41B48AFF41B48AFF41B48AFF41B48AFF41B4
      8AFF41B48AFF41B48AFF41B48AFF41B48AFF41B48AFF41B58AFF42B78AFF43BB
      8AFF43BB8AFF42B78AFF41B58AFF41B48AFF41B48AFF40B488FF58BF90FF2B87
      CFFF2E8BCBFF2E90CEFF2B5791FF0000001615151516B47704FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF236FB3FF68D3FEFF79DAFDFF78DAFDFF68C7EFFF3C8FC6FF3D8F
      C8FF6BCBF2FF6DD8FFFF397BB8FF151515160000000000000000000000000000
      0000000000060000002200853EFF93DCC8FF00BC99FF00BD99FF00BD99FF00BC
      97FF91E8DBFF008742FF00000016000000000000000000000016008742FF91E8
      DBFF00BC97FF00BD99FF00BD99FF00BC99FF93DCC8FF00853EFF000000220000
      0006000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000163D6995FF7BA5C8FF4E87B4FF4E83AFFF4F84
      AFFF5188B4FF5188B4FF5188B4FF5188B4FF5188B4FF5188B4FF5188B4FF5188
      B4FF5188B4FF5088B4FF4E86B3FF7AA5C8FF3D6995FF00000016000000000000
      000000000000000000000000000000000000000000162B5791FF2E8DCBFF2D88
      C7FF2882CAFF6ACD9EFF45BC8EFF46BC90FF46BC91FF46BC91FF46BC91FF46BC
      91FF46BC91FF46BC91FF46BC91FF46BC91FF46BC91FF47BD91FF4AC491FF2443
      8CFF24438CFF4AC491FF47BD91FF46BC91FF46BC90FF45BC8EFF6ACD9EFF2882
      CAFF2D88C7FF2E8DCBFF2B5791FF0000001615151516B47704FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF216FB4FF6DD8FEFF74D8FCFF74D9FDFF3B8EC7FFFFFFFFFFFFFF
      FFFF3E91C9FF72DEFFFF3A7CBAFF131313140000000000000000000000000000
      0000000000110000003700853DFF9DDECFFF00B597FF00B798FF00B698FF00B5
      96FFA0EAE3FF008741FF00000015000000000000000000000015008741FFA0EA
      E3FF00B596FF00B698FF00B798FF00B597FF9DDECFFF00853DFF000000370000
      0011000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000163D6A95FF80AACCFF5189B6FF4B7CA4FF4B7C
      A4FF548BB7FF538AB6FF538AB6FF538AB6FF538AB6FF538AB6FF538AB6FF538A
      B6FF538AB6FF538AB6FF5088B5FF80AACCFF3D6A95FF00000016000000000000
      000000000000000000000000000000000000000000162B5891FF2E8BC9FF2C86
      C5FF247DC6FF72D9ABFF3EC394FF3EC296FF3FC397FF3FC397FF3FC397FF3FC3
      97FF3FC397FF3FC397FF3FC397FF3FC397FF40C397FF42C597FF4ACE99FF2150
      92FF215092FF4ACE99FF42C597FF40C397FF3FC296FF3EC394FF72D9ABFF247D
      C6FF2C86C5FF2E8BC9FF2B5891FF0000001615151516B47704FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF3B7CBAFF65CEF6FF6FD8FCFF6FD9FCFF3C8FC9FFE5EAF2FFE5EB
      F2FF3F94CBFF6ED6FBFF3C82BBFF0A0A0A0B0000000000000000000000000000
      000000000011008B48FFB7EBE5FFAEEFEBFFB0EDE9FFB2EEE9FFB2EEE9FFB1EE
      E9FFB4F1EFFF008944FF0000000D00000000000000000000000D008944FFB4F1
      EFFFB1EEE9FFB2EEE9FFB2EEE9FFB0EDE9FFAEEFEBFFB7EBE5FF008B48FF0000
      0011000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000163E6A96FF86AED0FF5289B8FF487298FF4972
      98FF568BB8FF548BB8FF548BB8FF548BB8FF548BB8FF548BB8FF548BB8FF548B
      B8FF548BB8FF538BB8FF5189B7FF86AED0FF3E6A96FF00000016000000000000
      000000000000000000000000000000000000000000162B5891FF2E87C6FF2B82
      C2FF1D78C1FFFFFBD0FFFFECBCFFFFEBBEFFFFEBBEFFFFEBBEFFFFEBBEFFFFEB
      BEFFFFEBBEFFFFEBBEFFFFEBBEFFFFECBFFFFFEDC0FFFFF2C2FFFFFCC4FF1D59
      97FF1D5997FFFFFCC4FFFFF2C2FFFFEDC0FFFFECBEFFFFECBCFFFFFBD0FF1D78
      C1FF2B82C2FF2E87C6FF2B5891FF0000001615151516B47704FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF99BCDBFF398FC9FF6AD8FDFF6BD7FCFF5EC5EFFF3D92C9FF3E93
      CCFF61CBF5FF4B9ED1FF6B767F8D020202030000000000000000000000000000
      000000000006008D4BFF008A45FF008742FF008741FF008741FF008741FF0087
      41FF008944FF006134B400000004000000000000000000000004006134B40089
      44FF008741FF008741FF008741FF008741FF008742FF008A45FF008D4BFF0000
      0006000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000163D6A96FF8CB3D3FF548AB7FF39A8DEFF26BC
      F9FF578CB8FF558DBAFF558DBAFF558DBAFF558DBAFF558DBAFF558DBAFF558D
      BAFF558DBAFF548DBAFF528BB9FF8CB3D3FF3D6A96FF00000016000000000000
      000000000000000000000000000000000000000000162B5892FF2D85C2FF2A80
      BEFF1775BDFFFFF9D0FFFFE5B3FFFFE4B5FFFFE4B5FFFFE4B5FFFFE4B5FFFFE4
      B5FFFFE4B5FFFFE4B5FFFFE5B6FFFFE7B7FFF8E1B3FF42A784FF1B9D78FF2363
      A1FF2363A1FF1B9D78FF42A784FFF8E1B3FFFFE7B7FFFFE6B3FFFFF9D0FF1775
      BDFF2A80BEFF2D85C2FF2B5892FF0000001615151516B47704FFFFFFFFFFFEFF
      FFFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFEFE
      FDFFFFFFFFFFFFFFFFFF4A8BC1FF3990CAFF5DCAF4FF66D8FEFF67DAFFFF60D0
      FAFF459DD6FF5389B6E704040405000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000163D6B97FF93B7D5FF5689B7FF26B9F6FF5785
      B0FF588DBBFF568EBCFF568EBCFF568EBCFF568EBCFF568EBCFF568EBCFF568E
      BCFF568EBCFF558EBCFF528CBBFF92B8D6FF3D6B97FF00000016000000000000
      000000000000000000000000000000000000000000162B5992FF2D81BFFF2A7B
      BBFF1772B9FFFFF9D2FFFFE3AEFFFFE2B1FFFFE2B1FFFFE2B0FFFFE2B0FFFFE2
      B0FFFFE2B0FFFFE2B1FFFFE2B1FFFFE7B4FF1E9F80FF21A081FF2AA482FF2DA7
      82FF2DA782FF2AA482FF21A081FF1E9F80FFFFE7B4FFFFE4AFFFFFF9D2FF1772
      B9FF2A7BBBFF2D81BFFF2B5992FF0000001615151516B47704FFFFFFFFFFFBFA
      FCFFFAF9F9FFFAF9F9FFFAF9F9FFFAF9F9FFFAF9F9FFFAF9F9FFFAF9F9FFFAF9
      F9FFFAF9F9FFFAF9F9FFFAF9F9FFFAF9F9FFFAF9F9FFFAF9F9FFFAF9F9FFFAF9
      F9FFFBFAF9FFFFFCFBFFFFFFFEFF98BAD8FF4083BDFF2770B4FF2771B5FF478D
      C9FF80805BFF1515151600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000163E6B98FF98BCD9FF578BB9FF26BAF7FF527D
      A6FF5990BEFF5790BEFF5790BEFF5790BEFF5790BEFF5790BEFF5790BEFF5790
      BEFF5790BEFF5690BEFF538DBDFF98BCDAFF3E6B98FF00000016000000000000
      000000000000000000000000000000000000000000162B5993FF2D7EBBFF2A7A
      B8FF1770B6FFFFFAD4FFFFE1A9FFFFE0ABFFFFE1A9FFFFE2A6FFFFE3A4FFFFE3
      A4FFFFE2A6FFFFE1A9FFFFE1ACFFFFE5AFFF159F83FF29A587FF2FA788FF30A7
      88FF30A788FF2FA788FF29A587FF159F83FFFFE5AFFFFFE2A9FFFFFAD4FF1770
      B6FF2A7AB8FF2D7EBBFF2B5993FF0000001615151516B47704FFFFFFFFFFF6F7
      F8FFF6F6F5FFF6F6F5FFF6F6F5FFF6F6F5FFF6F6F5FFF6F6F5FFF6F6F5FFF6F6
      F5FFF6F6F5FFF6F6F5FFF6F6F5FFF6F6F5FFF6F6F5FFF6F6F5FFF6F6F5FFF6F6
      F5FFF6F6F5FFF7F7F5FFFBF9F6FFFFFCF8FFFFFFF9FFFFFFFAFFFFFFFCFFFFFF
      FFFFC07A00FF1515151600000000000000000000000000000000000000000000
      0000000000060000001100000016000000160000001600000016000000160000
      0016000000150000000D000000040000000000000000000000040000000D0000
      0015000000160000001600000016000000160000001600000016000000110000
      0006000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000163D6C97FF9DBFDBFF578CBAFF26B9F7FF4E74
      9BFF5A91BFFF5891BFFF5891BFFF5891BFFF5891BFFF5891BFFF5891BFFF5891
      BFFF5891BFFF5790BFFF538EBDFF9CC0DCFF3D6C97FF00000016000000000000
      000000000000000000000000000000000000000000162B5993FF2D7BB9FF2A76
      B6FF176CB4FFFFFBD7FFFFDDA4FFFFDDA5FFFFDDA5FF5DC1F0FF25B6FFFF25B6
      FFFF5DC1F0FFFFDDA5FFFFDEA6FFFFE1AAFF53B190FF22A78AFF2EA98CFF31AA
      8CFF32AA8CFF2FA98CFF24A78AFF54B290FFFFE0AAFFFFDEA5FFFFFBD7FF176C
      B4FF2A76B6FF2D7BB9FF2B5993FF0000001615151516B47704FFFFFFFFFFF3F3
      F4FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2
      F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2
      F2FFF3F2F2FFF3F2F2FFF4F2F2FFF5F3F2FFF6F4F3FFF6F4F3FFF6F4F5FFFFFF
      FFFFB67804FF1515151600000000000000000000000000000000000000000000
      0000000000110000003200000043000000430000004300000043000000430000
      00430000003F0000002B0000000D00000000000000000000000D0000002B0000
      003F000000430000004300000043000000430000004300000043000000320000
      0011000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000163D6C98FFA3C4DFFF568EBDFF3AA9E1FF25BB
      F8FF5B92BFFF5993C1FF5993C1FF5993C1FF5993C1FF5993C1FF5993C1FF5993
      C1FF5993C1FF5892C1FF5490BFFFA2C4DFFF3D6C98FF00000016000000000000
      000000000000000000000000000000000000000000162B5993FF2D79B6FF2A74
      B3FF176AB0FFFFFCDAFFFFDB9EFFFFDD9CFF5EC3F0FF31BDFFFF3ABEFFFF3ABE
      FFFF31BDFFFF5EC3F0FFFFDD9DFFFFDDA3FFFFE0A6FF8EC197FF2AAC8FFF33AE
      90FF33AE90FF2CAC8FFF7EBE96FFFFE0A6FFFFDCA3FFFFDB9EFFFFFCDAFF176A
      B0FF2A74B3FF2D79B6FF2B5993FF0000001615151516B47705FFFFFFFFFFEEEF
      F0FFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEF
      EEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEF
      EEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEEEFF0FFFFFF
      FFFFB47705FF1515151600000000000000000000000000000000000000000000
      000000000011008D4CFF008B4AFF008948FF008746FF008746FF008746FF0087
      46FF008948FF006234C400000015000000000000000000000015006234C40089
      48FF008746FF008746FF008746FF008746FF008948FF008B4AFF008D4CFF0000
      0011000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000163D6D99FFA9C8E3FF5690C1FF5B92C0FF5D92
      C1FF5B93C2FF5A94C3FF5A94C3FF5A94C3FF5A94C3FF5A94C3FF5A94C3FF5A94
      C3FF5A94C3FF5993C3FF5591C1FFA8C8E3FF3D6D99FF00000016000000000000
      000000000000000000000000000000000000000000162B5993FF2D77B3FF2A72
      B0FF1767ADFFFFFEDFFFFFD997FFFFDB94FF28C0FFFF3BC2FFFF3FC3FFFF3FC3
      FFFF3BC2FFFF28C0FFFFFFDB95FFFFDA9DFFFFDB9EFFFFDEA0FF22AE95FF32B1
      95FF34B195FF26AF95FFD9D29DFFFFDB9FFFFFD99DFFFFD999FFFFFEDFFF1767
      ADFF2A72B0FF2D77B3FF2B5993FF0000001615151516B47805FFFFFFFFFFEAEB
      ECFFEBEBEAFFEBEBEAFFEBEBEAFFEBEBEAFFEBEBEAFFEBEBEAFFEBEBEAFFEBEB
      EAFFEBEBEAFFEBEBEAFFEBEBEAFFEBEBEAFFEBEBEAFFEBEBEAFFEBEBEAFFEBEB
      EAFFEBEBEAFFEBEBEAFFEBEBEAFFEBEBEAFFEBEBEAFFEBEBEAFFEAEBECFFFFFF
      FFFFB47805FF1515151600000000000000000000000100000003000000010000
      000000000006008C4BFF0ACA8CFF00E6A5FF00E2A2FF00E1A1FF00E1A1FF00E2
      A1FF0AE8ABFF008948FF00000016000000000000000000000016008948FF0AE8
      ABFF00E2A1FF00E1A1FF00E1A1FF00E2A2FF00E6A5FF0ACA8CFF008C4BFF0000
      0006000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000163D6D99FFADCDE5FF5692C3FF5A94C4FF5B95
      C5FF5B95C5FF5B95C5FF5B95C5FF5B95C5FF5B95C5FF5B95C5FF5B95C5FF5B95
      C5FF5B95C5FF5A94C5FF5692C3FFADCDE5FF3D6D99FF00000016000000000000
      000000000000000000000000000000000000000000162B5A94FF2C73AFFF296F
      ADFF1664AAFFFFFFE4FFFFD693FFFFD78FFF2AC5FFFF3DC7FFFF42C7FFFF42C7
      FFFF3DC7FFFF2AC5FFFFFFD891FFFFD699FFFFD69AFFFFD89BFF7AC098FF29B2
      99FF2BB399FF4CB898FFFFD799FFFFD79AFFFFD699FFFFD594FFFFFFE4FF1664
      AAFF296FADFF2C73AFFF2B5A94FF0000001615151516B47805FFFFFFFFFFE7E6
      E7FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7
      E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7
      E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE8E7E6FFE7E6E7FFFFFF
      FFFFB47805FF1515151600000000000000000000000800000016000000140000
      00060000000600000022008745FF1BC48CFF00D99CFF00D89AFF00D89AFF00D8
      9BFF1BE3ADFF008746FF00000016000000000000000000000016008746FF1BE3
      ADFF00D89BFF00D89AFF00D89AFF00D99CFF1BC48CFF008745FF000000220000
      0006000000060000001100000011000000060000000000000000000000000000
      00000000000000000000000000163E6E9AFFB3D0E7FF5694C5FF5B96C7FF5C97
      C7FF5C97C7FF5C97C7FF5C97C7FF5C97C7FF5C97C7FF5C97C7FF5C97C7FF5C97
      C7FF5C97C7FF5B96C7FF5694C5FFB3D0E7FF3E6E9AFF00000016000000000000
      000000000000000000000000000000000000000000162B5A94FF2C70ACFF296C
      A9FF1661A6FFFFFFEAFFFFD38DFFFFD48DFF62CDEDFF37CBFFFF3FCBFFFF3FCB
      FFFF37CBFFFF62CDEDFFFFD58EFFFFD494FFFFD495FFFFD595FFFFD795FF77C1
      99FF48B99BFFFFD595FFFFD595FFFFD495FFFFD494FFFFD38EFFFFFFEAFF1661
      A6FF296CA9FF2C70ACFF2B5A94FF0000001615151516B47805FFFFFFFFFFE2E3
      E3FFE4E4E2FFE4E4E2FFE4E4E2FFE4E4E2FFE4E4E2FFE4E4E2FFE4E4E2FFE4E4
      E2FFE4E4E2FFE4E4E2FFE4E4E2FFE4E4E2FFE4E4E2FFE4E4E2FFE4E4E2FFE4E4
      E2FFE4E4E2FFE4E4E2FFE4E4E2FFE4E4E2FFE4E4E2FFE4E4E2FFE2E3E3FFFFFF
      FFFFB47805FF1515151600000000000000000000001200231368000000390000
      0022000000220000003D008744FF2EC496FF00D49CFF00D29AFF00D29AFF00D2
      9AFF2CE0B4FF008745FF00000016000000000000000000000016008745FF2CE0
      B4FF00D29AFF00D29AFF00D29AFF00D49CFF2EC496FF008744FF0000003D0000
      0022000000220000003700000032000000110000000000000000000000000000
      00000000000000000000000000163D6E9BFFB7D3EAFF5794C7FF5C97C9FF5D98
      C9FF5D98C9FF5D98C9FF5D98C9FF5D98C9FF5D98C9FF5D98C9FF5D98C9FF5D98
      C9FF5D98C9FF5C97C9FF5794C7FFB7D3EAFF3D6E9BFF00000016000000000000
      000000000000000000000000000000000000000000162B5A94FF2C6EAAFF296A
      A8FF165EA3FFFFFFEFFFFFD087FFFFD28AFFFFD18DFF64CFECFF2ECFFFFF2ECF
      FFFF64CFECFFFFD18DFFFFD28BFFFFD28EFFFFD28FFFFFD28FFFFFD28FFFFFD4
      8FFFFFD48FFFFFD38FFFFFD28FFFFFD28FFFFFD18EFFFFD088FFFFFFEFFF165E
      A3FF296AA8FF2C6EAAFF2B5A94FF0000001615151516B47805FFFFFFFFFFDFDF
      DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0
      DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0
      DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFDFDFDFFFFFFF
      FFFFB47805FF15151516000000000000000000000016008D4CFF008C4AFF0000
      004800000048008946FF00B880FF00D49FFF00D09BFF00CF9AFF00CF9AFF00CF
      99FF3CE1BAFF008745FF00000016000000000000000000000016008745FF3CE1
      BAFF00CF99FF00CF9AFF00CF9AFF00D09BFF00D49FFF00B880FF008946FF0000
      004800000048008C4AFF008D4CFF000000160000000000000000000000000000
      00000000000000000000000000163D6F9AFFBED8EEFF5897C9FF5D99CBFF5E9A
      CBFF5E9ACBFF5E9ACBFF5E9ACBFF5E9ACBFF5E9ACBFF5E9ACBFF5E9ACBFF5E9A
      CBFF5E9ACBFF5D99CBFF5897C9FFBED8EEFF3D6F9AFF00000016000000000000
      000000000000000000000000000000000000000000162B5A94FF2C6AA7FF2967
      A4FF175BA0FFFFFFF6FFFFCD80FFFFCD84FFFFCE82FFFFCE7DFFFFCE7AFFFFCE
      7AFFFFCE7DFFFFCE82FFFFCD85FFFFCD86FFFFCD86FFFFCD86FFFFCE86FFFFCE
      86FFFFCE86FFFFCE86FFFFCD86FFFFCD86FFFFCD84FFFFCD80FFFFFFF6FF175B
      A0FF2967A4FF2C6AA7FF2B5A94FF0000001615151516B57805FFFFFFFFFFDADB
      DBFFDCDCDAFFDCDCDAFFDCDCDAFFDCDCDAFFDCDCDAFFDCDCDAFFDCDCDAFFDCDC
      DAFFDCDCDAFFDCDCDAFFDCDCDAFFDCDCDAFFDCDCDAFFDCDCDAFFDCDCDAFFDCDC
      DAFFDCDCDAFFDCDCDAFFDCDCDAFFDCDCDAFFDCDCDAFFDCDCDAFFDADBDBFFFFFF
      FFFFB57805FF15151516000000000000000000000016008B48FF50D4AFFF0088
      44FF008845FF00B680FF00D0A0FF00CC9CFF00CB9AFF00CB9AFF00CB9AFF00CB
      99FF4CE1C2FF008744FF00000016000000000000000000000016008744FF4CE1
      C2FF00CB99FF00CB9AFF00CB9AFF00CB9AFF00CC9CFF00D0A0FF00B680FF0088
      45FF008844FF50D4AFFF008B48FF000000160000000000000000000000000000
      00000000000000000000000000163E6F9BFFC2DBEFFF5997CAFF5E9ACCFF5F9B
      CCFF5F9BCCFF5F9BCCFF5F9BCCFF5F9BCCFF5F9BCCFF5F9BCCFF5F9BCCFF5F9B
      CCFF5F9BCCFF5E9ACCFF5997CAFFC2DBEFFF3E6F9BFF00000016000000000000
      000000000000000000000000000000000000000000162B5B95FF2C68A3FF2965
      A1FF1C5B9DFFFFF9C7FFFFF2C7FFFFF1C9FFFFF2C9FFFFF2C8FFFFF2C7FFFFF2
      C7FFFFF2C8FFFFF2C9FFFFF2C9FFFFF2C9FFFFF2C9FFFFF2C9FFFFF2C9FFFFF2
      C9FFFFF2C9FFFFF2C9FFFFF2C9FFFFF2C9FFFFF1C9FFFFF2C7FFFFF9C7FF1C5B
      9DFF2965A1FF2C68A3FF2B5B95FF0000001615151516B57805FFFFFFFFFFD5D5
      D5FFD6D5D4FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6
      D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6
      D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D5D4FFD5D5D5FFFFFF
      FFFFB57805FF15151516000000000000000000000016008945FF5FE7CEFF00B0
      7AFF00B17BFF00CCA0FF00CA9DFF00C89BFF00C89BFF00CA9DFF60D0AEFF5CD0
      AEFF5CE5CCFF008845FF00000016000000000000000000000016008845FF5CE5
      CCFF5CD0AEFF60D0AEFF00CA9DFF00C89BFF00C89BFF00CA9DFF00CCA0FF00B1
      7BFF00B07AFF5FE7CEFF008945FF000000160000000000000000000000000000
      00000000000000000000000000163D709BFFC7DEF2FF5999CCFF5E9CCEFF609D
      CEFF609DCEFF609DCEFF609DCEFF609DCEFF609DCEFF609DCEFF609DCEFF609D
      CEFF609DCEFF5E9CCEFF5999CCFFC7DEF2FF3D709BFF00000016000000000000
      000000000000000000000000000000000000000000162B5B95FF2C659FFF2B62
      9CFF276FAFFF1E8ED4FF198AD2FF1889D2FF1889D2FF1889D2FF1889D2FF1889
      D2FF1889D2FF1889D2FF1889D2FF1889D2FF1889D2FF1889D2FF1889D2FF1889
      D2FF1889D2FF1889D2FF1889D2FF1889D2FF1889D2FF198AD2FF1E8ED4FF276F
      AFFF2B629CFF2C659FFF2B5B95FF0000001615151516B57907FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB57907FF15151516000000000000000000000016008843FF6EE5D0FF00C5
      9CFF00C69DFF00C59CFF00C49BFF00C49BFF00C59DFF73D6BBFF008540FF0086
      41FF71DBC2FF008A47FF00000011000000000000000000000011008A47FF71DB
      C2FF008641FF008540FF73D6BBFF00C59DFF00C49BFF00C49BFF00C59CFF00C6
      9DFF00C59CFF6EE5D0FF008843FF000000160000000000000000000000000000
      00000000000000000000000000163D719CFFCDE2F4FF5A9ACEFF5F9DD0FF619E
      D0FF619ED0FF619ED0FF619ED0FF619ED0FF619ED0FF619ED0FF619ED0FF619E
      D0FF619ED0FF5F9DD0FF5A9ACEFFCDE2F4FF3D719CFF00000016000000000000
      000000000000000000000000000000000000000000142B5B95FF2B619CFF2C6C
      A8FF2C84C3FF2B81C0FF2A80BFFF2A80BEFF2A80BEFF2A80BEFF2A80BEFF2A80
      BEFF2A80BEFF2A80BEFF2A80BEFF2A80BEFF2A80BEFF2A80BEFF2A80BEFF2A80
      BEFF2A80BEFF2A80BEFF2A80BEFF2A80BEFF2A80BEFF2A80BFFF2B81C0FF2C84
      C3FF2C6CA8FF2B619CFF2B5B95FF0000001415151516B57B0CFFF8E1C1FFE1A9
      4EFFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB
      51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB
      51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1A94EFFF8E1
      C1FFB57B0CFF15151516000000000000000000000016008742FF80E5D6FF00C0
      99FF00C19BFF00C19BFF00C19AFF00C19BFF85DAC5FF008742FF000000060000
      0006008C49FF008D4CFF00000006000000000000000000000006008D4CFF008C
      49FF0000000600000006008742FF85DAC5FF00C19BFF00C19AFF00C19BFF00C1
      9BFF00C099FF80E5D6FF008742FF000000160000000000000000000000000000
      00000000000000000000000000163D719DFFD1E5F6FF5B9BD0FF619FD1FF62A0
      D2FF62A0D2FF62A0D2FF62A0D2FF62A0D2FF62A0D2FF62A0D2FF62A0D2FF62A0
      D2FF62A0D2FF619FD1FF5B9BD0FFD1E5F6FF3D719DFF00000016000000000000
      0000000000000000000000000000000000000000000B2B5B95FF2B65A1FF2C74
      B0FF2C72AEFF2C71ADFF2C71ADFF2C71ADFF2C71ADFF2C71ADFF2C71ADFF2C71
      ADFF2C71ADFF2C71ADFF2C71ADFF2C71ADFF2C71ADFF2C71ADFF2C71ADFF2C71
      ADFF2C71ADFF2C71ADFF2C71ADFF2C71ADFF2C71ADFF2C71ADFF2C71ADFF2C72
      AEFF2C74B0FF2B65A1FF2B5B95FF0000000B15151516B6800FFFF5DDB8FFD99E
      36FFDAA03BFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA1
      3DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA1
      3DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA03BFFD99E36FFF5DD
      B8FFB6800FFF15151516000000000000000000000016008742FF91E8DBFF00BC
      97FF00BD99FF00BD99FF00BC99FF93DCC8FF00853EFF00000022000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000060000002200853EFF93DCC8FF00BC99FF00BD99FF00BD
      99FF00BC97FF91E8DBFF008742FF000000160000000000000000000000000000
      00000000000000000000000000153E729EFFD7EAF8FF5B9CD2FF5E9ED3FF5F9E
      D3FF5F9ED3FF5F9ED3FF5F9ED3FF5F9ED3FF5F9ED3FF5F9ED3FF5F9ED3FF5F9E
      D3FF5F9ED3FF5E9ED3FF5B9CD2FFD7EAF8FF3E729EFF00000015000000000000
      00000000000000000000000000000000000000000003152D4A852B629CFF2B61
      9AFF2B609AFF2B609AFF2B609AFF2B609AFF2B609AFF2B609AFF2B609AFF2B60
      9AFF2B609AFF2B609AFF2B609AFF2B609AFF2B609AFF2B609AFF2B609AFF2B60
      9AFF2B609AFF2B609AFF2B609AFF2B609AFF2B609AFF2B609AFF2B609AFF2B60
      9AFF2B619AFF2B629CFF152D4A850000000314141415B68111FFF1D6A9FFD18B
      14FFD28E18FFD28E19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E
      19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E
      19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E18FFD18B14FFF1D6
      A9FFB68111FF14141415000000000000000000000015008741FFA0EAE3FF00B5
      96FF00B698FF00B798FF00B597FF9DDECFFF00853DFF00000037000000110000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000110000003700853DFF9DDECFFF00B597FF00B798FF00B6
      98FF00B596FFA0EAE3FF008741FF000000150000000000000000000000000000
      000000000000000000000000000D4275A0FFAFD2F2FFADD0EFFFAED0EFFFAED0
      EFFFAED0EFFFAED0EFFFAED0EFFFAED0EFFFAED0EFFFAED0EFFFAED0EFFFAED0
      EFFFAED0EFFFAED0EFFFADD0EFFFAFD2F2FF4275A0FF0000000D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0C0C0DB88214FFEECF9BFFECCD
      98FFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
      9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
      9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCD98FFEECF
      9BFFB88214FF0C0C0C0D00000000000000000000000D008944FFB4F1EFFFB1EE
      E9FFB2EEE9FFB2EEE9FFB0EDE9FFAEEFEBFFB7EBE5FF008B48FF000000110000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000011008B48FFB7EBE5FFAEEFEBFFB0EDE9FFB2EEE9FFB2EE
      E9FFB1EEE9FFB4F1EFFF008944FF0000000D0000000000000000000000000000
      0000000000000000000000000004305471B44377A1FF4175A0FF4175A0FF4175
      A0FF4175A0FF4175A0FF4175A0FF4175A0FF4175A0FF4175A0FF4175A0FF4175
      A0FF4175A0FF4175A0FF4175A0FF4377A1FF305471B400000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003030304998863B4B88314FFB782
      13FFB78113FFB78113FFB78113FFB78113FFB78113FFB78113FFB78113FFB781
      13FFB78113FFB78113FFB78113FFB78113FFB78113FFB78113FFB78113FFB781
      13FFB78113FFB78113FFB78113FFB78113FFB78113FFB78113FFB78213FFB883
      14FF998863B403030304000000000000000000000004006134B4008944FF0087
      41FF008741FF008741FF008741FF008742FF008A45FF008D4BFF000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000006008D4BFF008A45FF008742FF008741FF008741FF0087
      41FF008741FF008944FF006134B4000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000050000000F000000150000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      001600000016000000160000001000000005000000050000000F000000150000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000010000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000040404050F0F0F10151515161515
      1516151515161515151615151516151515161515151615151516151515161515
      1516151515161515151615151516151515161515151615151516151515161515
      1516151515161515151615151516151515161515151615151516151515161515
      151615151516151515160F0F0F10040404050000000F0000002F000000410000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004200000031000000100000000F0000002F000000410000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      004300000043000000420000003100000010030303040D0D0D0E141414151515
      1516151515161515151615151516151515161515151615151516151515161515
      1516151515161515151615151516151515161515151615151516151515161515
      1516151515161515151615151516151515161515151615151516151515161515
      151615151516141414150C0C0C0D030303040F0F0F102F2F2F313D3D3D423E3E
      3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E
      3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E
      3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E
      3E433E3E3E433D3D3D422F2F2F310F0F0F10000000159D7015E3B67D0DFFB57A
      08FFB67A07FFB77B08FFB87B08FFB87B08FFB77B08FFB67A07FFB57907FFB479
      06FFB47907FFB47A08FFB47B09FFB47B09FFB47B09FFB47B09FFB47A08FFB479
      07FFB47906FFB57A06FFB57B06FFB67B06FFB67B06FFB67B06FFB67B06FFB57B
      06FFB57A08FFB67D0DFFAD7C17F300000016000000159D7015E3B67D0DFFB47A
      08FFB47906FFB47906FFB47906FFB47906FFB47906FFB47906FFB47906FFB479
      06FFB47906FFB47906FFB47906FFB47906FFB47906FFB47906FFB47906FFB479
      06FFB47906FFB47906FFB47906FFB47906FFB47906FFB47906FFB47906FFB479
      06FFB47A08FFB67D0DFFAD7C17F3000000160D0D0D0E2B2B2B2D3C3C3C403E3E
      3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E
      3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E
      3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E3E433E3E
      3E433E3E3E433B3B3B3F2929292B0C0C0C0D15151516BE9964F3C59454FFC492
      50FFC39250FFC49250FFC49350FFC49250FFC39250FFC49250FFC49350FFC492
      50FFC39250FFC49250FFC49350FFC49250FFC39250FFC49250FFC49350FFC492
      50FFC39250FFC49250FFC49350FFC49250FFC39250FFC49250FFC49350FFC492
      50FFC49250FFC59454FFBE9964F31515151600000016B67D0DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB67D0DFF0000001600000016B67D0DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB67D0DFF0000001614141415A3874DD4B67B0BFFB478
      06FFB47704FFB47704FFB47704FFB47704FFB47704FFB47704FFB47704FFB477
      04FFB47704FFB47704FFB47704FFB47704FFB47704FFB47704FFB47704FFB477
      04FFB47704FFB47704FFB47704FFB47704FFB47704FFB47704FFB47704FFB477
      04FFB47806FFB67B0BFF9B8558C41414141515151516C59454FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC59454FF1515151600000016B47A08FFFFFFFFFFFFFF
      FFFF5ACBB9FF00A78AFF00A88BFF00A88BFF00A78AFF5ACAB8FFFFFFFFFFFFFE
      FFFFFFFFFFFFEDC994FFE1A54BFFE1A64DFFE1A64DFFE1A54BFFECC993FFFEFF
      FFFFFFFFFFFFFFFFFFFF8FADFFFF4577FEFF4779FFFF4779FFFF4577FFFF8EAD
      FFFFFFFFFFFFFFFFFFFFB47A08FF0000001600000016B47A08FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB47A08FF0000001615151516B67B0BFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB67B0BFF1515151615151516C49250FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF7A7A7BFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7BFFFFFF
      FFFFFFFFFFFFFFFFFFFF7A7A7BFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7BFFFFFF
      FFFFFFFFFFFFFFFFFFFF7A7A7BFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7BFFFFFF
      FFFFFFFFFFFFFFFFFFFFC49250FF1515151600000016B47906FFFFFFFFFFFFFB
      FEFF12B097FF84DCD5FF86DCD5FF85DCD5FF84DBD5FF2AB9A4FFFFF9FBFFF9F7
      F8FFF7FAFFFFE3AB53FFFFE7B9FFFFE7B9FFFFE7B9FFFFE7B8FFEBB968FFF7FA
      FFFFF8F7F7FFFFFDF5FF4D87FCFF9ABAE8FF9BBBE9FF9BBBE9FF9ABAE8FF5D91
      F6FFFFFEF8FFFFFFFFFFB47906FF0000001600000016B47906FFFFFFFFFFFFFF
      FFFFFFFFFFFF8AA6FCFF3E6AFAFF416CFBFF426CFBFF426CFBFF426CFBFF416C
      FBFF3E6AFAFF8AA6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0BFFFFF7A
      96FFFF7B98FFFF7B98FFFF7B98FFFF7B98FFFF7B98FFFF7A96FFFFB0BFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB47906FF0000001615151516B47806FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB47806FF1515151615151516C39250FFFFFFFFFFFFFF
      FFFFFFFFFFFF7A7B79FFFFFFFFFFFFFFFFFFFFFFFFFF7A7B79FFFFFFFFFFFFFF
      FFFFFFFFFFFF7A7B79FFFFFFFFFFFFFFFFFFFFFFFFFF7A7B79FFFFFFFFFFFFFF
      FFFFFFFFFFFF7A7B79FFFFFFFFFFFFFFFFFFFFFFFFFF7A7B79FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC49250FF1515151600000016B47907FFFFFFFFFFFEF5
      F7FF3AB9A8FF5DCFCCFF5ECFCBFF5ECFCBFF5CCFCBFF3FBFB0FFFEF4F4FFF2F2
      F2FFF0F5FAFFE7B35DFFFFD698FFFFD598FFFFD598FFFFD598FFEDBA69FFF0F4
      F9FFF2F2F1FFFCF8EEFF5899FDFF719AE9FF739BE9FF739BEAFF719AE9FF5A97
      F8FFFBF8F1FFFFFFFFFFB47907FF0000001600000016B47906FFFFFFFFFFFFFF
      FFFFFFFFFFFF3E6AFAFF90C2EBFF8ABDEBFF8ABDEBFF8ABDEBFF8ABDEBFF8ABD
      EBFF90C2EBFF3E6AFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A96FFFFDD
      DFFFFFD7DAFFFFD7DAFFFFD7DAFFFFD7DAFFFFD7DAFFFFDDDFFFFF7A96FFFFFF
      FFFFFFFFFFFFFFFFFFFFB47906FF0000001615151516B47704FFFFFFFFFFFFFF
      FFFFFFFFFFFF015B42FF10644DFF176750FF186750FF186851FF176850FF1569
      50FF166B50FF186C50FF186C50FF186C50FF186C50FF186C50FF186C50FF166B
      50FF156950FF176850FF186851FF186750FF176750FF10644DFF015B42FFFFFF
      FFFFFFFFFFFFFFFFFFFFB47704FF1515151615151516C49250FFFFFFFFFFFFFF
      FFFF7B7A78FFFFFFFFFFFFFFFFFFFFFFFFFF7B7A78FFFFFFFFFFFFFFFFFFFFFF
      FFFF7B7A78FFFFFFFFFFFFFFFFFFFFFFFFFF7B7A78FFFFFFFFFFFFFFFFFFFFFF
      FFFF7B7A78FFFFFFFFFFFFFFFFFFFFFFFFFF7B7A78FFFFFFFFFFFFFFFFFFFFFF
      FFFF797978FFFFFFFFFFC49350FF1515151600000016B47A07FFFFFFFFFFF1EC
      EDFF95D1CAFF5EC7BDFF61C8BDFF61C7BDFF5EC7BDFF94D1CBFFF2ECEBFFEBEA
      EAFFEAECEFFFE9CD99FFF0C170FFEFC171FFEFC171FFF0C06FFFEACE9BFFEAEC
      EFFFEBEAE9FFF1EEE8FF96C1F5FF5FA4F8FF62A5F9FF62A5F9FF5FA4F9FF95BF
      F3FFF0EEE9FFFFFFFFFFB47A07FF0000001600000016B47906FFFFFFFFFFFFFF
      FFFFFFFFFFFF416CFAFF94C1F1FF7EB2EFFF80B2F0FF80B2F0FF80B2F0FF7EB2
      EFFF94C1F1FF416CFAFFFFFFFFFFFFFFFEFFFEFFFFFFFEFFFFFFFF7B98FFFFD6
      DCFFFFCBD3FFFFCAD3FFFFCAD3FFFFCAD3FFFFCBD3FFFFD6DCFFFF7B98FFFEFF
      FFFFFFFFFFFFFFFFFFFFB47906FF0000001615151516B47704FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0D9681FF169B87FF1B9E89FF1FA18CFF1DA38BFF8098
      AFFF3A6796FF416B97FF436B96FF436A95FF436A95FF436B96FF416B97FF3A67
      96FF8098AFFF1DA38BFF1FA18CFF1B9E89FF169B87FF0D9681FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB47704FF1515151615151516C49350FFFFFFFFFF7878
      76FFFFFFFEFFFFFFFCFFFFFFFEFF7A7977FFFFFFFEFFFFFFFCFFFFFFFEFF7A79
      77FFFFFFFEFFFFFFFCFFFFFFFEFF7A7977FFFFFFFEFFFFFFFCFFFFFFFEFF7A79
      77FFFFFFFEFFFFFFFCFFFFFFFEFF7A7977FFFFFFFEFFFFFFFCFFFFFFFEFF7979
      76FFFFFFFEFFFFFFFFFFC49250FF1515151600000016B47A07FFFFFFFFFFE2E2
      E3FFE8E2E3FFECE4E4FFEDE4E5FFEDE4E5FFECE4E4FFE9E3E3FFE3E1E1FFE1E1
      E1FFE1E2E3FFE0E3E7FFE0E4EAFFE0E4EBFFE0E4EBFFE0E4EAFFE0E3E7FFE1E2
      E3FFE1E1E1FFE3E2E0FFE8E5E0FFECE7E0FFEDE8DFFFEDE8DFFFECE7E0FFE8E5
      E0FFE2E2E2FFFFFFFFFFB47A07FF0000001600000016B47906FFFFFFFFFFFFFF
      FFFFFFFFFCFF416CFAFF97C0F6FF74A9F3FF76AAF3FF76AAF3FF76AAF3FF74A9
      F3FF97C0F6FF416CFAFFFFFFFCFFFFFEFCFFFCFEFEFFFCFFFFFFFF7C98FFFFD3
      DBFFFFC1CDFFFFC1CDFFFFC1CDFFFFC1CDFFFFC1CDFFFFD3DBFFFF7C98FFFCFF
      FFFFFDFFFFFFFFFFFFFFB47906FF0000001615151516B47704FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7490A7FFBACCDFFFB8CD
      DEFFC0D3E0FF236694FF42AEE4FF42ACE1FF42ACE1FF42AEE4FF236694FFC0D3
      E0FFB8CDDEFFBACCDFFF7490A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB47704FF1515151615151516C49250FFFFFFFFFFFFFE
      F8FFFFFEF8FFFFFFFBFF7A7875FFFFFFFBFFFFFFF9FFFFFFFBFF7A7875FFFFFF
      FBFFFFFFF9FFFFFFFBFF7A7875FFFFFFFBFFFFFFF9FFFFFFFBFF7A7875FFFFFF
      FBFFFFFFF9FFFFFFFBFF7A7875FFFFFFFBFFFFFFF9FFFFFFFBFF7A7875FFFFFF
      FAFFFFFDF7FFFFFFFFFFC39250FF1515151600000016B47A07FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB47A07FF0000001600000016B47906FFFFFFFFFFFDFD
      FCFFFFFFF9FF416CFAFF9DC2F8FF6BA1F5FF6DA3F5FF6EA3F5FF6DA3F5FF6BA1
      F5FF9DC2F8FF416CFAFFFFFFF9FFFDFCF9FFFAFCFAFFFAFFFFFFFF7D98FFFFD3
      DCFFFFB8C7FFFFB9C8FFFFB9C8FFFFB9C8FFFFB8C7FFFFD3DCFFFF7D98FFF9FF
      FFFFFAFDFDFFFFFFFFFFB47906FF0000001615151516B47704FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B8DA2FFB6CCDCFFB4CA
      DAFFBED1DDFF206494FF46ADE0FF41A7DBFF41A7DBFF46ADE0FF206494FFBED1
      DDFFB4CADAFFB6CCDCFF6B8DA2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB47704FF1515151615151516C39250FFFFFFFFFFFFFC
      F4FFFFFFF7FF797773FFFFFFF8FFFFFEF6FFFFFFF8FF797773FFFFFFF8FFFFFE
      F6FFFFFFF8FF797773FFFFFFF8FFFFFEF6FFFFFFF8FF797773FFFFFFF8FFFFFE
      F6FFFFFFF8FF797773FFFFFFF8FFFFFEF6FFFFFFF8FF797773FFFFFFF8FFFFFD
      F5FFFFFDF5FFFFFFFFFFC49250FF1515151600000016B47A07FFFFFFFFFFFFE5
      AFFFFFE5B0FFFFE5B0FFFFE4ADFFFFE3AAFFFFE3AAFFFFE3AAFFFFE3AAFFFFE3
      AAFFFFE3AAFFFFE3AAFFFFE3AAFFFFE3AAFFFFE3AAFFFFE3AAFFFFE3AAFFFFE3
      AAFFFFE3AAFFFFE3AAFFFFE3AAFFFFE3AAFFFFE3AAFFFFE4ADFFFFE5B0FFFFE5
      B0FFFFE5AFFFFFFFFFFFB47A07FF0000001600000016B47906FFFFFFFFFFFBFB
      FAFFFFFFF7FF416CFAFFA3C5FBFF6198F8FF6499F8FF649AF8FF6499F8FF6198
      F8FFA3C5FBFF416CFAFFFFFFF7FFFBFAF7FFF8FAF8FFF7FFFFFFFF7D99FFFFD2
      DEFFFFAEC2FFFFB0C3FFFFB0C4FFFFB0C3FFFFAEC2FFFFD2DEFFFF7D99FFF7FF
      FFFFF8FBFBFFFFFFFFFFB47906FF0000001615151516B47704FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B8EA2FFBFD6E2FFB5CD
      DBFFC0D3DFFF1F649AFF5EB7E4FF40A6D9FF40A6D9FF5EB7E4FF1F649AFFC0D3
      DFFFB5CDDBFFBFD6E2FF6B8EA2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB47704FF1515151615151516C49250FFFFFFFFFFFFFD
      F4FF787672FFFFFEF5FFFFFCF2FFFFFEF5FF787773FFFFFEF5FFFFFCF2FFFFFE
      F5FF787773FFFFFEF5FFFFFCF2FFFFFEF5FF787773FFFFFEF5FFFFFCF2FFFFFE
      F5FF787773FFFFFEF5FFFFFCF2FFFFFEF5FF787773FFFFFEF5FFFFFCF2FFFFFE
      F4FF767571FFFFFFFFFFC49351FF1515151600000016B47A08FFFFFFFFFFFFE4
      B0FFFFE4B2FFFFE3AFFFFFF8E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E7FFFFE3AFFFFFE4
      B2FFFFE4B0FFFFFFFFFFB47A08FF0000001600000016B47906FFFFFFFFFFF9F9
      F8FFFFFFF4FF406CFAFFAAC7FEFF538DFBFF568FFBFF568FFBFF568FFBFF538D
      FBFFAAC7FEFF406CFAFFFFFFF4FFF9F8F5FFF6F8F6FFF5FFFDFFFF7D99FFFFD4
      DFFFFFA4BBFFFFA4BCFFFFA5BCFFFFA4BCFFFFA4BBFFFFD4DFFFFF7D99FFF5FF
      FCFFF6F9F9FFFFFFFFFFB47906FF0000001615151516B47704FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B8FA2FFC9DCE8FFB7CE
      DDFFC2D5E0FF1D659EFF76C3E8FF3EA4D9FF3EA4D9FF76C3E8FF1D659EFFC2D5
      E0FFB7CEDDFFC9DCE8FF6B8FA2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB47704FF1515151615151516C49351FFFFFFFFFF7674
      6FFFFFFDF1FFFFFBEFFFFFFDF2FF787671FFFFFDF2FFFFFBEFFFFFFDF2FF7876
      71FFFFFDF2FFFFFBEFFFFFFDF2FF787671FFFFFDF2FFFFFBEFFFFFFDF2FF7876
      71FFFFFDF2FFFFFBEFFFFFFDF2FF787671FFFFFDF2FFFFFBEFFFFFFDF2FF7875
      70FFFFFCF1FFFFFFFFFFC49250FF1515151600000016B47A08FFFFFFFFFFFFE2
      ADFFFFE2B0FFFFE1ABFFFFFFFFFF28C5FFFF33C6FFFF35C7FFFF35C7FFFF35C7
      FFFF35C7FFFF35C7FFFF34C7FFFF34C7FFFF33C7FFFF32C7FFFF30C8FFFF32CA
      FFFF35CFFFFF35CFFFFF30CAFFFF2BC7FFFF22C5FFFFFFFFFFFFFFE1ABFFFFE2
      B0FFFFE2ADFFFFFFFFFFB47A08FF0000001600000016B47906FFFFFFFFFFF6F5
      F5FFFFFCF2FF3E6BFBFFB1CCFFFFB9D0FFFFBAD1FFFFBAD1FFFFBAD1FFFFB9D0
      FFFFB1CCFFFF3E6BFBFFFFFDF2FFF6F5F3FFF4F4F4FFF3FCF9FFFF7C98FFFFD6
      E3FFFFDAE5FFFFDAE5FFFFDAE5FFFFDAE5FFFFDAE5FFFFD6E3FFFF7C98FFF3FB
      F9FFF4F5F6FFFFFFFFFFB47906FF0000001615151516B47704FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D90A3FFD4E4ECFFB9D1
      DFFFC5D8E2FF1A65A3FF92CFECFF3AA3D8FF3AA3D8FF92CFECFF1A65A3FFC5D8
      E2FFB9D1DFFFD4E4ECFF6D90A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB47704FF1515151615151516C49250FFFFFFFFFFFDF8
      ECFFFEF9EDFFFFFCF0FF787670FFFFFCF0FFFFFAEDFFFFFCF0FF787670FFFFFC
      F0FFFFFAEDFFFFFCF0FF787670FFFFFCF0FFFFFAEDFFFFFCF0FF787670FFFFFC
      F0FFFFFAEDFFFFFCF0FF787670FFFFFCF0FFFFFAEDFFFFFCF0FF787670FFFFFC
      EFFFFDF8EBFFFFFFFFFFC39250FF1515151600000016B47A08FFFFFFFFFFFFE0
      AAFFFFE0ACFFFFDEA7FFFFFFFFFF4DE0FFFF5AE2FFFF5DE2FFFF5EE2FFFF5EE2
      FFFF5DE2FFFF5BE2FFFF59E3FFFF57E3FFFF54E3FFFF5DE4FFFF82E5F7FFA2EC
      F3FF315D92FF305D93FFB8ECECFFAEE5E8FFA6E2E6FFFFFFFFFFFFDEA7FFFFE0
      ACFFFFE0AAFFFFFFFFFFB47A08FF0000001600000016B47906FFFFFFFFFFF3F3
      F3FFFBF7F0FF85A1F6FF3F6BFBFF406DFBFF406DFBFF406DFBFF406DFBFF406D
      FBFF3F6BFBFF85A1F6FFFBF7F1FFF4F2F1FFF2F2F2FFF1F7F6FFFBACBCFFFF7D
      98FFFF7E99FFFF7E99FFFF7E99FFFF7E99FFFF7E99FFFF7D98FFFBACBCFFF1F7
      F6FFF2F3F4FFFFFFFFFFB47906FF0000001615151516B47704FFFFFFFFFFFEFF
      FFFFFDFDFDFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFF7091A5FFDEECF2FFBCD4
      E0FFC7DBE4FF1866A7FFA9D9F1FF34A0D7FF34A0D7FFA9D9F1FF1866A7FFC7DB
      E4FFBCD4E0FFDEECF2FF7091A5FFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFFFDFD
      FDFFFEFFFFFFFFFFFFFFB47704FF1515151615151516C39250FFFFFFFFFFFBF5
      E7FFFFF9ECFF77756EFFFFFAEDFFFEF8EAFFFFFAECFF77756EFFFFFAEDFFFEF8
      EAFFFFFAECFF77756EFFFFFAEDFFFEF8EAFFFFFAECFF77756EFFFFFAEDFFFEF8
      EAFFFFFAECFF77756EFFFFFAEDFFFEF8EAFFFFFAECFF77756EFFFFFAEDFFFDF7
      E9FFFCF6E8FFFFFFFFFFC49250FF1515151600000016B47A08FFFFFFFFFFFFDD
      A6FFFFDEA8FFFFDCA3FFFFFFFFFFACEADEFF8AF4F7FF6DFBFFFF6FFAFFFF6FFA
      FFFF6DFBFFFF95F2F2FFB2EDE2FFD0E8D4FFFBE6C1FFFFE5B9FFFFE6BAFFFFEF
      BEFF2B639CFF4A75A0FFFFEEBEFFFFE6BAFFFFE2B6FFFFFFFFFFFFDCA3FFFFDE
      A8FFFFDDA6FFFFFFFFFFB47A08FF0000001600000016B47907FFFFFFFFFFF0F0
      F0FFF4F1EEFFFBF6EEFFFFFAEEFFFFFBEEFFFFFBEEFFFFFBEEFFFFFBEEFFFFFB
      EEFFFFFAEEFFFBF6EEFFF4F2EEFFF0EFEEFFF0EFEEFFF0F1F0FFEFF5F4FFEFF8
      F6FFEFF9F7FFEFF9F7FFEFF9F7FFEFF9F7FFEFF9F7FFEFF8F6FFEFF5F4FFEFF1
      F0FFF0F0F0FFFFFFFFFFB47907FF0000001615151516B47704FFFFFFFFFFFBFC
      FDFFFAFAFAFFFAFAFAFFFBFBFAFFFFFFFDFFFFFFFFFF7896A8FFEBF3F8FFBFD6
      E4FFC9DCE6FF1565ADFFC1E7F8FFCBE9F7FFCBE9F7FFC1E7F8FF1565ADFFC9DC
      E6FFBFD6E4FFEBF3F8FF7896A8FFFFFFFFFFFFFFFDFFFBFBFAFFFAFAFAFFFAFA
      FAFFFBFCFDFFFFFFFFFFB47704FF1515151615151516C49250FFFFFFFFFFFEF8
      E8FF77746CFFFFF9EAFFFDF7E7FFFFF9E9FF78746CFFFFF9EAFFFDF7E7FFFFF9
      E9FF78746CFFFFF9EAFFFDF7E7FFFFF9E9FF78746CFFFFF9EAFFFDF7E7FFFFF9
      E9FF78746CFFFFF9EAFFFDF7E7FFFFF9E9FF78746CFFFFF9EAFFFDF7E7FFFFF9
      E9FF75726AFFFFFFFFFFC49351FF1515151600000016B47A08FFFFFFFFFFFFDB
      A2FFFFDCA5FFFFDAA0FFFFFFFFFFFFD499FFFFD69EFFFFD79EFFFFD79EFFFFD7
      9EFFFFD79EFFFFD79FFFFFD8A1FFFFD8A2FFFFD9A3FFFFD9A4FFFFDBA4FFFFE4
      A6FF2863A0FF6386A1FFFFE1A5FFFFD9A3FFFFD59DFFFFFFFFFFFFDAA0FFFFDC
      A5FFFFDBA2FFFFFFFFFFB47A08FF0000001600000016B47907FFFFFFFFFFEEED
      EEFFF3EEEEFFFDF2F1FFFFF4F4FFFFF5F4FFFFF5F4FFFFF5F4FFFFF5F4FFFFF5
      F4FFFFF4F4FFFDF2F1FFF3EFEEFFEFEDECFFEEEDECFFEEEFEFFFEEF2F5FFEEF4
      F9FFEEF5FAFFEEF5FAFFEEF5FAFFEEF5FAFFEEF5FAFFEEF4F9FFEEF2F5FFEEEF
      EFFFEDEDEEFFFFFFFFFFB47907FF0000001615151516B47704FFFFFFFFFFF7F7
      F9FFF7F6F6FFF7F6F6FFF9F7F7FFFFFDFBFF035387FF397398FFFBFEFFFFC5DB
      E7FFC9DDE8FF5896C7FF1468B4FF1569B4FF1569B4FF1468B4FF5896C7FFC9DD
      E8FFC5DBE7FFFBFEFFFF397398FF035387FFFFFDFBFFF9F7F7FFF7F6F6FFF7F6
      F6FFF7F7F9FFFFFFFFFFB47704FF1515151615151516C49351FFFFFFFFFF7471
      68FFFEF6E6FFFCF4E4FFFEF7E6FF77736BFFFEF7E6FFFCF4E4FFFEF7E6FF7773
      6BFFFEF7E6FFFCF4E4FFFEF7E6FF77736BFFFEF7E6FFFCF4E4FFFEF7E6FF7773
      6BFFFEF7E6FFFCF4E4FFFEF7E6FF77736BFFFEF7E6FFFCF4E4FFFEF7E6FF7673
      6AFFFDF6E4FFFFFFFFFFC49250FF1515151600000016B47A08FFFFFFFFFFFFD9
      9FFFFFDAA2FFFFD89DFFFFFFFFFFFFC87CFFFFCA83FFFFCB84FFFFCB84FFFFCB
      84FFFFCB84FFFFCB85FFFFCB85FFFFCC86FFFFCE88FFFFCF8AFFFFD18AFFFACF
      8CFF2B63A2FF959696FFFFD488FFFFCC85FFFFC87DFFFFFFFFFFFFD89DFFFFDA
      A2FFFFD99FFFFFFFFFFFB47A08FF0000001600000016B47A07FFFFFFFFFFEDEB
      ECFFFAEEEFFF43BEA9FF00A17DFF00A27DFF00A27DFF00A27DFF00A27DFF00A2
      7DFF00A17DFF43BEA9FFFAEEEFFFEEECEBFFECECEBFFECEFF2FFE4BB8BFFE09B
      4BFFDF9C4DFFDF9C4DFFDF9C4DFFDF9C4DFFDF9C4DFFE09B4BFFE4BB8BFFECEE
      F2FFEBEBEDFFFFFFFFFFB47A07FF0000001615151516B47704FFFFFFFFFFF3F4
      F5FFF3F3F3FFF3F3F3FFF4F3F3FFF9F7F6FFFFFFFCFF0D5B91FF5993B6FFD1E3
      EDFFCBDFEAFFCDE0EAFFD0E5F0FFD2EAF8FFD2EAF8FFD0E5F0FFCDE0EAFFCBDF
      EAFFD1E3EDFF5892B5FF0C5A91FFFFFFFCFFF9F7F6FFF4F3F3FFF3F3F3FFF3F3
      F3FFF3F4F5FFFFFFFFFFB47704FF1515151615151516C49250FFFFFFFFFFF9F2
      DEFFFAF3E0FFFDF6E3FF767269FFFDF6E3FFFBF4E1FFFDF6E3FF767269FFFDF6
      E3FFFBF4E1FFFDF6E3FF767269FFFDF6E3FFFBF4E1FFFDF6E3FF767269FFFDF6
      E3FFFBF4E1FFFDF6E3FF767269FFFDF6E3FFFBF4E1FFFDF6E3FF767269FFFDF5
      E2FFF8F1DDFFFFFFFFFFC49250FF1515151600000016B47A08FFFFFFFFFFFFD6
      9CFFFFD69FFFFFD499FFFFFFFFFFFFFAE3FFFFFBE6FFFFFBE7FFFFFBE7FFFFFB
      E7FFFFFBE7FFFFFBE7FFFFFCE8FFFFFFECFF87D5BCFF7BD1B8FFE9F6E0FF03A2
      89FF3165A1FFE8E8DDFF5EC9ADFFFFFFEBFFFFFAE4FFFFFFFFFFFFD499FFFFD6
      9FFFFFD69CFFFFFFFFFFB47A08FF0000001600000016B47A07FFFFFFFFFFEBE9
      EAFFFDEEEFFF00A27DFF9CE4DBFF91E0D6FF90E0D6FF90E0D6FF90E0D6FF91E0
      D6FF9CE4DBFF00A27DFFFDEEF0FFECEAE9FFE9EAEAFFE9EEF3FFE09B4CFFFFDF
      A9FFFFDCA3FFFFDBA3FFFFDBA3FFFFDBA3FFFFDCA3FFFFDFA9FFE09B4CFFE9EE
      F3FFE8E9EBFFFFFFFFFFB47A07FF0000001615151516B47705FFFFFFFFFFF0F0
      F1FFF0F0EFFFF0F0EFFFF0F0EFFFF2F1F0FFF9F6F3FFFFFFF9FF15629AFF6098
      BAFFDAEAF0FFD1E6F0FFCAE6F7FFAF4800FFAF4800FFCAE6F7FFD2E6F0FFDAEA
      F2FF5A95B9FF0D5C97FFFFFEF8FFF8F5F2FFF2F1F0FFF0F0EFFFF0F0EFFFF0F0
      EFFFF0F0F1FFFFFFFFFFB47705FF1515151615151516C49250FFFFFFFFFFF7EE
      DAFFFCF3DFFF767169FFFCF4E0FFFAF1DEFFFCF4E0FF767169FFFCF4E0FFFAF1
      DEFFFCF4E0FF767169FFFCF4E0FFFAF1DEFFFCF4E0FF767169FFFCF4E0FFFAF1
      DEFFFCF4E0FF767169FFFCF4E0FFFAF1DEFFFCF4E0FF767169FFFCF4E0FFF9F0
      DDFFF8EFDBFFFFFFFFFFC49250FF1515151600000016B47A08FFFFFFFFFFFFD5
      99FFFFD69CFFFFD396FFFFFFFFFFFFF4CBFFFFF4CCFFFFF4CBFFFFF4CBFFFFF4
      CDFFFFF5CFFFFFF5D1FFFFF6D1FFFFFAD6FF22A681FF009770FF74C49DFF039C
      72FF32A486FF0E9D70FF5EB992FFFFFBD6FFFFF6CEFFFFFFFFFFFFD396FFFFD6
      9CFFFFD599FFFFFFFFFFB47A08FF0000001600000016B47A07FFFFFFFFFFE9E7
      E8FFFCECEEFF00A27EFF98E0D7FF7CD7CBFF7BD7CAFF7BD7CAFF7BD7CAFF7CD7
      CBFF98E0D7FF00A27EFFFDECEEFFEBE8E8FFE7E8E8FFE7EDF3FFE09C4DFFFFDE
      ABFFFFD599FFFFD599FFFFD599FFFFD599FFFFD599FFFFDEABFFE09C4DFFE7EC
      F2FFE5E7E9FFFFFFFFFFB47A07FF0000001615151516B47805FFFFFFFFFFECEC
      EEFFEDECECFFEDECECFFEDECECFFEDECECFFF1EEEEFFFFF8F3FF1967A7FF2169
      A1FF629ABEFFE6F4F9FFD9F0FEFFC46E25FFC36E25FFDAF1FEFFE8F4F9FF5C99
      BFFF1062A0FFFFFBF6FFF5F1EFFFEFEDEDFFEDECECFFEDECECFFEDECECFFEDEC
      ECFFECECEEFFFFFFFFFFB47805FF1515151615151516C49250FFFFFFFFFFFAF1
      DBFF757066FFFBF3DEFFF9F1DCFFFBF3DEFF757167FFFBF3DEFFF9F1DCFFFBF3
      DEFF757167FFFBF3DEFFF9F1DCFFFBF3DEFF757167FFFBF3DEFFF9F1DCFFFBF3
      DEFF757167FFFBF3DEFFF9F1DCFFFBF3DEFF757167FFFBF3DEFFF9F1DCFFFAF2
      DDFF726E63FFFFFFFFFFC49351FF1515151600000016B47A08FFFFFFFFFFFFD3
      95FFFFD499FFFFD193FFFFFFFFFFFFEFB7FFBDF4E1FF71F9FFFF71F9FFFFBDF4
      E2FFFFF0BCFFFFF0BFFFFFF1C0FFFFF5C5FF62B488FF069064FF279576FF1193
      66FF4BA675FF81B785FFDFE2B2FF86CDA4FFFFF2BDFFFFFFFFFFFFD193FFFFD4
      99FFFFD395FFFFFFFFFFB47A08FF0000001600000016B47A07FFFFFFFFFFE7E5
      E5FFFAEAEAFF00A280FF99DFD4FF6DD1C3FF6DD1C3FF6ED1C3FF6DD1C3FF6DD1
      C3FF99DFD4FF00A280FFFBEAEBFFE9E6E5FFE5E6E5FFE5EBEFFFE09D4EFFFFDF
      AEFFFFD191FFFFD192FFFFD192FFFFD192FFFFD191FFFFDFAEFFE09D4EFFE4EA
      EFFFE3E5E6FFFFFFFFFFB47A07FF0000001615151516B47805FFFFFFFFFFE9E9
      E9FFEAE9E8FFEAE9E8FFEAE9E8FFEAE9E8FFEDEBE9FFFBF3EDFF1768ADFF3DAD
      E2FF206AA6FF609AC3FFF3FCFFFFE1F5FFFFE2F5FFFFF4FDFFFF5C99C4FF1366
      A9FF9B8F87FFF7F3F0FFECEBEAFFEAE9E8FFEAE9E8FFEAE9E8FFEAE9E8FFEAE9
      E8FFE9E9E9FFFFFFFFFFB47805FF1515151615151516C49351FFFFFFFFFF726D
      62FFF9F0DAFFF8EED9FFFAF1DBFF757066FFFAF1DBFFF8EED9FFFAF1DBFF7570
      66FFFAF1DBFFF8EED9FFFAF1DBFF757066FFFAF1DBFFF8EED9FFFAF1DBFF7570
      66FFFAF1DBFFF8EED9FFFAF1DBFF757066FFFAF1DBFFF8EED9FFFAF1DBFF756F
      65FFF8EFD8FFFFFFFFFFC49351FF1515151600000016B47A08FFFFFFFFFFFFCF
      92FFFFD096FFFFCD90FFFFFFFFFFFFEBA5FF69EAFFFF75EAFFFF75EAFFFF69EA
      FFFFFFECABFFFFECB1FFFFECB2FFFFEEB4FFFFF4BAFF6EAF7AFF4C977AFF8AB2
      88FF74BD8DFF00936DFF008F6AFF7BC08EFFFFEEAEFFFFFFFFFFFFCD90FFFFD0
      96FFFFCF92FFFFFFFFFFB47A08FF0000001600000016B47A07FFFFFFFFFFE5E3
      E3FFF8E8E8FF00A380FF9CDED5FF62CABBFF64CBBCFF64CBBCFF64CBBCFF62CA
      BBFF9CDED5FF00A380FFF9E8E9FFE7E4E3FFE3E4E3FFE3E8EDFFE09D4EFFFFE1
      B3FFFFCC8AFFFFCD8CFFFFCD8CFFFFCD8CFFFFCC8AFFFFE1B3FFE09D4EFFE2E8
      EDFFE1E3E4FFFFFFFFFFB47A07FF0000001615151516B47805FFFFFFFFFFE5E5
      E6FFE7E6E5FFE7E6E5FFE7E6E5FFE7E6E5FFE9E7E5FFF2ECE8FF669BC7FF186B
      B5FF1A6DB7FF1566A9FF5C9AC7FFFFFFFFFFFFFFFFFF5D9BC8FF1267ADFFE4DB
      D3FF96908BFFEFEEECFFE8E7E6FFE7E6E5FFE7E6E5FFE7E6E5FFE7E6E5FFE7E6
      E5FFE5E5E6FFFFFFFFFFB47805FF1515151615151516C49351FFFFFFFFFFF4EB
      D2FFF6EDD5FFF9F0D8FF747064FFF9F0D8FFF6EED6FFF9F0D8FF747064FFF9F0
      D8FFF6EED6FFF9F0D8FF747064FFF9F0D8FFF6EED6FFF9F0D8FF747064FFF9F0
      D8FFF6EED6FFF9F0D8FF747064FFF9F0D8FFF6EED6FFF9F0D8FF747064FFF8EF
      D7FFF3EAD1FFFFFFFFFFC49250FF1515151600000016B47A08FFFFFFFFFFFFCD
      8DFFFFCE92FFFFCB8BFFFFFFFFFFFFE893FF60DCFFFF6DDDFFFF6DDDFFFF60DC
      FFFFFFEA9BFFFFE9A2FFFFE9A3FFFFE9A3FFFFECA5FFFFF1A9FF71BD8CFF009D
      79FF8DC590FF94BB7EFF8CB87DFFFDE7A0FFFFE99DFFFFFFFFFFFFCB8BFFFFCE
      92FFFFCD8DFFFFFFFFFFB47A08FF0000001600000016B47A07FFFFFFFFFFE3E1
      E1FFF6E5E6FF00A380FFA2DFD6FF54C4B4FF57C5B5FF57C5B5FF57C5B5FF54C4
      B4FFA2DFD6FF00A380FFF6E6E6FFE5E2E0FFE1E2E1FFE0E6EBFFE09D4EFFFFE2
      B8FFFFC882FFFFC984FFFFCA85FFFFC984FFFFC882FFFFE2B8FFE09D4EFFE0E6
      EAFFDFE1E1FFFFFFFFFFB47A07FF0000001615151516B47805FFFFFFFFFFE1E2
      E1FFE3E3E1FFE3E3E1FFE3E3E1FFE3E3E1FFE3E3E1FFE7E5E2FFEEE9E4FFF4EC
      E5FFF6EEE6FFFBF1E7FF0E63AEFF629FCBFF63A0CCFF1167B2FFA59990FFDBD7
      D3FF95918FFFE9E9E7FFE4E4E2FFE3E3E1FFE3E3E1FFE3E3E1FFE3E3E1FFE3E3
      E1FFE1E2E1FFFFFFFFFFB47805FF1515151615151516C49250FFFFFFFFFFF3E8
      CEFFF9EDD3FF746E63FFF9EED5FFF7EBD3FFF9EED5FF746E63FFF9EED5FFF7EB
      D3FFF9EED5FF746E63FFF9EED5FFF7EBD3FFF9EED5FF746E63FFF9EED5FFF7EB
      D3FFF9EED5FF746E63FFF9EED5FFF7EBD3FFF9EED5FF746E63FFF9EED5FFF6EA
      D1FFF4E8CFFFFFFFFFFFC49351FF1515151600000016B47A08FFFFFFFFFFFFCB
      8AFFFFCC8FFFFFC988FFFFFFFFFFFFE384FFB2DAC8FF58CCFFFF58CCFFFFB2DA
      CAFFFFE58CFFFFE591FFFFE592FFFFE592FFFFE592FFFFE793FFFEE390FF88B5
      73FFAAC27BFFFFEB96FFFFE995FFFFE692FFFFE389FFFFFFFFFFFFC988FFFFCC
      8FFFFFCB8AFFFFFFFFFFB47A08FF0000001600000016B57A07FFFFFFFFFFE1DD
      DFFFF3E2E3FF00A481FFA9E0D7FF44BDAAFF46BEABFF46BEACFF46BEABFF44BD
      AAFFA9E0D7FF00A481FFF4E3E4FFE3DFDEFFDFDFDFFFDEE3E8FFE19D4DFFFFE5
      BFFFFFC477FFFFC479FFFFC579FFFFC479FFFFC477FFFFE5BFFFE19D4DFFDDE2
      E8FFDDDDDFFFFFFFFFFFB57A07FF0000001615151516B47805FFFFFFFFFFDEDD
      DEFFE0DEDEFFE0DFDEFFE0DFDEFFE0DFDEFFE0DFDEFFE0DFDEFFE2E0DEFFE3E1
      DFFFE3E1DFFFE8E4E0FFF4EAE2FF0E67B5FF0F67B6FFF7EDE6FFBBB5B1FF9995
      93FFB4B2B0FFE4E3E2FFE1DFDFFFE0DFDEFFE0DFDEFFE0DFDEFFE0DFDEFFE0DE
      DEFFDEDDDEFFFFFFFFFFB47805FF1515151615151516C49351FFFFFFFFFFF6EA
      CDFF736E61FFF8EDD2FFF6EAD0FFF8EDD2FF736E62FFF8EDD2FFF6EAD0FFF8ED
      D2FF736E62FFF8EDD2FFF6EAD0FFF8EDD2FF736E62FFF8EDD2FFF6EAD0FFF8ED
      D2FF736E62FFF8EDD2FFF6EAD0FFF8EDD2FF736E62FFF8EDD2FFF6EAD0FFF7EC
      D0FF706B5EFFFFFFFFFFC49351FF1515151600000016B47A08FFFFFFFFFFFFC9
      87FFFFCA8CFFFFC886FFFFFFFFFFFFDE6FFFFFDF70FFFFE06EFFFFE06EFFFFDF
      71FFFFDF75FFFFDE77FFFFDE77FFFFDE77FFFFDE77FFFFDF77FFFFE078FFFFE2
      79FFFFE179FFFFE078FFFFDF78FFFFDE76FFFFDE71FFFFFFFFFFFFC886FFFFCA
      8CFFFFC987FFFFFFFFFFB47A08FF0000001600000016B57A07FFFFFFFFFFDEDB
      DCFFEFDFE1FF00A480FFB3E3DCFFB8E5DEFFB8E5DEFFB8E6DEFFB8E5DEFFB8E5
      DEFFB3E3DCFF00A480FFF0E0E1FFE0DDDCFFDDDDDDFFDCE0E5FFE29D4CFFFFE9
      C7FFFFEACBFFFFEACBFFFFEACBFFFFEACBFFFFEACBFFFFE9C7FFE29D4CFFDBE0
      E4FFDADBDDFFFFFFFFFFB57A07FF0000001615151516B57805FFFFFFFFFFDADA
      D9FFDCDBD8FFDCDBD9FFDCDBD9FFDCDBD9FFDCDBD9FFDCDBD9FFDCDBD9FFDCDB
      D9FFDDDBD9FFDEDCDAFFE2DFDAFFE9E2DCFFE9E2DCFFE4E0DCFFE1E0DDFFE1E0
      DEFFE0DFDDFFDEDDDAFFDDDCD9FFDCDBD9FFDCDBD9FFDCDBD9FFDCDBD9FFDCDB
      D8FFDADAD9FFFFFFFFFFB57805FF1515151615151516C49351FFFFFFFFFF706A
      5BFFF6EBCDFFF5E9CDFFF7ECCFFF736D60FFF7ECCFFFF5E9CDFFF7ECCFFF736D
      60FFF7ECCFFFF5E9CDFFF7ECCFFF736D60FFF7ECCFFFF5E9CDFFF7ECCFFF736D
      60FFF7ECCFFFF5E9CDFFF7ECCFFF736D60FFF7ECCFFFF5E9CDFFF7ECCFFF736D
      5FFFF5E9CAFFFFFFFFFFC49351FF1515151600000016B47A08FFFFFFFFFFFFC6
      82FFFFC887FFFFC684FFFFEFDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDCFFFFC684FFFFC8
      87FFFFC682FFFFFFFFFFB47A08FF0000001600000016B57A07FFFFFFFFFFDAD8
      D8FFE6DCDBFF3DB9A2FF00A380FF00A380FF00A380FF00A380FF00A380FF00A3
      80FF00A380FF3DB9A2FFE7DCDBFFDCDAD8FFDADAD8FFDADCDEFFDFB684FFE19D
      4CFFE19D4DFFE09D4DFFE09D4DFFE09D4DFFE19D4DFFE19D4CFFDFB684FFD9DC
      DDFFD8D8D8FFFFFFFFFFB57A07FF0000001615151516B57805FFFFFFFFFFD5D5
      D5FFD6D5D4FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6
      D5FFD6D6D5FFD6D6D5FFD7D6D5FFD8D7D5FFD8D7D5FFD7D7D5FFD7D7D5FFD7D7
      D6FFD7D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D6D5FFD6D5
      D4FFD5D5D5FFFFFFFFFFB57805FF1515151615151516C49351FFFFFFFFFFF1E4
      C4FFF3E6C8FFF6E9CBFF726C5FFFF6E9CBFFF4E7CAFFF6E9CBFF726C5FFFF6E9
      CBFFF4E7CAFFF6E9CBFF726C5FFFF6E9CBFFF4E7CAFFF6E9CBFF726C5FFFF6E9
      CBFFF4E7CAFFF6E9CBFF726C5FFFF6E9CBFFF4E7CAFFF6E9CBFF726C5FFFF5E9
      CAFFF0E3C4FFFFFFFFFFC49250FF1515151600000016B47A08FFFFFFFFFFFFC1
      78FFFFC27CFFFFC27BFFFFC077FFFFBF75FFFFBE74FFFFBE74FFFFBE74FFFFBE
      74FFFFBE74FFFFBE74FFFFBE74FFFFBE74FFFFBE74FFFFBE74FFFFBE74FFFFBE
      74FFFFBE74FFFFBE74FFFFBE74FFFFBE74FFFFBF75FFFFC077FFFFC27BFFFFC2
      7CFFFFC178FFFFFFFFFFB47A08FF0000001600000016B57A07FFFFFFFFFFD4D4
      D4FFD9D5D5FFE2D8D8FFE8D8DAFFE9D9DBFFEAD9DBFFEAD9DBFFEAD9DBFFE9D9
      DBFFE8D8DAFFE2D8D8FFDAD6D6FFD6D5D4FFD5D5D4FFD5D6D6FFD5D8DBFFD4D9
      DEFFD4D9DFFFD4D9DFFFD4D9DFFFD4D9DFFFD4D9DFFFD4D9DEFFD5D8DBFFD4D5
      D6FFD3D4D4FFFFFFFFFFB57A07FF0000001615151516B57907FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB57907FF1515151615151516C49250FFFFFFFFFFEFE2
      C2FFF4E8C8FF736C5DFFF5E9CAFFF2E6C8FFF5E9C9FF736C5DFFF5E9CAFFF2E6
      C8FFF5E9C9FF736C5DFFF5E9CAFFF2E6C8FFF5E9C9FF736C5DFFF5E9CAFFF2E6
      C8FFF5E9C9FF736C5DFFF5E9CAFFF2E6C8FFF5E9C9FF736C5DFFF5E9CAFFF2E5
      C6FFF0E3C2FFFFFFFFFFC49351FF1515151600000016B47B0AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB47B0AFF0000001600000016B57B09FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB57B09FF0000001615151516B57B0CFFF8E1C1FFE1A9
      4EFFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB
      51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB
      51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB51FFE1AB
      51FFE1A94EFFF8E1C1FFB57B0CFF1515151615151516C49351FFFFFFFFFFF1E3
      C1FF716A5BFFF4E6C6FFF1E4C5FFF4E6C6FF726B5CFFF4E6C6FFF1E4C5FFF4E6
      C6FF726B5CFFF4E6C6FFF1E4C5FFF4E6C6FF726B5CFFF4E6C6FFF1E4C5FFF4E6
      C6FF726B5CFFF4E6C6FFF1E4C5FFF4E6C6FF726B5CFFF4E6C6FFF1E4C5FFF3E6
      C5FF6E6757FFFFFFFFFFC49351FF1515151600000016B57D0EFFF8E1C1FFE1A9
      50FFE1AB54FFE1AB55FFE1AB55FFE1AB55FFE1AB55FFE1AB55FFE1AB55FFE1AB
      55FFE1AB55FFE1AB55FFE1AB55FFE1AB55FFE1AB55FFE1AB55FFE1AB55FFE1AB
      55FFE1AB55FFE1AB55FFE1AB55FFE1AB55FFE1AB55FFE1AB55FFE1AB55FFE1AB
      54FFE1A950FFF8E1C1FFB57D0EFF0000001600000016B57D0EFFF8E1C1FFE1A9
      50FFE1AB53FFE1AB53FFE1AB53FFE1AB53FFE1AB53FFE1AB53FFE1AB53FFE1AB
      53FFE1AB53FFE1AB53FFE1AB53FFE1AB53FFE1AB53FFE1AB53FFE1AB53FFE1AB
      53FFE1AB53FFE1AB53FFE1AB53FFE1AB53FFE1AB53FFE1AB53FFE1AB53FFE1AB
      53FFE1A950FFF8E1C1FFB57D0EFF0000001615151516B6800FFFF5DDB8FFD99E
      36FFDAA03BFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA1
      3DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA1
      3DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA13DFFDAA0
      3BFFD99E36FFF5DDB8FFB6800FFF1515151615151516C49351FFFFFFFFFF6D67
      55FFF2E5C2FFF0E3C1FFF3E5C3FF716B5AFFF3E6C3FFF0E3C1FFF3E5C3FF716B
      5AFFF3E6C3FFF0E3C1FFF3E5C3FF716B5AFFF3E6C3FFF0E3C1FFF3E5C3FF716B
      5AFFF3E6C3FFF0E3C1FFF3E5C3FF716B5AFFF3E6C3FFF0E3C1FFF3E5C3FF706A
      59FFF0E2BEFFFFFFFFFFC49351FF1515151600000016B68011FFF5DDB8FFD99E
      38FFDAA03DFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA1
      3FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA1
      3FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA0
      3DFFD99E38FFF5DDB8FFB68011FF0000001600000016B68011FFF5DDB8FFD99E
      38FFDAA03DFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA1
      3FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA1
      3FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA13FFFDAA0
      3DFFD99E38FFF5DDB8FFB68011FF0000001614141415B68111FFF1D6A9FFD18B
      14FFD28E18FFD28E19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E
      19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E
      19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E19FFD28E
      18FFD18B14FFF1D6A9FFB68111FF1414141515151516C49351FFFFFFFFFFECDD
      B7FFEEDFBBFFF1E2BEFF706857FFF1E2BEFFEEE0BCFFF1E2BEFF706857FFF1E2
      BEFFEEE0BCFFF1E2BEFF706857FFF1E2BEFFEEE0BCFFF1E2BEFF706857FFF1E2
      BEFFEEE0BCFFF1E2BEFF706857FFF1E2BEFFEEE0BCFFF1E2BEFF706857FFF0E1
      BDFFEBDBB6FFFFFFFFFFC49251FF1515151600000015B68113FFF1D6A9FFD18B
      16FFD28E1AFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E
      1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E
      1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E
      1AFFD18B16FFF1D6A9FFB68113FF0000001500000015B68113FFF1D6A9FFD18B
      16FFD28E1AFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E
      1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E
      1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E1BFFD28E
      1AFFD18B16FFF1D6A9FFB68113FF000000150C0C0C0DB88214FFEECF9BFFECCD
      98FFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
      9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
      9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
      9AFFECCD98FFEECF9BFFB88214FF0C0C0C0D14141415C49351FFFFFFFFFFE8D8
      AFFFECDBB3FF6D6551FFEFDFB7FFECDBB4FFECDCB4FF6D6551FFEFDFB7FFECDB
      B4FFECDCB4FF6D6551FFEFDFB7FFECDBB4FFECDCB4FF6D6551FFEFDFB7FFECDB
      B4FFECDCB4FF6D6551FFEFDFB7FFECDBB4FFECDCB4FF6D6551FFEFDFB7FFEBDA
      B2FFE7D7AEFFFFFFFFFFC49351FF141414150000000DB88216FFEECF9BFFECCD
      98FFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
      9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
      9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
      9AFFECCD98FFEECF9BFFB88216FF0000000D0000000DB88216FFEECF9BFFECCD
      98FFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
      9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
      9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE9AFFECCE
      9AFFECCD98FFEECF9BFFB88216FF0000000D03030304998863B4B88314FFB782
      13FFB78113FFB78113FFB78113FFB78113FFB78113FFB78113FFB78113FFB781
      13FFB78113FFB78113FFB78113FFB78113FFB78113FFB78113FFB78113FFB781
      13FFB78113FFB78113FFB78113FFB78113FFB78113FFB78113FFB78113FFB781
      13FFB78213FFB88314FF998863B4030303040C0C0C0DC59555FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC59555FF0C0C0C0D000000047F5C12B4B88316FFB782
      15FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB781
      15FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB781
      15FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB781
      15FFB78215FFB88316FF7F5C12B400000004000000047F5C12B4B88316FFB782
      15FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB781
      15FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB781
      15FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB78115FFB781
      15FFB78215FFB88316FF7F5C12B4000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030303049E8E7AB4C59555FFC493
      51FFC49351FFC49351FFC49351FFC49251FFC49351FFC49351FFC49351FFC492
      51FFC49351FFC49351FFC49351FFC49251FFC49351FFC49351FFC49351FFC492
      51FFC49351FFC49351FFC49351FFC49251FFC49351FFC49351FFC49351FFC492
      51FFC49351FFC59555FF9E8E7AB4030303040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000060000000F000000150000001600000016000000150000000F0000
      0006000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000060000000F000000150000001600000016000000150000000F0000
      0006000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      000E000000200000003400000040000000430000004300000040000000340000
      00200000000E0000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      000E000000200000003400000040000000430000004300000040000000340000
      00200000000E0000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000500000010000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      00160000001600000016000000160000001600000016000000160000001D0000
      002F001B0E69006536D1008A48FF008948FF008948FF008A48FF006536D1001B
      0E690000002D0000001200000003000000000000000000000001000000030000
      0005000000050000000500000005000000050000000500000005000000050000
      0005000000050000000500000005000000050000000400000007000000140000
      002D001B0E69006536D1008A48FF008948FF008948FF008A48FF006536D1001B
      0E690000002D0000001200000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001000000031000000420000
      0043000000430000004300000043000000430000004300000043000000430000
      004300000043000000430000004300000043000000430000004300000046004E
      2BB2009251FF00B678FF00CD90FF00D194FF00D194FF00CD90FF00B678FF0091
      51FF00512BB40000002D0000000E0000000100000005000000120000001D0000
      001F0000001F0000001F0000001F0000001F0000001F0000001F0000001F0000
      001F0000001F0000001F0000001F0000001F0000001F00000024000000350050
      2CB3009151FF00B678FF00CD90FF00D194FF00D194FF00CD90FF00B678FF0091
      51FF00512BB40000002D0000000E000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000600000011000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      0016000000160000001600000016000000160000001600000016000000160000
      00160000001600000016000000110000000600000016A97640F2B3793FFFB277
      3CFFB1763BFFB1763BFFB1763BFFB1763BFFB1763BFFB1763BFFB1763BFFB176
      3BFFB1763BFFB1763BFFB1763BFFB2773BFFB5783CFFC27940FF4D8446FF0097
      55FF00CB8FFF00CD8FFF00C98AFF00C685FF00C685FF00C98AFF00CD8FFF00CB
      8FFF009655FF00512BB100000020000000060000001000000032281D126D241B
      106C241B106C241B106C241B106C241B106C241B106C241B106C241B106C241B
      106C241B106C241B106C241B106C241B106C241A116B23170F6903582FBF0096
      54FF00CB8FFF00CD8FFF00C98AFF00C685FF00C685FF00C98AFF00CD8FFF00CB
      8FFF009655FF00512BB100000020000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000F0000002E000000410000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      0043000000430000004300000043000000430000004300000043000000430000
      00430000004300000042000000310000001000000016B3793FFFFFF8E7FFFFF2
      DFFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1
      DDFFFFF1DDFFFFF1DDFFFFF1DDFFFFF1DEFFFFF4E2FFCFDBC0FF008E4BFF00C9
      8CFF00CA8CFF00C788FF00C380FFFFFFFFFFFFFFFFFF00C380FF00C788FF00CA
      8CFF00C98DFF009250FF001B0E5D0000000F00000016AB7F4DF2B5834BFFB381
      48FFB38047FFB38047FFB38047FFB38047FFB38047FFB38047FFB38047FFB380
      47FFB38047FFB38047FFB38047FFB48047FFBD824BFF95864EFF00914EFF00C9
      8CFF00CA8CFF00C788FF00C380FFFFFFFFFFFFFFFFFF00C380FF00C788FF00CA
      8CFF00C98DFF009250FF001B0E5D0000000F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000000080000
      000F000000140000001600000016000000160000001600000016000000150000
      0010000000080000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000DAA600AFFA85E07FFA65A
      02FFA55900FFA55900FFA55900FFA55900FFA55900FFA55900FFA55900FFA559
      00FFA55900FFA55900FFA55900FFA55900FFA55900FFA55900FFA55900FFA559
      00FFA55900FFA55900FFA55900FFA55900FFA55900FFA55900FFA55900FFA559
      00FFA65A02FFA85E07FFAA600AFF0000000F00000016B2773CFFFFF2DFFFFBE8
      D1FFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7CFFFFAE7
      CFFFFAE7CFFFFAE7CFFFFAE7CFFFFDE8D1FFFFEDD8FF42A46EFF00AF6EFF00C8
      89FF00C586FF00C383FF00BE78FFFFFFFFFFFFFFFFFF00BE78FF00C383FF00C5
      86FF00C88AFF00B373FF006736CD0000001500000016B5834CFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF47B184FF00B16FFF00C8
      8AFF00C586FF00C383FF00BE78FFFFFFFFFFFFFFFFFF00BE78FF00C383FF00C5
      86FF00C88AFF00B373FF006736CD000000150000000000000000000000000000
      0000000000000000000000000000000000040000000D00000018000000260000
      00350000003F0000004200000043000000430000004300000043000000400000
      003600000026000000170000000A000000020000000000000000000000000000
      00000000000000000000000000000000000000000004744107B6D5984AFFF6D2
      A2FFF2CD9AFFF1CC99FFF1CC9AFFF1CC9AFFF1CC9AFFF1CC9AFFF1CC9AFFF1CC
      9AFFF1CC9AFFF1CC9AFFF1CC9AFFF1CC9AFFF1CC9AFFF1CC9AFFF1CC9AFFF1CC
      9AFFF1CC9AFFF1CC9AFFF1CC9AFFF1CC9AFFF1CC9AFFF1CC9AFFF1CC99FFF2CD
      9AFFF6D2A2FFD5984AFF8F5108DB0000000500000016B1763BFFFFF1DDFFF9E4
      CCFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3CAFFF8E3
      CAFFF8E3CAFFF8E3CAFFF8E3CAFFFCE5CCFFFFEAD5FF008039FF00C384FF00C3
      82FF00BE7BFF00BC76FF00B86EFFFFFFFFFFFFFFFFFF00B86EFF00BC76FF00BE
      7BFF00C383FF00C587FF008A49FF0000001600000016B38148FFFFFFFFFFFFFF
      FFFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFF
      FDFFFFFFFDFFFFFFFDFFFFFFFDFFFFFFFFFFFFFFFFFF007D35FF00C383FF00C3
      82FF00BE7BFF00BC76FF00B86EFFFFFFFFFFFFFFFFFF00B86EFF00BC76FF00BE
      7BFF00C383FF00C587FF008A49FF000000160000000000000000000000000000
      00000000000000000001000000090000001900000030000000410F2E438B2061
      8ED12A7FBAF82C85C1FF2C85C1FF2C85C1FF2C85C1FF2C85C1FF2C85C1FF2060
      8DD00F2E448B0000003E0000002A000000150000000600000000000000000000
      00000000000000000000000000000000000000000000000000036C3B02AED091
      41FFF0CB99FFE4AA5DFFE3AA5DFFE3AA5EFFE3AB5EFFE3AB5EFFE3AB5EFFE3AB
      5EFFE3AB5EFFE3AB5EFFE3AB5EFFE3AB5EFFE3AB5EFFE3AB5EFFE3AB5EFFE3AB
      5EFFE3AB5EFFE3AB5EFFE3AB5EFFE3AB5EFFE3AA5EFFE3AA5DFFE4AA5DFFF0CB
      99FFD09141FF6C3B02AE000000030000000000000016B1763BFFFFF1DEFFF8E2
      C8FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1C7FFF7E1
      C7FFF7E1C7FFF7E1C7FFF7E1C7FFFBE2C9FFFFE9D2FF00813BFF16CC94FF00BD
      79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00BD79FF1ACD96FF008948FF0000001600000016B38047FFFFFFFFFFFFFF
      FBFFFFFEF8FFFFFFF8FFFFFFF8FFFFFFF8FFFFFEF8FFFFFEF8FFFFFEF8FFFFFE
      F8FFFFFEF8FFFFFEF8FFFFFEF8FFFFFFFBFFFFFFFFFF007D35FF16CB93FF00BD
      79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00BD79FF1ACD96FF008948FF000000160000000000000000000000000000
      0000000000020000000D000000240000003E1C567FC32582C1FF1880C3FF0B7B
      C5FF0378C6FF0078C6FF0078C5FF0078C5FF0078C5FF0078C5FF0078C6FF0B7B
      C5FF1980C3FF2682C1FF13375399000000380000001D00000008000000010000
      0000000000000000000000000000000000000000000000000000000000036C3A
      00AECF9040FFF0CB9AFFE5AC5FFFE5AC60FFE5AC60FFE5AD61FFE5AD61FFE5AD
      61FFE5AD61FFE5AD61FFE5AD61FFE5AD61FFE5AD61FFE5AD61FFE5AD61FFE5AD
      61FFE5AD61FFE5AD61FFE5AD61FFE5AC60FFE5AC60FFE5AC5FFFF0CB9AFFCF90
      40FF6C3A00AE00000003000000000000000000000016B1773BFFFFF1DEFFF7E1
      C5FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0C4FFF6E0
      C4FFF6E0C4FFF6E0C4FFF6E0C4FFFAE2C6FFFFE8CFFF00803AFF34D2A0FF00BB
      75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00BB76FF38D3A2FF008947FF0000001500000016B38047FFFFFFFFFFFFFF
      F8FFFFFFF5FFFFFFF5FFFFFFF5FFFFFFF5FFFFFFF5FFFFFFF5FFFFFFF5FFFFFF
      F5FFFFFFF5FFFFFFF5FFFFFFF5FFFFFFF7FFFFFFFFFF008035FF35D29FFF00BB
      75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF00BB76FF38D3A2FF008947FF000000150000000000000000000000000000
      0003000000110000002A0C2333772081C2FF0D7DC6FF1E8FD3FF349DDBFF45A8
      E1FF55B5E8FF5CB9EBFF5CB9EBFF5CB9ECFF5CB9ECFF5CB9EBFF5CB9EBFF45A8
      E2FF2895D6FF0D83CBFF117DC6FF2274ACED01040847000000220000000C0000
      0002000000000000000000000000000000000000000600000011000000160000
      001A683900B2C78738FFDEB484FFD49950FFD49A51FFD49A52FFD49A52FFD49A
      52FFD49A52FFD49A52FFD49A52FFD49A52FFD49A52FFD49A52FFD49A52FFD49A
      52FFD49A52FFD49A52FFD49A52FFD49A51FFD49950FFDEB484FFC88839FF6839
      00B20000001A00000016000000110000000600000016B1773BFFFFF1DFFFF5DF
      C2FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DEC1FFF5DE
      C1FFF5DEC1FFF5DEC1FFF5DEC1FFF9DFC3FFFFE5CBFF007E38FF67DAB6FF00BB
      77FF00B973FF00B770FF00B267FFFFFFFFFFFFFFFFFF00B267FF00B770FF00B9
      73FF00BB77FF6DDCB9FF008946FF0000000F00000016B38148FFFFFFFFFFFFFF
      F4FF072EEDFF0436EDFF0B47EEFF0F54EFFF1460F1FF176EF2FF1A7BF3FF1F88
      F4FF2294F5FF259FF5FF26A5F6FF27A2F8FF2D99FFFF008432FF6BDBB5FF00BB
      77FF00B973FF00B770FF00B267FFFFFFFFFFFFFFFFFF00B267FF00B770FF00B9
      73FF00BB77FF6DDCB9FF008946FF0000000F0000000000000000000000020000
      00100000002D0F3752961984C8FF309ADAFF54B3E8FF53B5E9FF4EB2E9FF4BB1
      EAFF4BB2EDFF4DB5F1FF4FB8F4FF50B9F6FF50B9F6FF4FB8F4FF4DB5F0FF4DB3
      ECFF50B3E8FF55B5E8FF44A8E1FF1B8DD1FF1881C6FF07192366000000260000
      000D000000020000000000000000000000000000001000000031000000420000
      0043000000465C3100B3BF7C30FFD8AD7BFFD0944EFFD0954FFFD0954FFFD095
      4FFFD0954FFFD0954FFFD0954FFFD0954FFFD0954FFFD0954FFFD0954FFFD095
      4FFFD0954FFFD0954FFFD0954FFFD0944EFFD8AD7BFFBF7C30FF5C3100B30000
      00460000004300000042000000310000001000000016B1773BFFFFF2DFFFF4DD
      BEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DCBEFFF4DC
      BEFFF4DCBEFFF4DCBEFFF4DCBEFFF7DDBFFFFFE1C5FF399F65FF56C39BFF27C8
      94FF00BA77FF00B977FF00B46DFFFFFFFFFFFFFFFFFF00B46DFF00B977FF00BA
      77FF29C895FF62C7A0FF006635C40000000600000016B38148FFFFFFFFFFFFFF
      F1FF284BF0FF1D4AEEFF1E55EFFF2362F0FF276EF1FF2A7AF2FF2E87F3FF3193
      F4FF359FF5FF38ACF6FF3AB5F6FF3AAEF8FF38A2FFFF068D74FF5FC698FF29C8
      94FF00BA77FF00B977FF00B46DFFFFFFFFFFFFFFFFFF00B46DFF00B977FF00BA
      77FF29C895FF62C7A0FF006635C40000000600000000000000010000000C0000
      0028144B71B32993D3FF4FB0E6FF51B3E9FF54B3E8FF9BCAE0FFCCDEE0FFF3F0
      E6FFFFEED5FFD4A974FFAE7E3EFFA57A3AFFA57A3BFFAD8241FFD5AE7EFFE6EC
      ECFFCAEAFDFF96D1F2FF47AEE6FF51B3E8FF3AA1DEFF1585CBFF0C2E44860000
      00270000000D00000002000000000000000000000010C68439FFC58136FFC47E
      33FFC47E32FFC37D32FFC27C2FFFC27B2EFFC27C2FFFC27C2FFFC27C2FFFC27B
      2FFFC27B2FFFC27B2FFFC27B2FFFC27B2FFFC27B2FFFC27B2FFFC27B2FFFC27B
      2FFFC27B2FFFC27C2FFFC27C2FFFC27C2FFFC27B2EFFC27C2FFFC37D32FFC47E
      32FFC47E33FFC58136FFC68439FF0000001000000016B1773BFFFFF2DFFFF3DA
      BBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DABBFFF3DA
      BBFFF3DABBFFF3DABBFFF3DABBFFF4DABBFFFDDDBFFFBFC9A2FF008D4BFF87E0
      C3FF1BC48AFF00B773FF00B36CFFFFFFFFFFFFFFFFFF00B36CFF00B773FF1CC4
      8BFF8DE3C6FF0A9456FF001B0F3E0000000100000016B38148FFFFFFFFFFFFFF
      EFFF2649EFFF3E65F0FF2358EFFF2564F0FF2A71F1FF2E7CF2FF3189F3FF3495
      F4FF38A1F5FF3BADF6FF3FB8F7FF3DB1F7FF3BA3FBFF2793D0FF059345FF8CE2
      C2FF1CC48AFF00B773FF00B36CFFFFFFFFFFFFFFFFFF00B36CFF00B773FF1CC4
      8BFF8DE2C6FF0B9456FF001B0F3E000000010000000000000008000000220A2D
      44843CA2DDFF57B6E9FF4BB1E9FF99C9DCFFF8E8D2FFFFEED7FFFFF2E0FFF2DF
      C8FFA47738FF967D4BFF8F8861FF8B8D6DFF8A8D6EFF8D8964FF937E4EFFA37A
      3DFFFEF2E5FFFFFFFFFFFFFFFEFFACD9F0FF54B3E7FF4FB1E8FF2390D3FF0A2C
      4485000000270000000D000000020000000000000005B57833EDF0BE72FFFFF0
      C2FFFFECBCFFFFEBBBFFFFECBDFFE5BF93FFEBC397FFF9D5A8FFF8D5A8FFF8D4
      A7FFF8D4A7FFF8D4A7FFF8D4A7FFF8D4A7FFF8D4A7FFF8D4A7FFF8D4A7FFF8D4
      A7FFF8D4A7FFF8D5A8FFF9D5A8FFEBC397FFE5BF93FFFFECBDFFFFEBBBFFFFEC
      BCFFFFF0C2FFF0BE72FFB57833ED0000000500000016B1773BFFFFF2DFFFF2D8
      B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8
      B8FFF2D8B8FFF2D8B8FFF2D8B8FFF2D8B8FFF6D9BAFFFFDDBFFF4AA36BFF0094
      55FF91E2C7FF5AD4ABFF09BC7EFF00B067FF00B067FF09BC7EFF5AD4ABFF93E3
      C8FF0D9A5DFF0050299E000000030000000000000016B38148FFFFFFFFFFFFFF
      EBFF2346EFFF3E66F1FF4471F1FF2664F0FF286FF1FF2D7BF2FF3088F3FF3493
      F4FF37A0F5FF3AAAF6FF3CB1F6FF3BACF6FF39A1F8FF3895FFFF0A8980FF0F9A
      50FF96E4C5FF5CD4AAFF0ABC7DFF00B067FF00B067FF09BC7DFF5BD4ABFF96E3
      C9FF139A5DFF00512A9C0000000300000000000000050000001C0518256342A5
      DFFF56B5E9FF49B0E9FFBDD3D5FFFEEACDFFF8E8D2FFF8EDDBFFF2E4CFFFA575
      33FF947E4FFF898E6FFF809989FF79A19AFF70928BFF7D9C8EFF869076FF9081
      54FFA17738FFFDF5EEFFFFFFFFFFFFFFF8FFFFFCF4FF84C6E9FF4DB1E8FF359C
      DBFF082D46850000002900000010000000030000000000000005AC6F2CE5E8B3
      65FFFFE4B5FFFBCB7DFFFBCC7EFFFDD083FFD3944BFFDC9C53FFF1B66BFFF1B6
      6BFFF1B66BFFF1B66BFFF1B66BFFF1B66BFFF1B66BFFF1B66BFFF1B66BFFF1B6
      6BFFF1B66BFFF1B66BFFDC9C53FFD3944BFFFDD083FFFBCC7EFFFBCB7DFFFFE4
      B5FFE8B365FFAC6F2CE5000000050000000000000016B1773BFFFFF2E0FFF1D7
      B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7
      B5FFF1D7B5FFF1D7B5FFF1D7B5FFF1D7B5FFF2D7B5FFF7D9B8FFFFDDBDFF5CA9
      72FF008D4BFF52C097FF8FE0C4FF9AE6CDFF9AE6CDFF8FE0C4FF52C197FF0091
      50FF4F8244FF00000016000000000000000000000016B38148FFFFFFFEFFFFFF
      E8FF2042F0FF3B62F0FF4974F2FF497BF2FF286DF1FF2B78F2FF3085F3FF3390
      F3FF369CF4FF38A4F5FF39A8F5FF39A5F5FF379DF6FF3593F8FF3486FFFF0B84
      8DFF059744FF5BC593FF94E3C3FF9DE9CCFF9CE8CCFF90E0C3FF54C198FF0093
      53FF004F299D0000000300000000000000000000000F0005093D48A8DFFF57B6
      E9FF49B0EAFFBCD2D2FFFCE6C9FFF4E5CDFFF4E7D4FFF8F0E0FFC49E69FF9A78
      3FFF8D8C69FF7B9588FF424C4CFF333032FF333032FF424B4CFF77978EFF888E
      70FF957A46FFC6A475FFFFFFFFFFFFFAF5FFFFFAF1FFFFFCEFFFD0E4EBFF53B3
      E8FF41A8E2FF0F334A860000002B0000000C000000010000000400000009AB6E
      2BE4E5AC5FFFFCE0B2FFF7C678FFF7C77BFFFACB80FFD4954EFFBD7331FFBD74
      32FFBD7432FFBD7432FFBD7432FFBD7432FFBD7432FFBD7432FFBD7432FFBD74
      32FFBD7432FFBD7331FFD4954EFFFACB80FFF7C77BFFF7C678FFFCE0B1FFE5AC
      5FFFAC6E2BE500000009000000040000000100000016B1773BFFFFF2E0FFF0D5
      B1FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5
      B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF0D5B2FFF1D5B3FFF6D7B5FFFFDA
      B9FFBCC49BFF379D61FF008039FF00813AFF00813AFF008039FF379D60FFCCDB
      BFFFC67940FF00000016000000000000000000000016B38148FFFFFFFDFFFFFF
      E4FF1D3FF0FF385EF0FF4570F1FF4F7EF2FF4E86F3FF317AF2FF2C80F2FF318C
      F3FF3495F4FF369DF4FF37A0F5FF379EF5FF3597F4FF338FF4FF3185F6FF2F76
      FDFF1D73CDFF017E71FF008F31FF008E33FF008A33FF008233FF42AD7BFF9A86
      4EFF00000016000000000000000000000000000000114796C1DE5EB9EBFF55B6
      ECFFC4D5D2FFFFE6C6FFF5E4CAFFF2E5CDFFF3E7D3FFFAF1E2FFA9732DFF9781
      4FFF8A937AFF444B4BFF363536FF383838FF373636FF323032FF3F4747FF8194
      7DFF918255FFA47330FFFFFFFFFFFDF9F3FFFBF6EEFFFCF6ECFFFFF7E9FFFFF6
      E7FFB3D7E7FF52B3E9FF306A8AB00000000F00000008000000180000001F0000
      0023A46827E2DAA054FFECCA9BFFE6B166FFE7B369FFE9B66CFFEAB86EFFEAB8
      6EFFEAB86FFFEAB86FFFEAB86FFFEAB86FFFEAB86FFFEAB86FFFEAB86FFFEAB8
      6FFFEAB86EFFEAB86EFFE9B66CFFE7B369FFE6B166FFECCA9BFFDBA154FF744A
      1CAF000000210000001F000000180000000800000016B1773CFFFFF3E0FFEFD3
      ADFFEFD3ADFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3
      AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFEFD3AEFFF0D3AEFFF3D4
      B0FFF8D6B2FFFFD8B4FFFFD9B6FFFFD9B7FFFFD9B7FFFFD8B6FFFFD7B3FFFFF5
      E5FFB6783DFF00000016000000000000000000000016B38149FFFFFFFCFFFFFF
      E2FF1B3BEFFF365AEFFF416BF1FF4A7AF2FF5388F3FF5B92F4FF438BF3FF2B84
      F3FF318EF3FF3395F4FF3597F4FF3496F4FF3391F3FF318AF3FF2E81F2FF2B76
      F4FF2969F6FF275DFAFF2450FDFF1D41FDFF0B27FDFFFFFFEFFFFFFFFFFFC083
      4CFF00000016000000000000000000000000000000091C86C2FF1383C1FF0B81
      C3FFACA999FFEBD4B5FFF7E6CCFFF2E5CEFFF3E8D3FFFAF3E3FFA46C24FF9783
      53FF89977EFF323135FF393839FF383838FF4B4A4AFF6D6D6EFF6A686AFFA6B6
      A9FF988C64FF9D6B25FFFFFFFFFFFCF7F0FFF9F4ECFFFBF4E9FFFEF5E8FFFFF7
      E5FFE2E3DCFF097DBFFF1984C3FF0000000700000010392C1D632E241769251E
      1364281E126BC3833CF8DAA157FFE4BF92FFDEA65EFFDEA760FFDEA761FFDEA7
      61FFDEA761FFDEA761FFDEA761FFDEA761FFDEA761FFDEA761FFDEA761FFDEA7
      61FFDEA761FFDEA761FFDEA760FFDEA65EFFE4BF92FFDAA157FFA37034DC1813
      0C5C261E13642F25186A392C1D630000001000000016B1773CFFFFF3E1FFEED0
      A9FFEED1AAFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1
      ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1ABFFEED1
      ABFFF0D1ABFFF1D2ACFFF2D2ADFFF2D2ADFFF2D2ADFFF1D2ACFFF1D1ABFFFFF3
      E2FFB2773CFF00000016000000000000000000000016B38149FFFFFFFDFFFFFF
      DFFF1737EFFF3356EFFF3E67F0FF4674F2FF4E83F3FF588DF4FF609AF5FF5D9E
      F5FF3C8FF4FF2C8AF3FF308DF3FF308DF3FF308AF3FF2E84F2FF2D7BF2FF2A71
      F1FF2768F1FF245DF1FF2152F0FF1B44F0FF0428EFFFFFFFE1FFFFFFFEFFB581
      4AFF00000016000000000000000000000000000000010A2537520979BBFF0074
      B9FF0174B9FFA7A89DFFD5C1A7FFEBDBC4FFF7EAD4FFFCF3E2FFA66C23FF9B81
      4EFF8D9578FF313135FF383839FF343434FF888888FF858686FF7E7E81FFAFB6
      AAFFBEB398FF9E681FFFFFFFFCFFFBF6EEFFFBF5EAFFFAF2E5FFFFF3E2FFD9DE
      DAFF0073B7FF0578BCFF04101928000000010000000DEBB976FFEAB873FFEAB7
      70FFEAB76FFFEBB770FFEBB76FFFEBB770FFEBB771FFEBB771FFEAB770FFEAB7
      70FFEAB770FFEAB770FFEAB770FFEAB770FFEAB770FFEAB770FFEAB770FFEAB7
      70FFEAB770FFEAB770FFEBB771FFEBB771FFEBB770FFEBB76FFFEBB76FFFEAB6
      6FFFEAB670FFEAB873FFEBB976FF0000000D00000016B1773CFFFFF3E1FFECCE
      A6FFECCFA7FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCF
      A8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCF
      A8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA8FFECCFA7FFECCEA6FFFFF3
      E1FFB1773CFF00000016000000000000000000000016B38149FFFFFFFCFFFFFF
      DBFF1433EEFF3051EFFF3B62F0FF4370F1FF4B7CF2FF5288F3FF5A93F4FF629D
      F5FF6CA6F6FF6BA7F6FF4C98F5FF3389F3FF287EF2FF2879F2FF2772F1FF266A
      F0FF2461F0FF2157EFFF1E4DEEFF1740EDFF0025EDFFFFFFDBFFFFFFFCFFB381
      49FF0000001600000000000000000000000000000000000000051E6E9FD40779
      BBFF0075BAFF0177B9FFACADA2FFCDB8A0FFCEC1ACFFE8DECFFFAC722AFFA17C
      42FF948E68FF464946FF343437FF303031FFA4A3A3FF9A999AFF9FA2A1FFC6C7
      B7FFD0C3A9FFA66D24FFFEFBF5FFF5EDE2FFF3EADDFFFFF1DFFFA1C2D0FF0175
      B7FF0578BDFF0D2F45630000000200000000000000049F7E4EB5FBD9ADFFFFFD
      F4FFFFFAEEFFFFFAEEFFFFFBF0FFF0DBBFFFF8E8D2FFFFFAECFFFFF9EBFFFFF8
      EAFFFFF8EAFFFFF8EAFFFFF8EAFFFFF8EAFFFFF8EAFFFFF8EAFFFFF8EAFFFFF8
      EAFFFFF8EAFFFFF9EBFFFFFAECFFF8E8D2FFF0DBBFFFFFFBF0FFFFFAEEFFFFFA
      EEFFFFFDF4FFFBD9ADFF9F7E4EB50000000400000016B1773CFFFFF3E2FFEBCC
      A3FFEBCDA4FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCD
      A5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCD
      A5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA5FFEBCDA4FFEBCCA3FFFFF3
      E2FFB1773CFF00000016000000000000000000000016B38149FFFFFFFCFFFFFF
      D7FF0F2DEFFF2D4CEFFF385DEFFF406AF0FF4877F2FF4F82F3FF568CF4FF5C95
      F4FF649DF5FF6BA4F6FF73AAF6FF7AAEF6FF6FA4F7FF5993F4FF4783F3FF3974
      F2FF225CEFFF174CEEFF1442EDFF0D35EDFF0222EEFFFFFED7FFFFFFFCFFB381
      49FF000000160000000000000000000000000000000000000000020407132B8F
      CDFF0678BAFF0075B9FF0071BCFF83A2AAFFD6C0A6FFD1C4B2FFBA905BFFAA74
      2DFF9E8450FF8F8C68FF464845FF28292EFFAFB0B4FFB8B9B9FFD2D3C7FFD9D1
      BFFFDCC9ADFFBF945FFFF0EBE0FFF6E9DAFFFFF1DBFF7AB0C9FF006CB5FF1284
      C6FF1C5B83AF0000000400000000000000000000000000000003987649AEF9D2
      A0FFFFF6E9FFFFE0B6FFFFE1B7FFFFE4BDFFDCA65EFFEDB469FFFFCF8EFFFFCF
      8EFFFFCF8EFFFFCF8EFFFFCF8EFFFFCF8EFFFFCF8EFFFFCF8EFFFFCF8EFFFFCF
      8EFFFFCF8EFFFFCF8EFFEDB469FFDCA65EFFFFE4BDFFFFE1B7FFFFE0B6FFFFF6
      E9FFF9D2A0FF987649AE000000030000000000000016B1773CFFFFF3E2FFE9CB
      9FFFEACCA1FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACC
      A2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACC
      A2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA2FFEACCA1FFE9CB9FFFFFF3
      E2FFB1773CFF00000016000000000000000000000016B38149FFFFFFFBFFFFFF
      D5FF0C26EEFF2A47EEFF3558EFFF3D64F0FF4471F2FF4C7BF2FF5386F3FF598E
      F4FF5F96F5FF659BF5FF6CA1F5FF70A4F6FF77A6F6FF7EA7F6FF84A8F6FF8AA8
      F6FF90A9F7FF93A9F7FF92A5F7FF8D9DF6FF7E8DF8FFFFF9D5FFFFFFFBFFB381
      49FF000000160000000000000000000000000000000000000000000000010B23
      344E389AD7FF1383C4FF0074B8FF0072BAFF3B8BB4FFC3BDAFFFDAC2A7FFB777
      2BFFAE7831FFA48349FF9B8A5BFF938C63FFADA687FFE9E5DAFFEEE7DCFFECDC
      C8FFC59253FFEFDCC4FFFFEEDAFFBFCED0FF1F84BAFF0072B7FF2996D6FF205D
      85AE000000030000000000000000000000000000000000000000000000039876
      49AEF9D19CFFFFF6E8FFFFDDB2FFFFDFB5FFFFE3BCFFDDA762FFC7852EFFC786
      30FFC78630FFC78630FFC78630FFC78630FFC78630FFC78630FFC78630FFC786
      30FFC78630FFC7852EFFDDA762FFFFE3BCFFFFDFB5FFFFDDB2FFFFF6E8FFF9D1
      9CFF987649AE00000003000000000000000000000016B1773CFFFFF3E2FFE8C9
      9CFFE9CA9EFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA
      9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA
      9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9FFFE9CA9EFFE8C99CFFFFF3
      E2FFB1773CFF00000016000000000000000000000016B38149FFFFFFFBFFFFFE
      D1FF0921EEFF2541EDFF3252EFFF395EEFFF416AF1FF4875F2FF4F7EF2FF5687
      F3FF5C8FF4FF6295F5FF6799F5FF6C9CF5FF719DF5FF759EF6FF7BA0F6FF7E9F
      F6FF859FF6FF889FF6FF889BF6FF8594F6FF7686F7FFFFF6D1FFFFFFFBFFB381
      49FF000000160000000000000000000000000000000000000000000000000000
      00020E2D43613B9CD9FF2F9AD7FF0D7EC1FF0072B7FF0070BAFF3D8FBBFF849E
      A3FFA67333FFBE7622FFB9792BFFB47B31FFB1792EFFB27324FFB56E19FFB073
      29FFAFB6AFFF65A6C7FF0F7BB9FF0074BBFF1D8ED0FF389DDAFF1D5982AE0000
      0004000000000000000000000000000000000000000000000000000000000000
      0003987649AEF9CD98FFFFF4E5FFFFD9ACFFFFDBAFFFFFDEB4FFFFE0B7FFFFE1
      B8FFFFE1B9FFFFE1B9FFFFE1B9FFFFE1B9FFFFE1B9FFFFE1B9FFFFE1B9FFFFE1
      B9FFFFE1B8FFFFE0B7FFFFDEB4FFFFDBAFFFFFD9ACFFFFF4E5FFF9CD98FF9876
      49AE0000000300000000000000000000000000000016B1773CFFFFF4E2FFE7C6
      99FFE8C89BFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C8
      9CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C8
      9CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89CFFE8C89BFFE7C699FFFFF4
      E2FFB1773CFF00000016000000000000000000000016B38149FFFFFFFDFFFFFD
      CEFF051BEEFF223BEDFF2E4BEEFF3658EFFF3D64F0FF456EF1FF4C77F2FF5280
      F2FF5887F4FF5E8DF4FF6492F4FF6895F5FF6D97F5FF7298F5FF7699F5FF7A99
      F5FF8098F5FF8499F5FF8596F5FF828FF6FF7583F7FFFFF3CDFFFFFFFCFFB381
      49FF000000160000000000000000000000000000000000000000000000000000
      0000000000010B22334C328FCCFF43A6E1FF3EA6E2FF2897D5FF1286C9FF047E
      C6FF0073C0FF0074C3FF0074C3FF0074C2FF0073C2FF0073C1FF0073C0FF0076
      C2FF0781C8FF1D90D2FF34A0DEFF41A6E1FF318ECCFF0A22334A000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000398764AAEF9CB95FFFFF2E2FFFFD6A6FFFFD7A9FFFFD8AAFFFFD8
      ABFFFFD8ABFFFFD8ABFFFFD8ABFFFFD8ABFFFFD8ABFFFFD8ABFFFFD8ABFFFFD8
      ABFFFFD8ABFFFFD8AAFFFFD7A9FFFFD6A6FFFFF2E2FFF9CB95FF98764AAE0000
      00030000000000000000000000000000000000000016B2773CFFFFF4E3FFE6C4
      96FFE7C698FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C6
      99FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C6
      99FFE7C699FFE7C699FFE7C699FFE7C699FFE7C699FFE7C698FFE6C496FFFFF4
      E3FFB2773CFF00000016000000000000000000000016B38149FFFFFFFDFFFFFC
      CAFF0214EDFF1E34ECFF2B44EDFF3251EFFF3A5DEFFF4167F1FF4870F1FF4F78
      F2FF5480F3FF5A86F3FF608BF4FF658EF4FF6A90F4FF6F92F5FF7393F5FF7793
      F5FF7C93F5FF8193F5FF8594F5FF818EF5FF747EF6FFFFF2C9FFFFFFFDFFB381
      49FF000000160000000000000000000000000000000000000000000000000000
      00000000000000000000000000041B577FAD308DC8FF3B9BD7FF45A8E1FF4AAE
      E9FF50B5EFFF4FB5EFFF4FB5EFFF4FB5EFFF4FB5EFFF4FB5EFFF4FB5EFFF4AAF
      EAFF42A4E0FF3898D3FF2E89C6FF194B70990000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000398784AAEF9C990FFFFF2E0FFFFD2A0FFFFD3A1FFFFD4
      A3FFFFD4A3FFFFD4A3FFFFD4A3FFFFD4A3FFFFD4A3FFFFD4A3FFFFD4A3FFFFD4
      A3FFFFD4A3FFFFD3A1FFFFD2A0FFFFF2E0FFF9C990FF98784AAE000000030000
      00000000000000000000000000000000000000000016B2773CFFFFF4E3FFE5C2
      92FFE6C495FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C4
      96FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C4
      96FFE6C496FFE6C496FFE6C496FFE6C496FFE6C496FFE6C495FFE5C292FFFFF4
      E3FFB2773CFF00000016000000000000000000000016B38149FFFFFFFEFFFFFC
      C8FF000DECFF1B2EEDFF273DECFF2F4AEEFF3655EFFF3D60F0FF4468F1FF4B70
      F1FF5178F2FF567EF3FF5C83F3FF6287F4FF6689F4FF6B8BF4FF708DF4FF748D
      F4FF788EF4FF7D8EF4FF818EF5FF818BF5FF737BF6FFFFF1C7FFFFFFFEFFB381
      49FF000000160000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000020F2E45601A547EAC2068
      99D02882BFFF2882BFFF2882BFFF2882BFFF2882BFFF2882BFFF2882BFFF2472
      A8E21A567EAC0F2E456000000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000398784AAEF9C68DFFFFF0DFFFFFCF9BFFFFD1
      9DFFFFD19EFFFFD19EFFFFD19EFFFFD19EFFFFD19EFFFFD19EFFFFD19EFFFFD1
      9EFFFFD19DFFFFCF9BFFFFF0DFFFF9C68DFF98784AAE00000003000000000000
      00000000000000000000000000000000000000000016B2773CFFFFF4E4FFE4C0
      8FFFE5C192FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C2
      93FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C2
      93FFE5C293FFE5C293FFE5C293FFE5C293FFE5C293FFE5C192FFE4C08FFFFFF4
      E4FFB2773CFF00000016000000000000000000000016B38149FFFFFFFFFFFFFA
      C4FF0005ECFF1727ECFF2336ECFF2B42EDFF324EEEFF3958EFFF4061F0FF4769
      F1FF4D70F2FF5276F2FF587BF2FF5E7EF3FF6282F3FF6785F4FF6C86F3FF7187
      F4FF7588F4FF7A89F4FF7E89F4FF7E88F4FF7378F7FFFFEFC3FFFFFFFFFFB381
      49FF000000160000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000398784AAEF9C68AFFFFF0DEFFFFCF
      98FFFFD09AFFFFD09BFFFFD09BFFFFD09BFFFFD09BFFFFD09BFFFFD09BFFFFD0
      9AFFFFCF98FFFFF0DEFFF9C68AFF98784AAE0000000300000000000000000000
      00000000000000000000000000000000000000000016B2773CFFFFF4E4FFE3BF
      8BFFE4C08FFFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C1
      90FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C1
      90FFE4C190FFE4C190FFE4C190FFE4C190FFE4C190FFE4C08FFFE3BF8BFFFFF4
      E4FFB2773CFF00000016000000000000000000000016B38149FFFFFFFFFFFFF9
      C1FF0000ECFF141FEAFF1F2EEBFF273AECFF2F46EEFF3650EEFF3C59F0FF4361
      F0FF4968F1FF4F6EF1FF5473F2FF5A77F2FF5F7AF2FF647DF3FF6980F3FF6D81
      F3FF7182F3FF7683F3FF7B84F4FF7C84F4FF7275F6FFFFEEC0FFFFFFFFFFB381
      49FF000000160000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000049C7C4EB0E9B772FFE9B7
      72FFE9B873FFE9B874FFE9B874FFE9B874FFE9B874FFE9B874FFE9B874FFE9B8
      73FFE9B772FFE9B772FF9C7C4EB0000000040000000000000000000000000000
      00000000000000000000000000000000000000000016B2773CFFFFF5E4FFE1BC
      88FFE3BE8CFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF
      8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF
      8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BF8DFFE3BE8CFFE1BC88FFFFF5
      E4FFB2773CFF00000016000000000000000000000016B38149FFFFFFFFFFFFF8
      BDFF0000EBFF0C13EAFF1724ECFF1F30ECFF283BEEFF2F45EEFF354EF0FF3C57
      F0FF425EF1FF4864F2FF4E6AF2FF536EF3FF5871F3FF5D74F3FF6276F3FF6878
      F4FF6C79F4FF717AF4FF757BF4FF787CF4FF6F71F7FFFFEDBCFFFFFFFFFFB381
      49FF000000160000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000016B2773CFFFFF5E4FFE0BA
      84FFE1BB88FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC
      89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC
      89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE2BC89FFE1BB88FFE0BA84FFFFF5
      E4FFB2773CFF00000016000000000000000000000016B38149FFFFFFFFFFFFF0
      BBFF0000EEFF0000EEFF000AEEFF0715EFFF0F22F0FF182EF2FF1E38F3FF2640
      F4FF2C49F4FF334FF5FF3A56F5FF3F59F6FF465EF6FF4B62F7FF5064F7FF5666
      F7FF5B69F7FF5F6AF7FF656CF7FF686CF7FF6667FAFFFFE8BBFFFFFFFFFFB381
      49FF000000160000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000015B2783CFFFFF5E4FFDEB6
      7DFFDFB781FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB8
      81FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB8
      81FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB781FFDEB67DFFFFF5
      E4FFB2783CFF00000015000000000000000000000015B3824AFFFFFFFFFFFFE6
      BAFFFFF0B9FFFFF5B9FFFFF4B8FFFFF3B8FFFFF2B8FFFFF1B8FFFFF0B8FFFFEF
      B8FFFFEEB8FFFFEEB8FFFFEDB8FFFFEDB8FFFFECB8FFFFECB8FFFFEBB8FFFFEB
      B8FFFFEBB8FFFFEBB8FFFFEBB8FFFFEAB8FFFFE7B8FFFFE3B9FFFFFFFFFFB382
      4AFF000000150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000DB3793FFFFFF9E9FFFFF5
      E4FFFFF5E4FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5
      E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5
      E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E5FFFFF5E4FFFFF5E4FFFFF9
      E9FFB3793FFF0000000D00000000000000000000000DB5844DFFFFFFF5FFFFFC
      EEFFFFFDEDFFFFFEEDFFFFFEEDFFFFFEEDFFFFFEEDFFFFFDEDFFFFFDEDFFFFFD
      EDFFFFFDEDFFFFFDEDFFFFFDEDFFFFFDEDFFFFFDEDFFFFFDEDFFFFFDEDFFFFFD
      EDFFFFFDEDFFFFFDEDFFFFFDEDFFFFFDEDFFFFFCEDFFFFFCEEFFFFFFF5FFB584
      4DFF0000000D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000047E572FB4B37A3FFFB278
      3CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB277
      3CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB277
      3CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2773CFFB2783CFFB37A
      3FFF7E572FB4000000040000000000000000000000047F5F3BB4B5844EFFB382
      4BFFB3824BFFB3824BFFB3824BFFB3824BFFB3824BFFB3824BFFB3824BFFB382
      4BFFB3824BFFB3824BFFB3824BFFB3824BFFB3824BFFB3824BFFB3824BFFB382
      4BFFB3824BFFB3824BFFB3824BFFB3824BFFB3824BFFB3824BFFB5844EFF7F5F
      3BB400000004000000000000000000000000424D3E000000000000003E000000
      2800000080000000A00000000100010000000000000A00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFE007FFFFFFFFFFFFFE1FFF800000
      FFFFC00380000001FFFFFE0FFF800000000000018000000100000003FF800000
      000000008000000100000003FF800000000000008000000100000001FF800000
      000000008000000100000000FF800000000000008000000100000000FF800000
      000000008000000100000000FF80000000000000800000010000000000000000
      0000000080000001000000000000000000000000800000010000000100000000
      0000000080000001000000030000000000000000800000010000000300000000
      0000000180000001000000030000000000000003800000010000000300000000
      0000000380000001000000030000000000000003800000010000000300000000
      00000003800000010000000300000000000000038000000100000003000000FF
      000000038000000100000003000000FF000000038000000100000003000000FF
      000000038000000100000003000000FF000000038000000100000003000000FF
      000000038000000100000003000000FF000000038000000100000003000000FF
      000000038000000100000003000000FF000000038000000100000003000000FF
      000000038000000100000003000000FF000000038000000100000003000000FF
      000000038000000100000003000000FF000000038000000100000003000000FF
      00000003FFFFFFFF00000003000000FFFFFE07FF001FF000FFFFFFFFFFFFFFFF
      FFFE07FF001FF00000000000FFFFFFFFFFFE01FF001FF00000000000FFFFFFFF
      FFFE01FF001FF8000000000000000000FFFE007F00018000FC00003F00000000
      0000000300018000FC00003F000000000000000100018000FC00003F00000000
      0000000000018000FC00003F000000000000000000018000FC00003F00000000
      0000000000018000FC00003F000000000000000000018000FC00003F00000000
      00000000F001800FFC00003F0000000000000000F001800FFC00003F00000000
      00000000F001800FFC00003F0000000000000000F001800FFC00003F00000000
      00000001FFFFFFFFFC00003F0000000000000003FFFFFFFFFC00003F00000000
      00000003F001800FFC00003F0000000000000003F001800FFC00003F00000000
      00000003F001800FFC00003F00000000000000031001800FFC00003F00000000
      0000000300018000FC00003F000000000000000300018000FC00003F00000000
      0000000300018000FC00003F000000000000000300018000FC00003F00000000
      0000000300018000FC00003F000000000000000300018000FC00003F00000000
      0000000300018000FC00003F0000000000000003001FF800FC00003F00000000
      00000003001FF800FC00003FFFFFFFFF00000003001FF800FC00003FFFFFFFFF
      00000003001FF800FFFFFFFFFFFFFFFF0000000000000000FFFFFFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFE007FFFFE007
      FFFFFFFFFFFFFFFFFFFFC003FFFFC003FFFFFFFFFFFFFFFF0000000180000001
      FFFFFFFFFFFFFFFF0000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FF8003FF000000000000000000000000
      FE0000FF000000000000000000000000F800007F800000010000000000000000
      F000001FC00000030000000000000000E000000F000000000000000000000000
      C000000700000000000000000000000080000003000000000000000000000000
      8000000100000000000000010000000100000000800000010000000300000003
      0000000000000000000000030000000700000000000000000000000300000007
      0000000000000000000000030000000700000000000000000000000300000007
      80000001000000000000000300000007C0000003800000010000000300000007
      C0000007C00000030000000300000007E000000FE00000070000000300000007
      F000001FF000000F0000000300000007FC00007FF800001F0000000300000007
      FF0001FFFC00003F0000000300000007FFFFFFFFFE00007F0000000300000007
      FFFFFFFFFF0000FF0000000300000007FFFFFFFFFFFFFFFF0000000300000007
      FFFFFFFFFFFFFFFF0000000300000007FFFFFFFFFFFFFFFF0000000300000007
      FFFFFFFFFFFFFFFF000000030000000700000000000000000000000000000000
      000000000000}
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.map'
    Filter = 'The Legends of Dwarves map files (*.lodmap)|*.lodmap'
    InitialDir = '..\..\..\maps'
    Title = #1054#1090#1082#1088#1099#1090#1100' '#1082#1072#1088#1090#1091
    Left = 272
    Top = 56
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '*.lodmap'
    Filter = 'The Legends of Dwarves map files (*.lodmap)|*.lodmap'
    InitialDir = '..\..\..\maps'
    Title = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1088#1090#1091
    Left = 360
    Top = 56
  end
end
