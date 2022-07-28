object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'SVG Font Fit'
  ClientHeight = 493
  ClientWidth = 1101
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object splGlyph: TSplitter
    Left = 225
    Top = 0
    Height = 457
    Beveled = True
    ExplicitLeft = 185
    ExplicitHeight = 493
  end
  object pcGlyph: TPageControl
    Left = 228
    Top = 0
    Width = 873
    Height = 457
    ActivePage = tsKern
    Align = alClient
    TabOrder = 0
    TabPosition = tpBottom
    object tsGlyph: TTabSheet
      Caption = 'Glyph'
      object sbrPaint: TScrollBox
        Left = 0
        Top = 52
        Width = 865
        Height = 379
        Align = alClient
        BevelInner = bvNone
        DragMode = dmAutomatic
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        TabStop = True
        object pnImg: TPanel
          Left = 0
          Top = 0
          Width = 861
          Height = 375
          Align = alClient
          BevelEdges = []
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Draw: TPaintBox
            AlignWithMargins = True
            Left = 8
            Top = 8
            Width = 845
            Height = 359
            Margins.Left = 8
            Margins.Top = 8
            Margins.Right = 8
            Margins.Bottom = 8
            Align = alClient
            OnDragOver = DrawDragOver
            OnMouseDown = DrawMouseDown
            OnPaint = DrawPaint
            OnStartDrag = DrawStartDrag
            ExplicitLeft = 5
            ExplicitTop = 7
            ExplicitWidth = 736
            ExplicitHeight = 376
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 865
        Height = 52
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 97
          Height = 52
          Align = alLeft
          TabOrder = 0
          object Label1: TLabel
            Left = 6
            Top = 3
            Width = 26
            Height = 13
            Caption = 'Zoom'
          end
          object Label2: TLabel
            Left = 4
            Top = 31
            Width = 22
            Height = 13
            Caption = 'Step'
          end
          object seZoom: TSpinEdit
            Left = 38
            Top = 0
            Width = 49
            Height = 22
            MaxLength = 2
            MaxValue = 8
            MinValue = -8
            TabOrder = 0
            Value = -3
            OnChange = seZoomChange
          end
          object seGrid: TSpinEdit
            Left = 39
            Top = 28
            Width = 49
            Height = 22
            MaxLength = 3
            MaxValue = 256
            MinValue = 1
            TabOrder = 1
            Value = 20
            OnChange = seGridChange
          end
        end
        object pscrGlyph: TPageScroller
          Left = 97
          Top = 0
          Width = 768
          Height = 52
          Align = alClient
          Control = tbrGlyph
          TabOrder = 1
          object tbrGlyph: TToolBar
            Left = 0
            Top = 0
            Width = 756
            Height = 52
            Align = alClient
            AutoSize = True
            ButtonHeight = 52
            ButtonWidth = 41
            Caption = 'ToolBar1'
            Images = ilMain
            ParentShowHint = False
            ShowCaptions = True
            ShowHint = True
            TabOrder = 0
            object tbGoToZero: TToolButton
              Left = 0
              Top = 0
              Action = aGoToZero
            end
            object tbApply: TToolButton
              Left = 41
              Top = 0
              Action = aApply
            end
            object tbSep1: TToolButton
              Left = 82
              Top = 0
              Width = 8
              Caption = 'tbSep1'
              ImageIndex = 7
              Style = tbsSeparator
            end
            object tbReset: TToolButton
              Left = 90
              Top = 0
              Action = aReset
            end
            object tbSep2: TToolButton
              Left = 131
              Top = 0
              Width = 8
              Caption = 'tbSep2'
              ImageIndex = 7
              Style = tbsSeparator
            end
            object tbSetBase: TToolButton
              Left = 139
              Top = 0
              Action = aSetBase
              Style = tbsCheck
            end
            object tbAlignUp: TToolButton
              Left = 180
              Top = 0
              Action = aAlignTop
            end
            object tbAlignDown: TToolButton
              Left = 221
              Top = 0
              Action = aAlignDown
            end
            object tbSep3: TToolButton
              Left = 262
              Top = 0
              Width = 8
              ImageIndex = 7
              Style = tbsSeparator
            end
            object tbAlignMidle: TToolButton
              Left = 270
              Top = 0
              Action = aAlignMidle
            end
            object tbAlignHeight: TToolButton
              Left = 311
              Top = 0
              Action = aAlignHeight
            end
            object tbSep4: TToolButton
              Left = 352
              Top = 0
              Width = 8
              Caption = 'tbSep4'
              ImageIndex = 7
              Style = tbsSeparator
            end
            object tbLeftEdge: TToolButton
              Left = 360
              Top = 0
              Action = aLeftEdge
            end
            object tbMoveLeft: TToolButton
              Left = 401
              Top = 0
              Action = aMoveLeft
            end
            object tbMoveRight: TToolButton
              Left = 442
              Top = 0
              Action = aMoveRight
            end
            object ToolButton1: TToolButton
              Left = 483
              Top = 0
              Action = aMoveUp
            end
            object ToolButton2: TToolButton
              Left = 524
              Top = 0
              Action = aMoveDown
            end
            object tbSep5: TToolButton
              Left = 565
              Top = 0
              Width = 8
              Caption = 'tbSep5'
              ImageIndex = 12
              Style = tbsSeparator
            end
            object ToolButton22: TToolButton
              Left = 573
              Top = 0
              Action = aRightEdge
            end
            object ToolButton20: TToolButton
              Left = 614
              Top = 0
              Action = aEdgeLeft
            end
            object ToolButton21: TToolButton
              Left = 655
              Top = 0
              Action = aEdgeRight
            end
          end
        end
      end
    end
    object tsHeap: TTabSheet
      Caption = 'Heap'
      ImageIndex = 2
      object lbUnicodeRegions: TListBox
        Left = 400
        Top = 25
        Width = 257
        Height = 160
        ItemHeight = 13
        Items.Strings = (
          '0000:001F=Control characters'
          '0020:007F=Basic Latin'
          '00A0:00FF=Latin-1 Supplement'
          '0100:017F=Latin Extended-A'
          '0180:024F=Latin Extended-B'
          '0250:02AF=IPA Extensions'
          '02B0:02FF=Spacing Modifier Letters'
          '0300:036F=Combining Diacritical Marks'
          '0370:03FF=Greek and Coptic'
          '0400:04FF=Cyrillic'
          '0500:052F=Cyrillic Supplementary'
          '0530:058F=Armenian'
          '0590:05FF=Hebrew'
          '0600:06FF=Arabic'
          '0700:074F=Syriac'
          '0780:07BF=Thaana'
          '0900:097F=Devanagari'
          '0980:09FF=Bengali'
          '0A00:0A7F=Gurmukhi'
          '0A80:0AFF=Gujarati'
          '0B00:0B7F=Oriya'
          '0B80:0BFF=Tamil'
          '0C00:0C7F=Telugu'
          '0C80:0CFF=Kannada'
          '0D00:0D7F=Malayalam'
          '0D80:0DFF=Sinhala'
          '0E00:0E7F=Thai'
          '0E80:0EFF=Lao'
          '0F00:0FFF=Tibetan'
          '1000:109F=Myanmar'
          '10A0:10FF=Georgian'
          '1100:11FF=Hangul Jamo'
          '1200:137F=Ethiopic'
          '13A0:13FF=Cherokee'
          '1400:167F=Unified Canadian Aboriginal Syllabics'
          '1680:169F=Ogham'
          '16A0:16FF=Runic'
          '1700:171F=Tagalog'
          '1720:173F=Hanunoo'
          '1740:175F=Buhid'
          '1760:177F=Tagbanwa'
          '1780:17FF=Khmer'
          '1800:18AF=Mongolian'
          '1900:194F=Limbu'
          '1950:197F=Tai Le'
          '19E0:19FF=Khmer Symbols'
          '1D00:1D7F=Phonetic Extensions'
          '1E00:1EFF=Latin Extended Additional'
          '1F00:1FFF=Greek Extended'
          '2000:206F=General Punctuation'
          '2070:209F=Superscripts and Subscripts'
          '20A0:20CF=Currency Symbols'
          '20D0:20FF=Combining Diacritical Marks for Symbols'
          '2100:214F=Letterlike Symbols'
          '2150:218F=Number Forms'
          '2190:21FF=Arrows'
          '2200:22FF=Mathematical Operators'
          '2300:23FF=Miscellaneous Technical'
          '2400:243F=Control Pictures'
          '2440:245F=Optical Character Recognition'
          '2460:24FF=Enclosed Alphanumerics'
          '2500:257F=Box Drawing'
          '2580:259F=Block Elements'
          '25A0:25FF=Geometric Shapes'
          '2600:26FF=Miscellaneous Symbols'
          '2700:27BF=Dingbats'
          '27C0:27EF=Miscellaneous Mathematical Symbols-A'
          '27F0:27FF=Supplemental Arrows-A'
          '2800:28FF=Braille Patterns'
          '2900:297F=Supplemental Arrows-B'
          '2980:29FF=Miscellaneous Mathematical Symbols-B'
          '2A00:2AFF=Supplemental Mathematical Operators'
          '2B00:2BFF=Miscellaneous Symbols and Arrows'
          '2E80:2EFF=CJK Radicals Supplement'
          '2F00:2FDF=Kangxi Radicals'
          '2FF0:2FFF=Ideographic Description Characters'
          '3000:303F=CJK Symbols and Punctuation'
          '3040:309F=Hiragana'
          '30A0:30FF=Katakana'
          '3100:312F=Bopomofo'
          '3130:318F=Hangul Compatibility Jamo'
          '3190:319F=Kanbun'
          '31A0:31BF=Bopomofo Extended'
          '31F0:31FF=Katakana Phonetic Extensions'
          '3200:32FF=Enclosed CJK Letters and Months'
          '3300:33FF=CJK Compatibility'
          '3400:4DBF=CJK Unified Ideographs Extension A'
          '4DC0:4DFF=Yijing Hexagram Symbols'
          '4E00:9FFF=CJK Unified Ideographs'
          'A000:A48F=Yi Syllables'
          'A490:A4CF=Yi Radicals'
          'AC00:D7AF=Hangul Syllables'
          'D800:DB7F=High Surrogates'
          'DB80:DBFF=High Private Use Surrogates'
          'DC00:DFFF=Low Surrogates'
          'E000:F8FF=Private Use Area'
          'F900:FAFF=CJK Compatibility Ideographs'
          'FB00:FB4F=Alphabetic Presentation Forms'
          'FB50:FDFF=Arabic Presentation Forms-A'
          'FE00:FE0F=Variation Selectors'
          'FE20:FE2F=Combining Half Marks'
          'FE30:FE4F=CJK Compatibility Forms'
          'FE50:FE6F=Small Form Variants'
          'FE70:FEFF=Arabic Presentation Forms-B'
          'FF00:FFEF=Halfwidth and Fullwidth Forms'
          'FFF0:FFFF=Specials'
          '10000:1007F=Linear B Syllabary'
          '10080:100FF=Linear B Ideograms'
          '10100:1013F=Aegean Numbers'
          '10300:1032F=Old Italic'
          '10330:1034F=Gothic'
          '10380:1039F=Ugaritic'
          '10400:1044F=Deseret'
          '10450:1047F=Shavian'
          '10480:104AF=Osmanya'
          '10800:1083F=Cypriot Syllabary'
          '1D000:1D0FF=Byzantine Musical Symbols'
          '1D100:1D1FF=Musical Symbols'
          '1D300:1D35F=Tai Xuan Jing Symbols'
          '1D400:1D7FF=Mathematical Alphanumeric Symbols'
          '20000:2A6DF=CJK Unified Ideographs Extension B'
          '2F800:2FA1F=CJK Compatibility Ideographs Supplement'
          'E0000:E007F=Tags')
        TabOrder = 0
      end
      object sgGlyph: TStringGrid
        Left = 0
        Top = 319
        Width = 865
        Height = 112
        Align = alBottom
        ColCount = 14
        DefaultColWidth = 48
        DefaultRowHeight = 18
        DrawingStyle = gdsClassic
        FixedCols = 2
        RowCount = 2
        Options = [goVertLine, goHorzLine, goColSizing, goEditing, goRowSelect]
        TabOrder = 1
      end
      object sgBase: TStringGrid
        Left = 0
        Top = 207
        Width = 865
        Height = 112
        Align = alBottom
        ColCount = 9
        DefaultColWidth = 48
        DefaultRowHeight = 18
        DrawingStyle = gdsClassic
        FixedCols = 2
        RowCount = 2
        Options = [goVertLine, goHorzLine, goColSizing, goEditing, goRowSelect]
        TabOrder = 2
      end
    end
    object tsXML: TTabSheet
      Caption = 'XML'
      ImageIndex = 1
      object seGlyph: TSynEdit
        Left = 0
        Top = 52
        Width = 865
        Height = 379
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        TabOrder = 0
        UseCodeFolding = False
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Consolas'
        Gutter.Font.Style = []
        Highlighter = SynXMLSyn1
        WordWrap = True
      end
      object tbrXML: TToolBar
        Left = 0
        Top = 0
        Width = 865
        Height = 52
        AutoSize = True
        ButtonHeight = 52
        ButtonWidth = 39
        Caption = 'ToolBar1'
        Images = ilMain
        ParentShowHint = False
        ShowCaptions = True
        ShowHint = True
        TabOrder = 1
        object tbApplyXML: TToolButton
          Left = 0
          Top = 0
          Action = aApply
        end
        object tbResetXML: TToolButton
          Left = 39
          Top = 0
          Action = aReset
        end
      end
    end
    object tsKern: TTabSheet
      Caption = 'Kerning'
      ImageIndex = 3
      object sg: TStringGrid
        Left = 0
        Top = 52
        Width = 865
        Height = 184
        Align = alClient
        ColCount = 3
        Ctl3D = False
        DefaultColWidth = 32
        DefaultRowHeight = 18
        FixedCols = 2
        RowCount = 3
        FixedRows = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goColSizing, goEditing, goAlwaysShowEditor, goFixedRowDefAlign]
        ParentCtl3D = False
        TabOrder = 0
        OnDrawCell = sgDrawCell
        OnSelectCell = sgSelectCell
      end
      object tbgKerning: TToolBar
        Left = 0
        Top = 0
        Width = 865
        Height = 52
        AutoSize = True
        ButtonHeight = 52
        ButtonWidth = 41
        Images = ilMain
        ParentShowHint = False
        ShowCaptions = True
        ShowHint = True
        TabOrder = 1
        object ToolButton25: TToolButton
          Left = 0
          Top = 0
          Action = aKerningRows
        end
        object ToolButton27: TToolButton
          Left = 41
          Top = 0
          Action = aKerningCols
        end
        object tbClearKern: TToolButton
          Left = 82
          Top = 0
          Action = aKerningClear
        end
        object tbSep6: TToolButton
          Left = 123
          Top = 0
          Width = 8
          ImageIndex = 6
          Style = tbsSeparator
        end
        object ToolButton24: TToolButton
          Left = 131
          Top = 0
          Action = aKerningCalc
        end
        object tbStopCalc: TToolButton
          Left = 172
          Top = 0
          Action = aStopCalc
        end
        object tbSep7: TToolButton
          Left = 213
          Top = 0
          Width = 8
          ImageIndex = 3
          Style = tbsSeparator
        end
        object ToolButton26: TToolButton
          Left = 221
          Top = 0
          Action = aKerningApply
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 236
        Width = 865
        Height = 195
        Align = alBottom
        Caption = 'Panel3'
        TabOrder = 2
        object KernPaint: TPaintBox
          Left = 313
          Top = 1
          Width = 551
          Height = 193
          Align = alClient
          OnPaint = KernPaintPaint
          ExplicitWidth = 357
          ExplicitHeight = 222
        end
        object seKern: TSynEdit
          Left = 1
          Top = 1
          Width = 312
          Height = 193
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          TabOrder = 0
          UseCodeFolding = False
          Gutter.Font.Charset = DEFAULT_CHARSET
          Gutter.Font.Color = clWindowText
          Gutter.Font.Height = -11
          Gutter.Font.Name = 'Consolas'
          Gutter.Font.Style = []
          Highlighter = SynIniSyn1
          Lines.Strings = (
            '; When 2 glyph distance less then'
            'min.tst=30'
            '; set distance  by kerning to'
            'min.set=90'
            '; When 2 glyph distance more then'
            'max.tst=180'
            '; set distance  by kerning to'
            'max.set=120'
            '; Limit X-overlap'
            'overlap=-100'
            '; Round kerning to (1-5-10-100)'
            'precision=10'
            '')
          WordWrap = True
          ExplicitLeft = 2
          ExplicitTop = 6
        end
      end
    end
  end
  object pnFont: TPanel
    Left = 0
    Top = 0
    Width = 225
    Height = 457
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object tbrFile: TToolBar
      Left = 0
      Top = 0
      Width = 225
      Height = 52
      AutoSize = True
      ButtonHeight = 52
      ButtonWidth = 39
      Caption = 'tbrFile'
      Images = ilMain
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 0
      object tbFontOpen: TToolButton
        Left = 0
        Top = 0
        Action = aFontOpen
      end
      object tbFontSave: TToolButton
        Left = 39
        Top = 0
        Action = aFontSave
      end
      object tbSep8: TToolButton
        Left = 78
        Top = 0
        Width = 8
        Caption = 'tbSep8'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object tbFontConfig: TToolButton
        Left = 86
        Top = 0
        Action = aFontConfig
      end
    end
    object treeFNT: TTreeView
      Left = 0
      Top = 52
      Width = 225
      Height = 405
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      HideSelection = False
      Indent = 16
      MultiSelect = True
      MultiSelectStyle = [msControlSelect, msShiftSelect]
      ParentFont = False
      ReadOnly = True
      RowSelect = True
      ShowLines = False
      SortType = stText
      TabOrder = 1
      OnAdvancedCustomDrawItem = treeFNTAdvancedCustomDrawItem
      OnChange = treeFNTChange
      OnChanging = treeFNTChanging
      OnCompare = treeFNTCompare
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 474
    Width = 1101
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object pbrProcessing: TProgressBar
    Left = 0
    Top = 457
    Width = 1101
    Height = 17
    Align = alBottom
    TabOrder = 3
    Visible = False
  end
  object dlgOpen: TOpenDialog
    DefaultExt = 'svg'
    FileName = '*.svg'
    Filter = 'SVG font|*.svg|Any file|*.*'
    Title = 'Open SVG font'
    Left = 120
    Top = 280
  end
  object dlgFont: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 128
    Top = 184
  end
  object SynXMLSyn1: TSynXMLSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    WantBracesParsed = False
    Left = 712
    Top = 156
  end
  object ilMain: TImageList
    Height = 32
    Width = 32
    Left = 368
    Top = 168
    Bitmap = {
      494C010120002800040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002001000001002000000000000040
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B4B4B4001B1B1B001C1C1C00B5B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00AFAFAF001C1C1C001C1C1C00AFAFAF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B0000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00AAAAAA0004040400000000000000000004040400ABABAB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AAAAAA00040404000000000000000000000000000000000004040400ABAB
      AB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00C5C5
      C5008080800041414100222222000D0D0D000C0C0C0022222200404040007F7F
      7F00C3C3C300FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AAAA
      AA00040404000000000000000000000000000000000000000000000000000404
      0400ABABAB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00A4A4A4002E2E2E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002C2C2C00A1A1A100FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008D8D8D004C4C4C00000000000000000000000000000000004C4C4C008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAFAF000404
      0400000000000000000000000000000000000000000000000000000000000000
      000004040400AFAFAF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEDEDE003E3E3E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003B3B3B00DCDCDC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005E5E5E000505
      0500000000000000000000000000000000000000000000000000000000000000
      0000050505005F5F5F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001D1D1D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F1F1F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BCBCBC000D0D0D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0C0C00B6B6B600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000AEAEAE0010101000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101000AFAFAF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000585858000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005959590000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BFBFBF000A0A0A00000000000000000000000000000000000505
      050058585800A5A5A500DDDDDD00F5F5F500F6F6F600DEDEDE00A7A7A7005A5A
      5A00050505000000000000000000000000000000000006060600B4B4B400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000949494000101010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101009494940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010057575700000000000000000000000000000000000000
      0000000000006262620000000000000000000000000000000000616161000000
      000000000000000000000000000000000000000000005C5C5C00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E0E0E0000E0E0E000000000000000000000000000000000053535300E0E0
      E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E2E2E20055555500000000000000000000000000000000000E0E0E00D7D7
      D700FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000AEAEAE00010101000000000000000000000000000000
      0000292929008C8C8C00D2D2D2000000000000000000D2D2D2008D8D8D002929
      29000000000000000000000000000000000001010100AFAFAF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00686868000C0C0C0048484800EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDED00464646000C0C0C006B6B
      6B00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD003F3F3F00000000000000000000000000010101008E8E8E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0092929200010101000000000000000000000000003535
      3500FDFDFD00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000F0F0F00000000000000000000000000040404008F8F
      8F00000000000000000000000000000000000000000000000000000000000000
      0000909090000505050000000000000000000000000010101000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CFCFCF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00A3A3
      A30000000000000000000000000085858500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      0000A7A7A700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A6A6
      A600000000000000000000000000000000008E8E8E00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00939393000000000000000000000000000000
      00009D9D9D00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000005F5F5F0000000000000000000000000004040400B8B8B8000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BABABA00040404000000000000000000000000005F5F5F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FEFEFE002D2D
      2D0000000000000000000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007E7E7E0000000000000000000000
      000031313100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003131
      31000000000000000000000000004E4E4E00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005353530000000000000000000000
      000028282800FEFEFE00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000050505000000000000000000000000008F8F8F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000090909000000000000000000000000000050505000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C3C3C3000000
      0000000000000000000005050500E0E0E000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE0004040400000000000000
      000000000000C7C7C700FFFFFF00FFFFFF00FFFFFF00FFFFFF00C8C8C8000000
      0000000000000000000004040400E0E0E000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3E30006060600000000000000
      000000000000C1C1C100FFFFFF00FFFFFF000000000000000000000000000000
      00008E8E8E000000000000000000000000002828280000000000000000000000
      00000000000000000000545454000D0D0D000D0D0D0055555500000000000000
      0000000000000000000000000000292929000000000000000000000000008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0D0D000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF007E7E7E000000
      000000000000000000005A5A5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0055555500000000000000
      00000000000083838300FFFFFF00FFFFFF00FFFFFF00FFFFFF00838383000000
      0000000000000000000056565600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B7B7B7001D1D1D001D1D1D00B6B6B600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005D5D5D00000000000000
      00000000000076767600FFFFFF00FFFFFF000000000000000000000000000000
      00004D4D4D000000000000000000000000008C8C8C0000000000000000000000
      0000D7D7D7001010100000000000000000000000000000000000121212000000
      00000000000000000000000000008E8E8E000000000000000000000000004C4C
      4C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000686868000000000000000000000000000000
      000000000000000000000000000000000000D0D0D00000000000000000000000
      0000000000000000000000000000000000006060600000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF003E3E3E000000
      00000000000000000000A7A7A700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A300000000000000
      00000000000043434300FFFFFF00FFFFFF00FFFFFF00FFFFFF00424242000000
      00000000000000000000A4A4A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF001D1D1D0000000000000000001C1C1C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A9A9A900000000000000
      0000000000003F3F3F00FFFFFF00FFFFFF00B4B4B4001B1B1B00000000000000
      000000000000000000000000000000000000D2D2D20000000000000000000000
      00004F4F4F000000000000000000000000000000000000000000000000005555
      5500000000000000000000000000D4D4D4000000000000000000000000000000
      000000000000000000001C1C1C00B5B5B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D1D1
      D100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF001A1A1A000000
      00000000000000000000E0E0E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBDBDB00000000000000
      00000000000026262600FFFFFF00FFFFFF00FFFFFF00FFFFFF00262626000000
      00000000000000000000DCDCDC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0E0E000000000000000
      00000000000019191900FFFFFF00FFFFFF001B1B1B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0C0C000000000000000000000000000000000000000000000000000E0E
      0E00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D1000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00030303000000
      00000000000000000000F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4F400000000000000
      0000000000000E0E0E00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D0D0D000000
      00000000000000000000F4F4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800000000000000
      00000000000007070700FFFFFF00FFFFFF001B1B1B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0C0C000000000000000000000000000000000000000000000000000D0D
      0D00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0D0D00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00070707000000
      00000000000000000000F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F4F400000000000000
      0000000000000D0D0D00FFFFFF00FFFFFF00FFFFFF00FFFFFF000E0E0E000000
      00000000000000000000F4F4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800000000000000
      00000000000003030300FFFFFF00FFFFFF00B3B3B3001A1A1A00000000000000
      000000000000000000000000000000000000D2D2D20000000000000000000000
      0000525252000000000000000000000000000000000000000000000000005454
      5400000000000000000000000000D4D4D4000000000000000000000000000000
      000000000000000000001B1B1B00B4B4B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00191919000000
      00000000000000000000E0E0E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCDCDC00000000000000
      00000000000026262600FFFFFF00FFFFFF00FFFFFF00FFFFFF00262626000000
      00000000000000000000DBDBDB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0E0E000000000000000
      0000000000001A1A1A00FFFFFF00FFFFFF000000000000000000000000000000
      00004D4D4D000000000000000000000000008C8C8C0000000000000000000000
      0000000000001111110000000000000000000000000000000000101010000000
      00000000000000000000000000008E8E8E000000000000000000000000004C4C
      4C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000696969000000000000000000000000000000
      0000000000000000000000000000D1D1D1000000000000000000000000000000
      0000000000000000000000000000000000006060600000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF003F3F3F000000
      00000000000000000000A9A9A900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF001C1C1C0000000000000000001D1D1D00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A4A4A400000000000000
      00000000000042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00434343000000
      00000000000000000000A3A3A300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A7A7A700000000000000
      0000000000003E3E3E00FFFFFF00FFFFFF000000000000000000000000000000
      00008D8D8D000000000000000000000000002929290000000000000000000000
      00000000000000000000525252000C0C0C000C0C0C004F4F4F00D7D7D7000000
      00000000000000000000000000002A2A2A000000000000000000000000008D8D
      8D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00767676000000
      000000000000000000005D5D5D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B6B6B6001D1D1D001D1D1D00B7B7B700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0056565600000000000000
      00000000000083838300FFFFFF00FFFFFF00FFFFFF00FFFFFF00838383000000
      0000000000000000000055555500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005A5A5A00000000000000
      0000000000007E7E7E00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000505050000000000000000000000000090909000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000092929200000000000000000000000000050505000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D1D1D100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C1C1C1000000
      0000000000000000000006060600E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0E0E00004040400000000000000
      000000000000C8C8C800FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7C7C7000000
      0000000000000000000004040400DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0E0E00005050500000000000000
      000000000000C3C3C300FFFFFF00FFFFFF000000000000000000000000000000
      0000000000005E5E5E0000000000000000000000000004040400B9B9B9000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BBBBBB00050505000000000000000000000000005E5E5E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FEFEFE002828
      280000000000000000000000000053535300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004E4E4E0000000000000000000000
      000031313100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003131
      31000000000000000000000000007E7E7E00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000000000000000
      00002D2D2D00FEFEFE00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000F0F0F00000000000000000000000000040404009191
      9100000000000000000000000000000000000000000000000000000000000000
      000091919100050505000000000000000000000000000F0F0F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D1D1
      D100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF009D9D
      9D000000000000000000000000000000000093939300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008E8E8E000000000000000000000000000000
      0000A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A7A7
      A70000000000000000000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008585850000000000000000000000
      0000A3A3A300FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000ACACAC00010101000000000000000000000000000000
      00002A2A2A008E8E8E00D3D3D3000000000000000000D3D3D3008E8E8E002A2A
      2A000000000000000000000000000000000001010100ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00353535000000000000000000000000000101010092929200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008E8E8E00010101000000000000000000000000003F3F
      3F00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD006B6B6B000C0C0C0046464600EDEDED00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEEEE00484848000C0C0C006868
      6800FDFDFD00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000939393000101010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101009393930000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000051515100000000000000000000000000000000000000
      0000000000006969690000000000000000000000000000000000676767000000
      0000000000000000000000000000000000000000000055555500000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D7D7D7000E0E0E000000000000000000000000000000000055555500E2E2
      E200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E0E0E00053535300000000000000000000000000000000000E0E0E00E0E0
      E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000ACACAC000E0E0E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000F0F0F00ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000515151000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005757570000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B4B4B40006060600000000000000000000000000000000000505
      05005A5A5A00A7A7A700DEDEDE00F6F6F600F5F5F500DDDDDD00A5A5A5005858
      580005050500000000000000000000000000000000000A0A0A00BFBFBF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C5C5C000404
      0400000000000000000000000000000000000000000000000000000000000000
      0000040404005D5D5D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B6B6B6000C0C0C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D0D0D00BCBCBC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001F1F1F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001D1D1D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B8B8B004B4B4B00000000000000000000000000000000004B4B4B008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DCDCDC003B3B3B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003E3E3E00DEDEDE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAFAF000404
      0400000000000000000000000000000000000000000000000000000000000000
      000004040400AFAFAF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00A1A1A1002C2C2C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002E2E2E00A4A4A400FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ABAB
      AB00040404000000000000000000000000000000000000000000000000000404
      0400AAAAAA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00C3C3
      C3007F7F7F0040404000222222000C0C0C000D0D0D0022222200414141008080
      8000C5C5C500FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ABABAB00040404000000000000000000000000000000000004040400AAAA
      AA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B0000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ABABAB0004040400000000000000000004040400AAAAAA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B3B3B3001A1A1A001B1B1B00B4B4B400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00AFAFAF001C1C1C001C1C1C00AFAFAF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6E6E6009E9E9E008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D009F9F9F00E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0A0008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D00A1A1A1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C8C008D8D8D00E8E8E800F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100E8E8E8008D8D8D008C8C8C005858580000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030303008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F1008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003636360000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00F1F1F100F1F1
      F100E0E0E000E0E0E000494949001F1F1F001F1F1F001F1F1F00AFAFAF00E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000B0B0B0001F1F1F001F1F1F001F1F1F0047474700E0E0E000E0E0
      E000F1F1F100F1F1F1008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000909090000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005353530000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00F1F1F100F1F1
      F100E0E0E000E1E1E1009F9F9F001F1F1F001F1F1F001F1F1F0050505000E1E1
      E100E1E1E100E1E1E100E1E1E100E0E0E000E1E1E100E1E1E100E1E1E100E0E0
      E000E1E1E100505050001F1F1F001F1F1F001F1F1F00A1A1A100E0E0E000E1E1
      E100F1F1F100F1F1F1008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3D3D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00F2F2F200F2F2
      F200E2E2E200E2E2E200E1E1E100383838001F1F1F001F1F1F001F1F1F00B1B1
      B100E3E3E300E2E2E200E2E2E200E3E3E300E2E2E200E2E2E200E2E2E200E2E2
      E200B2B2B2001F1F1F001F1F1F001F1F1F0037373700DFDFDF00E3E3E300E2E2
      E200F2F2F200F2F2F2008D8D8D008D8D8D001515150000000000000000000000
      0000B1B1B100CECECE0001010100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A1A1A100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECECE00DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      0000D8D8D800DADADA0001010100000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00F3F3F300F3F3
      F300E4E4E400E3E3E300E4E4E4008B8B8B001F1F1F001F1F1F001F1F1F005151
      5100E4E4E400E4E4E400E4E4E400E4E4E400E3E3E300E4E4E400E4E4E400E4E4
      E400515151001F1F1F001F1F1F001F1F1F008C8C8C00E4E4E400E4E4E400E4E4
      E400F3F3F300F3F3F3008D8D8D008D8D8D001515150000000000000000000000
      000000000000000000002A2A2A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000071717100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808000C0C
      0C00000000000000000000000000000000000000000000000000000000000000
      00000D0D0D000606060000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00F3F3F300F3F3
      F300E5E5E500E6E6E600E5E5E500DDDDDD002E2E2E001F1F1F001F1F1F001F1F
      1F001F1F1F001F1F1F001F1F1F001F1F1F001F1F1F001F1F1F001F1F1F001F1F
      1F001F1F1F001F1F1F001F1F1F0029292900DADADA00E6E6E600E5E5E500E6E6
      E600F3F3F300F4F4F4008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000064646400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003F3F3F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00F4F4F400F4F4
      F400E7E7E700E7E7E700E7E7E700E7E7E7007D7D7D0025252500212121001F1F
      1F001F1F1F001F1F1F001F1F1F001F1F1F001F1F1F001F1F1F001F1F1F001F1F
      1F001F1F1F001F1F1F001F1F1F0079797900E7E7E700E7E7E700E7E7E700E7E7
      E700F4F4F400F4F4F4008D8D8D008D8D8D001515150000000000000000000000
      000000000000000000009E9E9E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000E0E0E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00F5F5F500F5F5
      F500E8E8E800E8E8E800E8E8E800E9E9E900D3D3D3002E2E2E00282828002424
      240049494900E9E9E900E8E8E800E8E8E800E8E8E800E9E9E900E9E9E9004949
      49001F1F1F001F1F1F0021212100CDCDCD00E9E9E900E9E9E900E9E9E900E9E9
      E900F5F5F500F5F5F5008D8D8D008D8D8D001515150000000000000000000000
      00000000000000000000D8D8D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBDBDB0000000000000000004F4F4F000000
      0000000000008B8B8B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008A8A8A000000
      000000000000505050000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00F5F5F500F5F5
      F500EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA006F6F6F002E2E2E002B2B
      2B0027272700C0C0C000EAEAEA00EAEAEA00EAEAEA00EAEAEA00BDBDBD001F1F
      1F001F1F1F001F1F1F0063636300EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00F5F5F500F5F5F5008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000151515000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AAAAAA000000000000000000000000000F0F
      0F000000000004040400C7C7C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBCBCB00050505000000
      00000D0D0D00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00F6F6F600F6F6
      F600EBEBEB00EBEBEB00EBEBEB00ECECEC00ECECEC00C4C4C400353535003131
      31002D2D2D006F6F6F00ECECEC00ECECEC00EBEBEB00EBEBEB00686868001F1F
      1F001F1F1F001F1F1F00BEBEBE00EBEBEB00ECECEC00ECECEC00ECECEC00EBEB
      EB00F6F6F600F6F6F6008D8D8D008D8D8D001515150000000000000000000000
      00000000000000000000000000004E4E4E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000797979000000000000000000000000009292
      9200000000000000000022222200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026262600000000000000
      000093939300000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00F7F7F700F7F7
      F700EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00626262003737
      37003434340034343400D8D8D800EDEDED00EDEDED00D9D9D900232323001F1F
      1F001F1F1F004A4A4A00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EEEE
      EE00F7F7F700F7F7F7008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000878787000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000474747000000000000000000000000000000
      00003939390000000000000000005C5C5C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005C5C5C0000000000000000003535
      350000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00F8F8F800F7F7
      F700EFEFEF00EEEEEE00EFEFEF00EFEFEF00EEEEEE00EFEFEF00B5B5B5003E3E
      3E003A3A3A003737370091919100EFEFEF00EFEFEF008A8A8A00242424002121
      21001F1F1F00A9A9A900EFEFEF00EFEFEF00EEEEEE00EFEFEF00EEEEEE00EEEE
      EE00F8F8F800F7F7F7008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000C3C3C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151515000000000000000000000000000000
      0000D2D2D2000404040000000000000000000000000000000000000000000000
      00000000000000000000000000007E7E7E007F7F7F0000000000000000000000
      000000000000000000000000000000000000000000000000000003030300CECE
      CE0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00F8F8F800F8F8
      F800F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EEEEEE005B5B
      5B00414141003D3D3D004B4B4B00EBEBEB00EBEBEB00414141002A2A2A002727
      27003C3C3C00EDEDED00F1F1F100F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F8F8F800F9F9F9008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000606060000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000434343000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      000000000000000000007E7E7E00000000000000000080808000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00F9F9F900F9F9
      F900F2F2F200F1F1F100F2F2F200F2F2F200F1F1F100F2F2F200F1F1F100A7A7
      A70047474700444444003F3F3F00B1B1B100B0B0B00034343400313131002D2D
      2D0098989800F2F2F200F1F1F100F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F9F9F900F9F9F9008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D7D7D0000000000000000000000000000000000818181000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0007070700000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00FAFAFA00FAFA
      FA00F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300EBEB
      EB00585858004A4A4A004747470068686800666666003B3B3B00383838003E3E
      3E00E7E7E700F4F4F400F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300FAFAFA00FAFAFA008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007D7D7D000000000000000000000000000000000000000000000000008181
      8100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00FAFAFA00FAFA
      FA00F5F5F500F5F5F500F4F4F400F5F5F500F4F4F400F5F5F500F5F5F500F4F4
      F4009C9C9C00505050004C4C4C004949490046464600414141003E3E3E008E8E
      8E00F5F5F500F5F5F500F5F5F500F5F5F500F4F4F400F5F5F500F5F5F500F5F5
      F500FAFAFA00FAFAFA008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007C7C
      7C00000000000000000000000000000000000000000000000000000000000000
      0000828282000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00FBFBFB00FBFB
      FB00F6F6F600F6F6F600F7F7F700F6F6F600F6F6F600F6F6F600F6F6F600F6F6
      F600E3E3E3005A5A5A00535353004F4F4F004B4B4B004848480046464600DEDE
      DE00F6F6F600F6F6F600F6F6F600F6F6F600F6F6F600F7F7F700F6F6F600F7F7
      F700FBFBFB00FBFBFB008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008383830000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00FCFCFC00FBFB
      FB00F8F8F800F8F8F800F8F8F800F7F7F700F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F8008F8F8F005A5A5A0056565600525252004F4F4F0085858500F8F8
      F800F8F8F800F8F8F800F7F7F700F8F8F800F8F8F800F8F8F800F7F7F700F8F8
      F800FCFCFC00FCFCFC008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007A7A7A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8D008D8D8D00FDFDFD00FCFC
      FC00FAFAFA00F9F9F900FAFAFA00F9F9F900F9F9F900F9F9F900F9F9F900FAFA
      FA00F9F9F900D7D7D7005C5C5C005C5C5C005858580055555500D3D3D300FAFA
      FA00F9F9F900FAFAFA00F9F9F900FAFAFA00F9F9F900F9F9F900FAFAFA00F9F9
      F900FCFCFC00FCFCFC008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7A7A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00BEBEBE002121
      2100000000000000000000000000000000001D1D1D00B6B6B600FFFFFF00FFFF
      FF00B9B9B9001E1E1E00000000000000000000000000000000001F1F1F00BCBC
      BC00FFFFFF00FFFFFF00B7B7B7001D1D1D000000000000000000000000000000
      00001D1D1D00B6B6B600FFFFFF00FFFFFF008D8D8D008D8D8D00FDFDFD00FDFD
      FD00FBFBFB00FAFAFA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFAFA00FBFB
      FB00FBFBFB00FBFBFB00FAFAFA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFB
      FB00FDFDFD00FDFDFD008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B0B
      0B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00282828000000
      000000000000000000000000000000000000000000001C1C1C00FFFFFF00FFFF
      FF001F1F1F000000000000000000000000000000000000000000000000002525
      2500FFFFFF00FFFFFF001D1D1D00000000000000000000000000000000000000
      0000000000001C1C1C00FFFFFF00FFFFFF008D8D8D008D8D8D00FEFEFE00FEFE
      FE00FCFCFC00FDFDFD00FCFCFC00FDFDFD00FCFCFC00FDFDFD00FCFCFC00FDFD
      FD00FDFDFD00FDFDFD00FCFCFC00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FDFDFD00FCFCFC00FDFDFD00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FEFEFE00FEFEFE008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00111111000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF008D8D8D008D8D8D00FFFFFF00FFFF
      FF00D0B8A700CBB19F00CBB19F00CBB19F00CBB2A000CBB19F00CCB2A000CBB1
      A000CBB19F00CBB19F00CCB2A000CBB19F00CCB2A000CBB1A000CCB2A000CCB2
      A000CBB19F00CCB2A000CBB1A000CBB19F00CCB2A000CCB2A000CCB2A000CCB3
      A100FFFFFF00FFFFFF008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00111111000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF008D8D8D008D8D8D00FFFFFF00FFFF
      FF00BE9D8700BB988000BB988000BB988000BB988000BA988000BB988000BA97
      7F00BB988000BB988000BA977F00BA988000BB988000BA977F00BA977F00BB98
      8000BA978000BB988000BB988000BB988000BA977F00BB988000BA988000BB98
      8000FFFFFF00FFFFFF008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00111111000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF008D8D8D008D8D8D00FFFFFF00FFFF
      FF00AE856800A97D5F00A97D5F00A97D5F00A97D5F00AA7E6000A97D5F00A97D
      5F00AA7E6000A97D5F00A97E6000AA7E6000A97D5F00A97D5F00AA7E6000A97D
      5F00A97D5F00A97D5F00A97D5F00A97E6000A97D5F00AA7E6000A97D5F00A97E
      6000FFFFFF00FFFFFF008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00111111000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF008D8D8D008D8D8D00FFFFFF00FFFF
      FF00C7AA9600C1A18C00C1A28C00C1A18B00C1A28C00C1A18B00C1A28C00C1A1
      8B00C1A28C00C1A18C00C1A18B00C1A28C00C1A18B00C1A28C00C1A18B00C1A2
      8C00C1A28C00C1A28C00C1A18C00C1A28C00C1A18B00C1A28C00C1A18C00C2A4
      8E00FFFFFF00FFFFFF008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00272727000000
      000000000000000000000000000000000000000000001C1C1C00FFFFFF00FFFF
      FF001F1F1F000000000000000000000000000000000000000000000000002424
      2400FFFFFF00FFFFFF001D1D1D00000000000000000000000000000000000000
      0000000000001C1C1C00FFFFFF00FFFFFF008D8D8D008D8D8D00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008D8D8D008D8D8D001515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00BDBDBD001F1F
      1F00000000000000000000000000000000001C1C1C00B5B5B500FFFFFF00FFFF
      FF00B8B8B8001D1D1D00000000000000000000000000000000001E1E1E00BBBB
      BB00FFFFFF00FFFFFF00B6B6B6001C1C1C000000000000000000000000000000
      00001C1C1C00B5B5B500FFFFFF00FFFFFF008C8C8C008D8D8D00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE008D8D8D008C8C8C005757570000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004444
      4400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A0A0A0008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D00A1A1A1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6E6E6009E9E9E008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D8D008D8D
      8D008D8D8D008D8D8D009E9E9E00E6E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C2C2C200666666006666660067676700666666006666
      6600A4A4A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C1C1C100666666006666660067676700666666006666
      6600A5A5A500FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900010101000101010001010100020202000101
      010067676700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0098989800010101000101010001010100020202000101
      010068686800FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000010101000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCBCBC002626
      26001010100010101000101010001010100027272700BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900010101000000000000000000000000000000
      000067676700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0098989800010101000000000000000000000000000000
      000068686800FFFFFF00FFFFFF00FFFFFF0000000000000000009C9C9C000D0D
      0D00C0C0C00000000000000000000101010000000000BDBDBD000D0D0D009F9F
      9F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E1E000000
      0000000000000000000000000000000000000000000020202000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900000000000000000000000000000000000000
      000067676700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0098989800000000000000000000000000000000000000
      000068686800FFFFFF00FFFFFF00FFFFFF0000000000000000007C7C7C000000
      00001B1B1B004242420000000000000000004343430019191900000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060600060606000606060006060600060606000606
      0600060606000606060006060600060606000606060006060600060606000606
      060006060600060606000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00E9EAEA00989998009C97
      9B00979999009999990099999900999999009999990099999900999999009999
      99009999990099999900999999009999990099999900ADADAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900000000000000000000000000000000000000
      000067676700FFFFFF00D6D6D6009A9A9A009999990099999900999999009999
      9900C3C3C300FFFFFF0098989800000000000000000000000000000000000000
      000068686800FFFFFF00FFFFFF00FFFFFF000000000000000000000000002121
      2100000000000000000000000000000000000000000000000000232323000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00C9CBCB00010200000400
      0300000100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000034343400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900000000000000000000000000000000000000
      000067676700FFFFFF0098989800010101000000000000000000000000000000
      000067676700FFFFFF0098989800000000000000000000000000000000000000
      000068686800FFFFFF00FFFFFF00FFFFFF007171710029292900616161000000
      0000060606008A8A8A0000000000000000008787870005050500000000006262
      6200292929007474740000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00C9CBCB00000100000400
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000034343400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900000000000000000000000000000000000000
      000067676700FFFFFF0098989800000000000000000000000000000000000000
      000067676700FFFFFF0098989800000000000000000000000000000000000000
      000068686800FFFFFF00FFFFFF00FFFFFF003131310000000000000000000000
      00008B8B8B000000000000000000000000000000000086868600000000000000
      0000000000003434340000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00C9CBCB00000100000400
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000034343400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900000000000000000000000000000000000000
      000067676700FFFFFF0098989800000000000000000000000000000000000000
      000067676700FFFFFF0098989800000000000000000000000000000000000000
      000068686800FFFFFF00FFFFFF00FFFFFF0000000000BABABA00000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0200BBBBBB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1B1B000000
      000000000000000000000000000000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00C9CBCB00010200000400
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000034343400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900010101000000000000000000000000000000
      000067676700FFFFFF0098989800000000000000000000000000000000000000
      000068686800FFFFFF0098989800010101000000000000000000000000000000
      000068686800FFFFFF00FFFFFF00FFFFFF0000000000BABABA00000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0200BBBBBB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B4B4B4001B1B
      1B00000000000000000000000000000000001B1B1B00B5B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00C9CBCB00020201000501
      0300000201000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000035353500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900010101000101010001010100020202000101
      010067676700FFFFFF0098989800010101000000000000000000000000000101
      010068686800FFFFFF0098989800010101000101010001010100020202000101
      010068686800FFFFFF00FFFFFF00FFFFFF003131310000000000000000000000
      00008C8C8C000000000000000000000000000000000086868600000000000000
      0000000000003434340000000000000000000000000000000000000000005959
      5900000000000000000059595900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00E9EAEA00989997009B97
      9900979999009999990099999900999999009999990099999900999999009999
      99009999990099999900999999009999990099999900AEAEAE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D6D6D60098989800999999009A9A9A00999999009898
      9800C3C3C300FFFFFF00D6D6D600999999009999990099999900999999009999
      9900C3C3C300FFFFFF00D6D6D60098989800999999009A9A9A00999999009898
      9800C3C3C300FFFFFF00FFFFFF00FFFFFF007171710029292900616161000000
      0000060606008B8B8B0000000000000000008888880005050500000000006262
      620029292900747474000000000068686800D1D1D10000000000000000005959
      59000000000000000000595959000000000000000000D1D1D100696969000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FBFFFA00FBFFFD00FCFF
      FC00FAFFFA00FBFFFC00FCFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFF
      FB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFF
      FB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFF
      FB00FBFFFB00FBFFFB00FBFFFB00FBFFFB000000000000000000000000002121
      2100000000000000000000000000000000000000000000000000232323000000
      000000000000CCCCCC0029292900000000002A2A2A0000000000A1A1A1002525
      2500000000000000000025252500A1A1A100000000002A2A2A00000000002A2A
      2A00D2D2D2000000000000000000000000000000000000000000B7B7B7001E1E
      1E00000000000000000000000000000000001E1E1E00B8B8B800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00DEE0DF00666665006A65
      6900646665006666660066666600666666006666660066666600666666006666
      660066666600666666006666660084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDDAB9006FBD69006CBA700074BB
      6B0069BF66006EBB6D0073BB6A0070BC6A0070BB6B0070BB6B0070BC6A0070BC
      6A0070BB6B0070BB6B0070BC6A0070BC6A0070BB6B0070BB6B0070BC6A0070BC
      6A0070BB6B0070BB6B0070BC6A0070BC6A0070BB6B0070BB6B0070BC6A0070BC
      6A0070BB6B0070BB6B0070BC6A0070BC6A0000000000000000007C7C7C000000
      00001B1B1B004242420000000000000000004343430019191900000000007F7F
      7F00000000008383830000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008282820000000000000000000000000000000000000000001C1C1C000000
      000000000000000000000000000000000000000000001D1D1D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00CACCCB00010201000400
      0300000100000000000000000000000000000000000000000000000000000000
      000000000000000000000101010035353500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007BBE840016920C00109803001496
      0300099606000B950700119603000F9603000F9604000F9604000F9603000F96
      03000F9604000F9604000F9603000F9603000F9604000F9604000F9603000F96
      03000F9604000F9604000F9603000F9603000F9604000F9604000F9603000F96
      03000F9604000F9604000F9603000F96030000000000000000009C9C9C000D0D
      0D00C0C0C00000000000000000000101010000000000BDBDBD000D0D0D009F9F
      9F0000000000000000003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00C9CBCB00010201000500
      0300000100000000000000000000000000000000000000000000000000000000
      000000000000000000000101010036363600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BCD9BD0075BA6D0070BC690073BC
      690069BC6B006BBB6E006FBB6B006EBB6B006EBB6B006EBB6B006EBB6B006EBB
      6B006EBB6B006EBB6B006EBB6B006EBB6B006EBB6B006EBB6B006EBB6B006EBB
      6B006EBB6B006EBB6B006EBB6B006EBB6B006EBB6B006EBB6B006EBB6B006EBB
      6B006EBB6B006EBB6B006EBB6B006EBB6B000000000000000000000000000000
      0000000000000000000000000000010101000000000000000000000000000000
      000000000000000000003A3A3A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003A3A
      3A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00C9CBCB00000100000400
      0300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000034343400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFB00FAFFF700FBFFFC00FCFF
      FB00FAFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00F9FF
      F900FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00F9FF
      F900FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00FBFFFB00F9FF
      F900FBFFFB00FBFFFB00FBFFFB00FBFFFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002E2E
      2E007F7F7F006B6B6B00000000000000000000000000000000004B4B4B00BCBC
      BC000000000000000000BCBCBC004A4A4A000000000000000000000000000000
      00006B6B6B007F7F7F002E2E2E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00C9CBCB00000100000400
      0300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000035353500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D7D6D60099989800999898009A9A9900999898009998
      9800C3C3C200FFFFFF00D6D6D5009A9999009998980099989800999898009999
      9800C3C3C200FFFFFF00D6D6D50099989800999898009A9A9900999898009998
      9800C3C3C300FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000919191000000
      0000000000000000000000000000000000000000000083838300000000000000
      0000000000000000000000000000000000008282820000000000000000000000
      0000000000000000000000000000919191000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00C9CBCB00000100000400
      0300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000035353500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0098989900010102000101020001010200020203000101
      020067676800FFFFFF0098989900010102000000010000000100000001000101
      020068686900FFFFFF0097979800010102000101020001010200020203000101
      020068686900FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3E000000
      0000000000000000000000000000000000004B4B4B0000000000000000000000
      000000000000000000000000000000000000000000004A4A4A00000000000000
      00000000000000000000000000003E3E3E0000000000000000001D1D1D000000
      000000000000000000000000000000000000000000001E1E1E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00DEE0DF00666765006864
      6700656666006666660066666600666666006666660066666600666666006666
      660066666600666666006666660085858500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900000101000001010000010100000101000001
      010067676700FFFFFF0098989900000101000000000000000000000000000000
      010067686800FFFFFF0098989800000101000001010000010100000101000001
      010068686800FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AFAFAF005959
      590009090900000000000000000000000000BDBDBD0000000000000000000000
      00000000000000000000000000000000000000000000BCBCBC00000000000000
      0000000000000909090059595900AFAFAF000000000000000000BABABA002323
      23000000000000000000000000000000000024242400BBBBBB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900000000000000000000000000000000000000
      000067676700FFFFFF0098989800000000000000000000000000000000000000
      000067676700FFFFFF0098989800000000000000000000000000000000000000
      000068686800FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B3B3B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00DEE0E000656665006965
      6800636565006666660066666600666666006666660066666600666666006666
      6600666666006666660066666600656565006767670065656500666666008585
      8500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900000000000000000000000000000000000000
      000067676700FFFFFF0098989800000000000000000000000000000000000000
      000067676700FFFFFF0098989800000000000000000000000000000000000000
      000068686800FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3A3A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003B3B3B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00C9CBCB00010200000400
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101000000000002020200010101003434
      3400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900000000000000000000000000000000000000
      000067676700FFFFFF0098989800010101000000000000000000000000000000
      000067676700FFFFFF0098989800000000000000000000000000000000000000
      000068686800FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AFAFAF005959
      590009090900000000000000000000000000BEBEBE0000000000000000000000
      00000000000000000000000000000000000000000000BCBCBC00000000000000
      0000000000000909090059595900AFAFAF000000000000000000B5B5B5001C1C
      1C00000000000000000000000000000000001C1C1C00B6B6B600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00C9CBCB00000100000400
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003434
      3400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900000000000000000000000000000000000000
      000067676700FFFFFF00D6D6D6009A9A9A009999990099999900999999009999
      9900C3C3C300FFFFFF0098989800000000000000000000000000000000000000
      000068686800FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3E000000
      0000000000000000000000000000000000004C4C4C0000000000000000000000
      000000000000000000000000000000000000000000004B4B4B00000000000000
      00000000000000000000000000003E3E3E0000000000000000001B1B1B000000
      000000000000000000000000000000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040AA3A00FFFFFF00C9CBCB00000100000400
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003434
      3400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900000000000000000000000000000000000000
      000067676700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0098989800000000000000000000000000000000000000
      000068686800FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000919191000000
      0000000000000000000000000000000000000000000085858500000000000000
      0000000000000000000000000000000000008383830000000000000000000000
      0000000000000000000000000000919191000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0014920A0040A93B00FFFFFF00C9CBCB00000100000400
      0400000001000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003535
      3500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900010101000000000000000000000000000000
      000067676700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0098989800010101000000000000000000000000000000
      000068686800FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002E2E
      2E007F7F7F006B6B6B00000000000000000000000000000000004C4C4C00BEBE
      BE000000000000000000BDBDBD004B4B4B000000000000000000000000000000
      00006B6B6B007F7F7F002E2E2E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF001593090040A93B00FFFFFF00C7CBCC00000201000401
      0300010201000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202003434
      3400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900010101000101010001010100020202000101
      010067676700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0098989800010101000101010001010100020202000101
      010068686800FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003A3A3A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003636
      3600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF001494070042AC3500FFFFFF00DFE0DE00666864006865
      6600646866006666660066666600666666006666660066666600666666006666
      6600666666006666660066666600666666006666660066666600666666008585
      8500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C2C2C200666666006666660067676700676767006666
      6600A4A4A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C1C1C100666666006666660067676700676767006666
      6600A5A5A500FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0012920C003EAB3A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008282820000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008383830000000000000000000000000000000000000000001B1B1B000000
      000000000000000000000000000000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0010920C003BAA3D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D2D2D2002A2A2A00000000002A2A2A0000000000A1A1A1002525
      2500000000000000000025252500A1A1A100000000002A2A2A00000000002929
      2900D1D1D1000000000000000000000000000000000000000000B4B4B4001B1B
      1B00000000000000000000000000000000001B1B1B00B5B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF001B900C0045AB3600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000069696900D1D1D10000000000000000005959
      59000000000000000000595959000000000000000000D1D1D100686868000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0061B1630082BE8100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005959
      5900000000000000000059595900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122000000000000000000000000001500880000000000000000004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000004CB122004CB1
      22004CB12200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000C3C3C300C3C3C30015008800241CED0015008800C3C3C3000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004CB1
      22004CB122004CB1220000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB122004CB1
      2200FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000C3C3C300C3C3
      C300C3C3C300C3C3C30015008800241CED00241CED00241CED0015008800C3C3
      C300C3C3C300C3C3C3000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004CB122004CB12200000000000000000000000000000000003A3A3A000000
      0000000000003B3B3B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00444444000404
      040020202000B6B6B6000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0085858500343434003535350034343400343434003434340085858500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C30015008800241CED00241CED00241CED00241CED00241CED001500
      8800C3C3C300C3C3C300C3C3C300C3C3C30000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006161610001010100000000000000
      000000000000171717000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600020202000000000000000000000000000101010066666600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF0000000000C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300150088001500880015008800241CED00241CED00241CED00150088001500
      880015008800C3C3C300C3C3C300C3C3C300C3C3C30000000000FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008F8F8F000D0D0D000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000202020065656500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AEAEAE003535350034343400343434003434340034343400ADADAD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0061B163001B900C0010920C001292
      0C00149407001593090014920A0014920A0014920A0014920A0014920A001492
      0A0014920A0014920A0014920A0014920A0014920A0014920A0014920A001492
      0A0014920A0014920A0014920A0014920A0014920A0014920A0014920A001492
      0A0014920A0014920A0014920A0014920A00000000004CB122004CB12200FFFF
      FF00FFFFFF0000000000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C30015008800241CED00241CED00241CED0015008800C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C30000000000FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B1B1B1002121210000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000067676700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0082BE810045AB36003BAA3D003EAB
      3A0042AC350040A93B0040A93B0040AA3A0040AA3A0040AA3A0040AA3A0040AA
      3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA
      3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA
      3A0040AA3A0040AA3A0040AA3A0040AA3A00000000004CB122004CB12200FFFF
      FF0000000000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C30015008800241CED00241CED00241CED0015008800C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C3000000
      0000FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD003E3E
      3E00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000101010065656500FFFF
      FF0085858500353535003535350034343400363636003535350084848400FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB12200FFFF
      FF0000000000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C30015008800241CED00241CED00241CED0015008800C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C3000000
      0000FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006D6D6D00020202000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000010101000101010066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DFE0DE00C7CBCC00C9CBCB00C9CBCB00C9CBCB00C9CBCB00DEE0E000FFFF
      FF00DEE0DF00C9CBCB00C9CBCB00C9CBCB00C9CBCB00CACCCB00DEE0DF00FFFF
      FF00E9EAEA00C9CBCB00C9CBCB00C9CBCB00C9CBCB00C9CBCB00E9EAEA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB122000000
      0000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C3001500880015008800150088001500880015008800C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300000000004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008F8F8F000D0D0D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066686400000201000001000000010000000100000102000065666500FFFF
      FF0066676500000100000001000000010000010201000102010066666500FFFF
      FF0098999700020201000102000000010000000100000102000098999800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB122000000
      0000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300000000004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B1B1B10021212100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0068656600040103000400040004000300040003000400030069656800FFFF
      FF006864670004000300040003000400030005000300040003006A656900FFFF
      FF009B97990005010300040003000400030004000300040003009C979B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB1220000000000C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300000000004CB122004CB12200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD003E3E3E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0064686600010201000000010000000000000000000000000063656500FFFF
      FF0065666600000000000000000000000000000100000001000064666500FFFF
      FF0097999900000201000000000000000000000000000001000097999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB1220000000000C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300000000004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000616161000101
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB1220000000000C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300000000004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000017171700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB1220000000000C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300000000004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000009696960000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB1220000000000C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300000000004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000009595950000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB1220000000000C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300000000004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000016161600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB1220000000000C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300000000004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000616161000101
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB122000000
      0000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300000000004CB122004CB12200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC003D3D3D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0064686600010201000000010000000000000000000000000063656500FFFF
      FF0065666600000000000000000000000000000100000001000064666500FFFF
      FF0097999900000201000000000000000000000000000001000097999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB122000000
      0000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300000000004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B1B1B10021212100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0068656600040103000400040004000300040003000400030069656800FFFF
      FF006864670004000300040003000400030005000300040003006A656900FFFF
      FF009B97990005010300040003000400030004000300040003009C979B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB122000000
      0000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300000000004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008F8F8F000D0D0D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066686400000201000001000000010000000100000102000065666500FFFF
      FF0066676500000100000001000000010000010201000102010066666500FFFF
      FF0098999700020201000102000000010000000100000102000098999800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB12200FFFF
      FF0000000000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C3001500880015008800150088001500880015008800C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C3000000
      0000FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006D6D6D00020202000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DFE0DE00C7CBCC00C9CBCB00C9CBCB00C9CBCB00C9CBCB00DEE0E000FFFF
      FF00DEE0DF00C9CBCB00C9CBCB00C9CBCB00C9CBCB00CACCCB00DEE0DF00FFFF
      FF00E9EAEA00C9CBCB00C9CBCB00C9CBCB00C9CBCB00C9CBCB00E9EAEA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000066666600FFFF
      FF0066666600000000000000000000000000010101000101010066666600FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB12200FFFF
      FF0000000000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C30015008800241CED00241CED00241CED0015008800C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C3000000
      0000FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCCCC003D3D
      3D00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000101010065656500FFFF
      FF0085858500353535003535350034343400363636003535350084848400FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB12200FFFF
      FF00FFFFFF0000000000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C30015008800241CED00241CED00241CED0015008800C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C30000000000FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B1B1B1002121210000000000000000000000000000000000000000000000
      00000000000000000000000000000000000082BE810045AB36003BAA3D003EAB
      3A0042AC350040A93B0040A93B0040AA3A0040AA3A0040AA3A0040AA3A0040AA
      3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA
      3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA3A0040AA
      3A0040AA3A0040AA3A0040AA3A0040AA3A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000000000067676700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900000000000000000000000000000000000000000099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF0000000000C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C30015008800241CED00241CED00241CED0015008800C3C3
      C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C30000000000FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008F8F8F000D0D0D000000000000000000000000000000
      00000000000000000000000000000000000061B163001B900C0010920C001292
      0C00149407001593090014920A0014920A0014920A0014920A0014920A001492
      0A0014920A0014920A0014920A0014920A0014920A0014920A0014920A001492
      0A0014920A0014920A0014920A0014920A0014920A0014920A0014920A001492
      0A0014920A0014920A0014920A0014920A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600000000000000000000000000000000000202020065656500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AEAEAE003535350034343400343434003434340034343400ADADAD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C3C3C300C3C3C300C3C3C300C3C3
      C300150088001500880015008800241CED00241CED00241CED00150088001500
      880015008800C3C3C300C3C3C300C3C3C30000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006161610001010100000000000000
      000000000000171717000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066666600020202000000000000000000000000000101010066666600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004CB122004CB122004CB1
      2200FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000C3C3C300C3C3
      C300C3C3C30015008800241CED00241CED00241CED00241CED00241CED001500
      8800C3C3C300C3C3C3000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004CB122004CB1220000000000000000000000000000000000393939000000
      0000000000003A3A3A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00444444000404
      040020202000B6B6B6000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0085858500343434003535350034343400343434003434340085858500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000004CB122004CB1
      22004CB12200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000C3C3C30015008800241CED00241CED00241CED0015008800C3C3
      C3000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004CB1
      22004CB122004CB1220000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB12200000000000000000015008800241CED0015008800000000000000
      00004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB12200150088004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B20069696900404040001B1B1B00101010001010100016161600404040006E6E
      6E00ABABAB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A6A6A000B0B0B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001010100069696900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000787878000707070000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000090909007E7E7E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C6008282820042424200252525000D0D0D000C0C0C0025252500414141008282
      8200C7C7C7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7C7
      C7008181810041414100252525000C0C0C000E0E0E0025252500424242008282
      8200C7C7C7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCDCDC0035353500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000036363600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A6A600303030000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000030303000A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4A4A4002F2F2F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031313100A7A7A700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6D6D6001717170000000000000000000000000000000000000000001E1E
      1E0070707000B6B6B600DCDCDC000000000000000000DEDEDE00B1B1B1007272
      720018181800000000000000000000000000000000000000000018181800D4D4
      D400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006A6A6A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003E3E3E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE003D3D3D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006A6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DADA
      DA0018181800000000000000000000000000000000001E1E1E009F9F9F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009E9E9E0019191900000000000000000000000000000000001D1D
      1D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D0D0D00BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BCBCBC000D0D0D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      3100000000000000000000000000000000005656560000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000505050000000000000000000000000000000
      0000303030000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004545450000000000000000000303
      030054545400A2A2A200DADADA000000000000000000DBDBDB00A3A3A3005555
      5500030303000000000000000000000000000000000009090900BBBBBB000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BBBBBB0009090900000000000000000000000000000000000303
      030056565600A4A4A400DBDBDB000000000000000000DADADA00A1A1A1005353
      5300020202000000000000000000454545000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000797979000000
      00000000000000000000000000006C6C6C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006D6D6D0000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F007D7D7D00DDDD
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000004D4D4D00000000000000000000000000000000000C0C0C00DDDD
      DD00000000000000000000000000000000000000000000000000000000000000
      0000DDDDDD000C0C0C00000000000000000000000000000000004F4F4F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDDDDD007D7D7D007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404000000
      0000000000000000000056565600000000000000000000000000000000000000
      00000000000000000000AEAEAE001D1D1D001B1B1B00B1B1B100000000000000
      0000000000000000000000000000000000000000000055555500000000000000
      0000000000000707070000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008D8D8D00000000000000000000000000000000003D3D
      3D00000000000000000000000000000000000000000000000000000000000000
      00003B3B3B00000000000000000000000000000000008E8E8E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000019191900A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000A5A5A5001919190000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C6C6C00000000000000
      0000000000001C1C1C0000000000000000000000000000000000000000000000
      000000000000AAAAAA0003030300000000000000000004040400BBBBBB000000
      0000000000000000000000000000000000000000000000000000181818000000
      0000000000000000000072727200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008D8D8D000000000000000000000000000000
      0000A3A3A300000000000000000000000000000000000000000000000000A0A0
      A000000000000000000000000000000000008E8E8E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000969696000000000000000000000000000000000000000000000000009D9D
      9D00010101000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009090900000000000000
      0000000000009F9F9F0000000000000000000000000000000000000000000000
      0000AAAAAA0003030300000000000000000000000000000000000D0D0D00D1D1
      D100000000000000000000000000000000000000000000000000A1A1A1000000
      000000000000000000000F0F0F00000000000000000000000000000000000000
      0000AEAEAE001E1E1E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005252520000000000000000000000
      00002D2D2D000000000000000000000000000000000000000000000000002F2F
      2F000000000000000000000000004D4D4D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E1E00AEAE
      AE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001919190000000000000000000000
      0000010101009C9C9C00000000000000000000000000000000009C9C9C000101
      0100000000000000000000000000191919000000000000000000000000000000
      000000000000000000000000000000000000B0B0B00000000000000000000000
      00001E1E1E00000000000000000000000000000000000000000000000000AAAA
      AA00030303000000000000000000000000000000000000000000000000001B1B
      1B00000000000000000000000000000000000000000000000000000000001919
      1900000000000000000000000000B1B1B100000000000000000000000000AAAA
      AA00030303000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040400000000000000
      000000000000C4C4C40000000000000000000000000000000000C1C1C1000000
      0000000000000000000004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0200A3A3A3000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A6A6A60001010100000000000000
      000000000000010101009C9C9C0000000000000000009C9C9C00010101000000
      0000000000000000000001010100A5A5A5000000000000000000000000000000
      0000000000000000000000000000000000006767670000000000000000000000
      0000717171000000000000000000000000000000000000000000A7A7A7000303
      0300000000000000000000000000000000000000000000000000000000000000
      0000313131000000000000000000000000000000000000000000000000007070
      7000000000000000000000000000717171000000000000000000AAAAAA000303
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000057575700000000000000
      0000000000007F7F7F00000000000000000000000000000000007D7D7D000000
      0000000000000000000057575700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020200A3A3A30000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500030303000000
      0000000000000000000000000000969696009D9D9D0001010100000000000000
      0000000000000000000096969600000000000000000000000000000000000000
      0000000000000000000000000000000000003939390000000000000000000000
      0000B8B8B80000000000000000000000000000000000AAAAAA00030303000000
      0000000000000000000002020200A2A2A2006969690000000000000000000000
      000000000000484848000000000000000000000000000000000000000000B0B0
      B0000000000000000000000000003A3A3A0000000000AAAAAA00030303000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4A4A400000000000000
      00000000000040404000000000000000000000000000000000003D3D3D000000
      00000000000000000000A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020200A3A3A300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3A3A3000202
      0200000000000000000000000000010101000101010000000000000000000000
      0000010101009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B0000000000000000000000
      000000000000000000000000000000000000AEAEAE0003030300000000000000
      00000000000003030300A7A7A700000000000000000049494900000000000000
      000000000000000000006565650000000000000000000000000000000000DCDC
      DC0000000000000000000000000021212100AEAEAE0003030300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C00B6B6
      B6000000000000000000000000000000000000000000DCDCDC00000000000000
      00000000000021212100000000000000000000000000000000001F1F1F000000
      00000000000000000000DDDDDD00000000000000000000000000000000000000
      0000B5B5B5001C1C1C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003030300AEAEAE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A8
      A800030303000000000000000000000000000000000000000000000000000000
      0000969696000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000404040000000000000000000000
      0000000000000000000000000000000000001B1B1B0000000000000000000000
      000003030300A7A7A70000000000000000000000000000000000313131000000
      0000000000000000000000000000858585000000000000000000000000000000
      00000000000000000000000000000D0D0D001B1B1B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001C1C
      1C00000000000000000000000000000000000000000000000000000000000000
      0000000000000C0C0C00000000000000000000000000000000000A0A0A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B1B1B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8A8A8000202020000000000000000000000000000000000000000009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0C0C0000000000000000000000
      0000000000000000000000000000000000001B1B1B0000000000000000000303
      0300A7A7A7000000000000000000000000000000000000000000000000001E1E
      1E0000000000000000000000000000000000A4A4A40000000000000000000000
      00001515150000000000000000001A1A1A001B1B1B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001C1C
      1C00000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B0B0000000000000000000000000000000000090909000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B1B1B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001B1B1B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001818180000000000000000000000
      000000000000000000000000000000000000B5B5B5001B1B1B001B1B1B00AEAE
      AE0000000000000000000000000000000000000000000000000000000000D4D4
      D4000F0F0F0000000000000000000000000006060600BEBEBE00000000000000
      0000A8A8A8000D0D0D000E0E0E00ACACAC00AEAEAE0003030300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1B1B00B5B5
      B5000000000000000000000000000000000000000000DDDDDD00000000000000
      00000000000021212100000000000000000000000000000000001F1F1F000000
      00000000000000000000DEDEDE00000000000000000000000000000000000000
      0000B4B4B4001B1B1B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003030300AEAEAE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003838380000000000000000000000
      0000B4B4B4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000060606000000000000000000000000000D0D0D00D1D1D1000000
      00000000000000000000000000000000000000000000A9A9A900030303000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A6A600000000000000
      0000000000003F3F3F00000000000000000000000000000000003C3C3C000000
      00000000000000000000A6A6A600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020200A2A2A200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008E8E8E000000
      0000000000000000000000000000030303000404040000000000000000000000
      0000000000007E7E7E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006D6D6D0000000000000000000000
      0000787878000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A6A6A600000000000000000000000000000000001B1B1B000000
      0000000000000000000000000000000000000000000000000000A9A9A9000303
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000059595900000000000000
      0000000000007E7E7E00000000000000000000000000000000007B7B7B000000
      0000000000000000000059595900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020200A2A2A20000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E00000000000000
      0000000000000000000002020200A4A4A400ABABAB0004040400000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      000000000000000000000000000000000000A7A7A70000000000000000000000
      00001B1B1B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000003131
      310000000000000000000000000000000000000000000000000000000000A9A9
      A900030303000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040400000000000000
      000000000000C2C2C20000000000000000000000000000000000C0C0C0000000
      0000000000000000000004040400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0200A2A2A2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990000000000000000000000
      00000000000003030300AAAAAA000000000000000000AEAEAE00050505000000
      00000000000000000000000000008B8B8B000000000000000000000000000000
      000000000000000000000000000000000000000000000D0D0D00000000000000
      000000000000A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006A6A6A000000000000000000000000000000
      0000484848000000000000000000000000000000000000000000000000000000
      0000AEAEAE001C1C1C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005454540000000000000000000000
      00002B2B2B000000000000000000000000000000000000000000000000002A2A
      2A000000000000000000000000004F4F4F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001D1D1D00AEAE
      AE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001212120000000000000000000000
      000003030300AAAAAA0000000000000000000000000000000000B1B1B1000606
      06000000000000000000000000000F0F0F000000000000000000000000000000
      0000000000000000000000000000000000000000000066666600000000000000
      0000000000001B1B1B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E4E4E0000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000919191000000000000000000000000000000
      0000A0A0A0000000000000000000000000000000000000000000000000009D9D
      9D00000000000000000000000000000000009191910000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0200A4A4A400000000000000000000000000000000000000000000000000B6B6
      B600070707000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCDCDC00070707000000
      0000000000000000000052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000036363600000000000000
      0000000000000000000085858500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000092929200000000000000000000000000000000003A3A
      3A00000000000000000000000000000000000000000000000000000000000000
      0000383838000000000000000000000000000000000093939300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1C00B1B1
      B100000000000000000000000000000000000000000000000000000000000000
      0000BCBCBC002121210000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000707070000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E1E000000
      0000000000000000000000000000A8A8A8000000000000000000000000000000
      00000000000000000000000000000000000000000000848484007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052525200000000000000000000000000000000000B0B0B00DBDB
      DB00000000000000000000000000000000000000000000000000000000000000
      0000DBDBDB000B0B0B0000000000000000000000000000000000545454000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0085858500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002F2F
      2F00000000000000000000000000000000005555550000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4D4D4001010
      10000000000000000000000000001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000004747470000000000000000000404
      040059595900A6A6A60000000000000000000000000000000000A8A8A8005C5C
      5C00050505000000000000000000000000000000000005050500B5B5B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B5B50005050500000000000000000000000000000000000505
      05005D5D5D00A9A9A90000000000000000000000000000000000A6A6A6005858
      5800030303000000000000000000474747000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018181800000000000000000000000000000000001B1B1B00A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A0A0A0004242420048484800D7D7D7000000000000000000BEBE
      BE000606060000000000000000001A1A1A000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D0D0D00B3B3B300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B2B2B2000C0C0C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CFCFCF001919190000000000000000000000000000000000000000001A1A
      1A0076767600B3B3B30000000000000000000000000000000000B6B6B6007171
      71001D1D1D000000000000000000000000003838380000000000000000000000
      0000B0B0B000191919001B1B1B00B4B4B4000000000000000000000000000000
      0000000000000000000000000000000000006767670000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000034343400D6D6D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D5D5D5003333330000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000676767000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E2E2E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002323230000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A2A2A2002C2C2C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000272727009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B9B9B00262626000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002C2C2C00A2A2A200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007D7D7D000707070000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000005050500A5A5A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2C2
      C2007D7D7D003D3D3D00191919000202020006060600181818003E3E3E007575
      7500C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000757575003E3E3E00171717000606060002020200191919003D3D3D007D7D
      7D00C2C2C2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCDCDC006A6A6A000F0F0F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B0B0070707000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A9
      A9006F6F6F00383838001C1C1C000F0F0F00050505001E1E1E003A3A3A006B6B
      6B00B1B1B1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AEAEAE001B1B1B001C1C1C00AEAEAE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AAAAAA0003030300000000000000000002020200A3A3A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AAAAAA00030303000000000000000000000000000000000002020200A3A3
      A300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AAAA
      AA00030303000000000000000000000000000000000000000000000000000202
      0200A3A3A3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAAAAA000303
      0300000000000000000000000000000000000000000000000000000000000000
      000002020200A3A3A30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007E7E7E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AAAAAA00030303000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020200A3A3A300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E7E7E000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A7A7A70003030300000000000000
      0000000000000303030000000000000000000000000000000000030303000000
      0000000000000000000003030300A7A7A7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEAEAE001C1C
      1C001B1B1B00B1B1B10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007E7E
      7E00000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AAAAAA000303030000000000000000000000
      000002020200A2A2A20000000000000000000000000000000000A9A9A9000303
      030000000000000000000000000002020200A3A3A30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AAAAAA00030303000000
      00000000000004040400BBBBBB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AEAEAE00030303000000000000000000000000000303
      0300A7A7A700000000000000000000000000000000000000000000000000A7A7
      A7000303030000000000000000000000000003030300AEAEAE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAA0003030300000000000000
      000000000000000000000D0D0D00D1D1D1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007E7E7E00000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B0000000000000000000000000003030300A7A7
      A700000000000000000000000000000000000000000000000000000000000000
      0000A7A7A700030303000000000000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AAAAAA000303030000000000000000000000
      00000000000000000000000000001B1B1B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7E7E0000000000000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B00000000000000000003030300A7A7A7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A7A7A7000303030000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A7A7A700030303000000000000000000000000000000
      0000000000000000000000000000000000003131310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007E7E7E000000000000000000000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5B5B5001B1B1B001B1B1B00AEAEAE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AEAEAE001B1B1B001B1B1B00B5B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AAAAAA000303030000000000000000000000000002020200A2A2
      A200696969000000000000000000000000000000000048484800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007E7E7E00000000000000000000000000000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AEAEAE000303030000000000000000000000000003030300A7A7A7000000
      0000000000004949490000000000000000000000000000000000656565000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007E7E7E0000000000000000000000000000000000000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B1B1B0000000000000000000000000003030300A7A7A700000000000000
      0000000000000000000031313100000000000000000000000000000000008585
      8500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E7E7E000000000000000000000000000000000000000000000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B1B1B00000000000000000003030300A7A7A70000000000000000000000
      00000000000000000000000000001E1E1E000000000000000000000000000000
      0000A4A4A4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008787
      8700000000000000000000000000000000000000000000000000000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5B5001B1B1B001B1B1B00AEAEAE000000000000000000000000000000
      0000000000000000000000000000D4D4D4000F0F0F0000000000000000000000
      000006060600BEBEBE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000878787000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00006060600000000000000
      0000000000000D0D0D00D1D1D100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007676760000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6A6A600000000000000
      000000000000000000001B1B1B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000767676000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007E7E
      7E00000000000000000000000000000000000000000000000000000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000313131000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007676
      7600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E7E7E000000000000000000000000000000000000000000000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006A6A
      6A00000000000000000000000000000000004848480000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007E7E7E0000000000000000000000000000000000000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5B5B5001B1B1B001C1C1C00AEAEAE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AEAEAE001B1B1B001C1C1C00B5B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E4E4E000000000000000000000000000000000063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007E7E7E00000000000000000000000000000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B00000000000000000003030300A7A7A7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A7A7A7000303030000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003636360000000000000000000000000000000000858585000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007E7E7E000000000000000000000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B0000000000000000000000000003030300A7A7
      A700000000000000000000000000000000000000000000000000000000000000
      0000A7A7A700030303000000000000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001E1E1E0000000000000000000000000000000000A8A8
      A800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E7E7E0000000000000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AEAEAE00030303000000000000000000000000000303
      0300A7A7A700000000000000000000000000000000000000000000000000A7A7
      A7000303030000000000000000000000000003030300AEAEAE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D4D4D400101010000000000000000000000000001C1C
      1C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007E7E7E00000000000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A9A9A9000303030000000000000000000000
      000002020200A3A3A30000000000000000000000000000000000AAAAAA000303
      030000000000000000000000000002020200A2A2A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BEBEBE000606060000000000000000001A1A
      1A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7E000000
      0000000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A7A7A70003030300000000000000
      0000000000000303030000000000000000000000000000000000030303000000
      0000000000000000000003030300A7A7A7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0B0B000191919001B1B1B00B4B4
      B400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007D7D
      7D00000000000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A9A900030303000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020200A2A2A200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007D7D7D000101010000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A9A9A9000303
      0300000000000000000000000000000000000000000000000000000000000000
      000002020200A2A2A20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A9
      A900030303000000000000000000000000000000000000000000000000000202
      0200A2A2A2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9A9A900030303000000000000000000000000000000000002020200A2A2
      A200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A9A9A90003030300000000000000000002020200A2A2A2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AEAEAE001B1B1B001B1B1B00AEAEAE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5B5B5001C1C1C001C1C1C00B6B6B600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B0000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AEAEAE001B1B1B001C1C1C00B5B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B5001B1B1B001C1C1C00AEAE
      AE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AEAEAE001B1B1B001C1C1C00B5B5B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A7A7A7000303030000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B0000000000000000000303
      0300A7A7A7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A7A7
      A7000303030000000000000000001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A7A7A700030303000000000000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B0000000000000000000000
      000003030300A7A7A70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7A7A7000303
      03000000000000000000000000001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A7A7
      A7000303030000000000000000000000000003030300AEAEAE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAE0003030300000000000000
      00000000000003030300A7A7A700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7A7A700030303000000
      0000000000000000000003030300AEAEAE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AEAEAE001B1B1B001C1C1C00AEAEAE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAAAAA000303
      030000000000000000000000000002020200A2A2A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A9A900030303000000
      0000000000000000000002020200A3A3A3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAA0003030300000000000000
      00000000000002020200A2A2A200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AAAAAA0003030300000000000000000002020200A3A3A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AAAAAA00030303000000
      0000000000000000000002020200A2A2A2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A9A9A9000303
      030000000000000000000000000002020200A3A3A30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AAAAAA000303030000000000000000000000
      000002020200A2A2A20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AAAAAA00030303000000000000000000000000000000000002020200A3A3
      A300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAA0003030300000000000000
      00000000000002020200A2A2A200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A9
      A9000303030000000000000000000000000002020200A3A3A300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AAAAAA00030303000000000000000000000000000202
      0200A2A2A2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AAAA
      AA00030303000000000000000000000000000000000000000000000000000202
      0200A3A3A3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AAAAAA000303030000000000000000000000
      000002020200A2A2A20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9A9A9000303030000000000000000000000000002020200A3A3A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AAAAAA000303030000000000000000000000000002020200A2A2
      A200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAAAAA000303
      0300000000000000000000000000000000000000000000000000000000000000
      000002020200A3A3A30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AAAAAA00030303000000000000000000000000000202
      0200A2A2A2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A9A9A9000303030000000000000000000000000002020200A3A3
      A300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AAAAAA000303030000000000000000000000000002020200A2A2A2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AAAAAA00030303000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020200A3A3A300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AAAAAA000303030000000000000000000000000002020200A2A2
      A200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A9A9A900030303000000000000000000000000000202
      0200A3A3A3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AAAA
      AA000303030000000000000000000000000002020200A2A2A200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAE0003030300000000000000
      0000000000000303030000000000000000000000000000000000030303000000
      0000000000000000000003030300AEAEAE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AAAAAA000303030000000000000000000000000002020200A2A2A2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A9A9A9000303030000000000000000000000
      000002020200A3A3A30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAAAAA000303
      030000000000000000000000000002020200A2A2A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B0000000000000000000000
      000003030300A7A7A70000000000000000000000000000000000A7A7A7000303
      03000000000000000000000000001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AAAA
      AA000303030000000000000000000000000002020200A2A2A200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A9A9A90003030300000000000000
      00000000000002020200A3A3A300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AAAAAA00030303000000
      0000000000000000000002020200A2A2A2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B0000000000000000000303
      0300A7A7A700000000000000000000000000000000000000000000000000A7A7
      A7000303030000000000000000001B1B1B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEAEAE000303
      030000000000000000000000000003030300A7A7A70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7A7A700030303000000
      0000000000000000000003030300AEAEAE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAE0003030300000000000000
      00000000000003030300A7A7A700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B5001B1B1B001B1B1B00AEAE
      AE00000000000000000000000000000000000000000000000000000000000000
      0000AEAEAE001B1B1B001B1B1B00B5B5B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1B1B000000
      0000000000000000000003030300A7A7A7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7A7A7000303
      03000000000000000000000000001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B0000000000000000000000
      000003030300A7A7A70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1B1B000000
      0000000000000000000003030300A7A7A7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7A7A7000303
      03000000000000000000000000001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B0000000000000000000000
      000003030300A7A7A70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEAEAE000303
      030000000000000000000000000003030300A7A7A70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7A7A700030303000000
      0000000000000000000003030300AEAEAE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAE0003030300000000000000
      00000000000003030300A7A7A700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A9
      A9000303030000000000000000000000000002020200A3A3A300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAA0003030300000000000000
      00000000000002020200A2A2A200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A9A900030303000000
      0000000000000000000002020200A3A3A3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9A9A9000303030000000000000000000000000002020200A3A3A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AAAAAA000303030000000000000000000000
      000002020200A2A2A20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A9A9A9000303
      030000000000000000000000000002020200A3A3A30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A9A9A9000303030000000000000000000000000002020200A3A3
      A300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AAAAAA00030303000000000000000000000000000202
      0200A2A2A2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A9
      A9000303030000000000000000000000000002020200A3A3A300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A9A9A900030303000000000000000000000000000202
      0200A3A3A3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AAAAAA000303030000000000000000000000000002020200A2A2
      A200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9A9A9000303030000000000000000000000000002020200A3A3A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A9A9A9000303030000000000000000000000
      000002020200A3A3A30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AAAAAA000303030000000000000000000000000002020200A2A2A2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A9A9A9000303030000000000000000000000000002020200A3A3
      A300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A9A9A90003030300000000000000
      00000000000002020200A3A3A300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AAAA
      AA000303030000000000000000000000000002020200A2A2A200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A9A9A900030303000000000000000000000000000202
      0200A3A3A3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A9A900030303000000
      0000000000000000000002020200A3A3A3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AAAAAA000303
      030000000000000000000000000002020200A2A2A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A9A9A9000303030000000000000000000000
      000002020200A3A3A30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A9A9A9000303
      030000000000000000000000000002020200A3A3A30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AAAAAA00030303000000
      0000000000000000000002020200A2A2A2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A9A9A90003030300000000000000
      00000000000002020200A3A3A300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A7A7
      A7000303030000000000000000000000000003030300AEAEAE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAE0003030300000000000000
      00000000000003030300A7A7A700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7A7A700030303000000
      0000000000000000000003030300AEAEAE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A7A7A700030303000000000000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B0000000000000000000000
      000003030300A7A7A70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7A7A7000303
      03000000000000000000000000001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A7A7A7000303030000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B0000000000000000000303
      0300A7A7A7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A7A7
      A7000303030000000000000000001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ACACAC001A1A1A001E1E1E00B6B6B600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B5001B1B1B001B1B1B00AEAE
      AE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AEAEAE001B1B1B001B1B1B00B5B5B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B0000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B0000000000000000001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B4B4B4001B1B1B001B1B1B00B5B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B4B4B4001B1B1B001B1B1B00B5B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007E7E7E007E7E7E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008787870000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00000000000000000000000000000000000000
      0000000000004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00000000000000000000000000000000004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122000000000000000000000000000000000000000000000000004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004CB122004CB1
      22004CB12200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004CB1
      22004CB122004CB12200000000000000000000000000000000004CB122004CB1
      22004CB12200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004CB1
      22004CB122004CB1220000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB1220000000000000000000000000000000000000000004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      220000000000000000000000000000000000000000004CB122004CB122004CB1
      2200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004CB122004CB122000000000000000000000000004CB122004CB122004CB1
      2200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004CB122004CB1220000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      2200000000000000000000000000000000000000000000000000000000000000
      0000000000004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB12200000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004CB122004CB1
      22004CB12200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004CB1
      22004CB122004CB122000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB122004CB1
      2200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004CB122004CB122000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000007070700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008080800000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000020202000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022222200000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000055555500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000057575700000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      00000000000000000000A6A6A600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A8A8A800000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000202020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E1E1E0000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED000000000000000000000000000000
      0000000000000000000000000000ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AFAFAF0000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000006E6E6E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000727272000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000070707000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000072727200000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AFAFAF001515
      1500000000000000000000000000000000000000000000000000000000000000
      000015151500B0B0B00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003535
      3500000000000000000000000000000000000000000000000000000000000000
      0000363636000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001111
      1100000000000000000000000000000000000000000000000000000000000000
      0000121212000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C8C8C80000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB1220000000000000000004CB122004CB122004CB1
      2200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004CB122004CB122000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A2A2A2000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A4A40000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB122000000000000000000000000004CB122004CB1
      22004CB12200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004CB1
      22004CB122004CB122000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007D7D7D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      2200000000000000000000000000000000000000000000000000000000000000
      0000000000004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB12200000000000000000000000000000000004CB122004CB12200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF004CB122004CB12200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000595959000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005B5B5B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004CB122004CB122004CB1
      2200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004CB122004CB1220000000000000000000000000000000000000000000000
      00004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB1220000000000000000000000000000000000000000004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      220000000000000000000000000000000000000000004CB122004CB122004CB1
      2200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004CB122004CB1220000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B5001C1C1C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1C00B6B6B6000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004CB122004CB1
      22004CB12200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004CB1
      22004CB122004CB1220000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004CB122004CB1
      22004CB12200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004CB1
      22004CB122004CB1220000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB1220000000000000000000000000000000000241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00000000000000000000000000000000004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001C1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122000000
      00000000000000000000000000000000000000000000241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00241CED00241CED00241CED00241CED00241C
      ED00241CED00241CED00241CED00000000000000000000000000000000000000
      0000000000004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122004CB1
      22004CB122004CB122004CB122004CB122004CB122004CB122004CB122000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4B4B4001B1B1B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B00B5B5B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200100000100010000000000001200000000000000000000
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
      00000000000000000000000000000000FFFC3FFFFFFFFFFF0000000000000000
      FFFC3FFFFFFFFFFF0000000000000000FFFC3FFFFFF18FFF0000000000000000
      FFFC3FFFFFF00FFF0000000000000000FFF00FFFFE00007F0000000000000000
      FFC003FFFE00007F0000000000000000FF0000FFFE00007F0000000000000000
      FE00007FF003C00F0000000000000000FC01803FF01FF80F0000000000000000
      FC0FF03FF03FF00F0000000000000000F81FF81FF07FF00F0000000000000000
      F83FFC1FF0FFE10F0000000000000000F07C3E0FC0FF87030000000000000000
      F0701E0FC0FF0F03000000000000000000700E00C1FF0F830000000000000000
      00F00F00E1FE1F87000000000000000000F00F00E1F87F870000000000000000
      00700E00C1F0FF830000000000000000F0781E0FC0F0FF030000000000000000
      F07C1E0FC0E1FF030000000000000000F83FFC1FF087FF0F0000000000000000
      F81FF81FF00FFE0F0000000000000000FC0FF03FF00FFC0F0000000000000000
      FC01803FF01FF80F0000000000000000FE00007FF003C00F0000000000000000
      FF0000FFFE00007F0000000000000000FFC003FFFE00007F0000000000000000
      FFF00FFFFE00007F0000000000000000FFFC3FFFFFF00FFF0000000000000000
      FFFC3FFFFFF18FFF0000000000000000FFFC3FFFFFFFFFFF0000000000000000
      FFFC3FFFFFFFFFFF00000000000000000000000000000000FFFFFFFFC0000003
      0000000000000000FFFFFFFFC0000003000000000000000000000003C0000003
      000000000000000000000003C0000003000000000000000000000003C01FF803
      000000000000000000000001C03FFC03000000000000000000000001C0000003
      00000000000000000C000001C000000300000000000000000C000001C0000003
      00000000000000000C000001C000000300000000000000000C000000C3FFFFC3
      00000000000000000E000000E1FFFF8700000000000000000E000000E1FFFF87
      00000000000000000E000000F0FFFF0F00000000000000000E000000F0FE7F0F
      00000000000000000F000000F8FC3F1F00000000000000000FFFFFFFFFF81FFF
      00000000000000000FFFFFFFFFF00FFF00000000000000000FFFFFFFFFE007FF
      00000000000000000FFFFFFFFFC003FF00000000000000000000000FFF8001FF
      00000000000000000000000FFF0000FF00000000000000000000000FFFFC3FFF
      00000000000000000000000FFFFC3FFF0000000000000000000FFFFFFFFC3FFF
      0000000000000000000FFFFFFFFC3FFF0000000000000000000FFFFFFFFC3FFF
      0000000000000000000FFFFFFFFC3FFF0000000000000000000FFFFFFFFC3FFF
      0000000000000000000FFFFFFFFC3FFF0000000000000000FFFFFFFFFFFC3FFF
      0000000000000000FFFFFFFFFFFC3FFF0000000000000000FFFFFFFFFFFFFFFF
      0000000000000000FFFFFFFFFFFFFFFF0000000000000000FCFFFFFFC03FFFFF
      0000000000000000C48FFFFFC03FFFFF0000000000000000C00FFFFFC03C0003
      0000000000000000E01FFFFFC03C000300000000000000000303FFFFC03C0003
      00000000000000000783FFFFC03C000300000000000000008FC7FFFFC03FFFFF
      00000000000000008FC7FFFFC03FFFFF00000000000000000783E1FFFFFFFFFF
      00000000000000000302619FFFFFFFFF0000000000000000E0184087C03FFFFF
      0000000000000000C0080007C03FFFFF0000000000000000C48C000FC03C0003
      0000000000000000FCFC000FC03C00030000000000000000FFE00C01C03C0003
      0000000000000000FFC03F00C03C00030000000000000000FFC07F80C03FFFFF
      0000000000000000FFC07F80C03FFFFF0000000000000000FFF0FFC3FFFFFFFF
      0000000000000000FFF0FFC3FFFFFFFF0000000000000000FFC07F80C03FFFFF
      0000000000000000FFC07F80C03FFFFF0000000000000000FFC03F00C03C0003
      0000000000000000FFE00C01C03C00030000000000000000FFFC000FC03C0003
      0000000000000000FFFC000FC03C00030000000000000000FFF80007C03FFFFF
      0000000000000000FFF84087C03FFFFF0000000000000000FFFE619FFFFFFFFF
      0000000000000000FFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
      F800001FFFFFFFFF0000000000000000E0000007FFFFFFFF0000000000000000
      C0000003FFFFFFFF000000000000000080000003C3FFFF830000000000000000
      80000001C3FFFF03000000000000000080000001C3FFFC030000000000000000
      80000001C3FFF003000000000000000080000001C3FFC0030000000000000000
      80000001C3FF8003000000000000000080000001C3FE00030000000000000000
      80000001C3F80003000000000000000080000001C3E000030000000000000000
      80000001C3C00003000000000000000080000001C38000030000000000000000
      80000001C3000003000000000000000080000001C30000030000000000000000
      80000001C3800003000000000000000080000001C3C000030000000000000000
      80000001C3E00003000000000000000080000001C3F800030000000000000000
      80000001C3FE0003000000000000000080000001C3FF80030000000000000000
      80000001C3FFC003000000000000000080000001C3FFF0030000000000000000
      80000001C3FFFC03000000000000000080000001C3FFFF030000000000000000
      80000003C3FFFF830000000000000000C0000003FFFFFFFF0000000000000000
      E0000007FFFFFFFF0000000000000000F800001FFFFFFFFF0000000000000000
      FFFFFFFFFFFFFFFF0000000000000000FFE007FFFFFFFFFFFFFFFFFFFFFFFFFF
      FF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFE00007FFFE007FFFFE007FFFFFFFFFF
      F800003FFF8001FFFF8001FFFFFFFFFFF001800FFF0000FFFE0000FFFFFFFFFF
      E01FF80FFF00003FFC0000FFFFFFFFFFE07FFE07FF01801FF80180FFFFFFFFFF
      C0FFFF03FF8FF80FF01FF1FFFFFFFFFFC1FC3F83FFFFFC0FF03FFFFFFF0FF0FF
      83F81FC1FFFFFE07E07FFFFFFF07E0FF83F00FC1F0FFFF07E0FFFF0FFF03C0FF
      07E00FE0E0FFFF83C1FFFF07FF0180FF07C007E0C0FFFF83C1FFFF03FF8001FF
      078003E080FFFF83C1FFFF01FFC003FF0F0181E000000F83C1F00000FFE007FF
      0F03C0F000000FC3C3F00000FFF00FFF0F07E07000000FC3C3F00000FFF00FFF
      0F0FE03000000F83C1F00000FFE007FF07FFF01F80FFFF83C1FFFF01FFC003FF
      07FFF81FC0FFFF83C1FFFF03FF8001FF07FFFC0FE0FFFF83C1FFFF07FF0180FF
      83FFFE07F0FFFF07E0FFFF0FFF03C0FF83FFFF03FFFFFE07E07FFFFFFF07E0FF
      81FFFF81FFFFFC0FF03FFFFFFF0FF0FFC0FFFFC0FF9FF80FF01FF9FFFFFFFFFF
      E07FFFC0FF03C01FF803C0FFFFFFFFFFF01FF860FF00003FFC0000FFFFFFFFFF
      F003C070FF00007FFE0000FFFFFFFFFFFC00007FFF8001FFFF8001FFFFFFFFFF
      FE00007FFFE007FFFFE007FFFFFFFFFFFF0001FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFFFFFFFFFFFDFFFFFFFFFFBFF
      FF8001FFFFFFFFFFFFCFFFFFFFFFF3FFFF0000FFFFC3FFFFFFC7FFFFFFFFE3FF
      FE00007FFF81FFFFFFC3FFFFFFFFC3FFFC04203FFF00FFFFFFC1FFFFFFFF83FF
      FC0C303FFE00FFFFFFC0FFFFFFFF03FFFC1C383FFC007FFFFFC07FFFFFFE03FF
      FC3C3C3FF8003FFFFFC03FFFFFFC03FFFFFC3FFFF0181FFFFFC01FFFFFF803FF
      FFFC3FFFF03C0FFFFFC00FFFFFF003FFFFFC3FFFF07E07FFFFC007FFFFE003FF
      FFFC3FFFF0FE03FFFFC003FFFFC003FFFFFC3FFFFFFF01FFFFC003FFFFC003FF
      FFFC3FFFFFFF81FFFFC007FFFFE003FFFFFC3FFFFFFFC0FFFFC00FFFFFF003FF
      FFFC3FFFFFFFE07FFFC01FFFFFF803FFFC3C3C3FFFFFF03FFFC03FFFFFFC03FF
      FC1C383FFFFFF81FFFC07FFFFFFE03FFFC0C303FFFFFFC0FFFC0FFFFFFFF03FF
      FC04203FFFFFFC0FFFC1FFFFFFFF83FFFE00007FFFFFFE0FFFC3FFFFFFFFC3FF
      FF0000FFFFFFFF0FFFC7FFFFFFFFE3FFFF8001FFFFFFFFFFFFCFFFFFFFFFF3FF
      FFC003FFFFFFFFFFFFDFFFFFFFFFFBFFFFE007FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFC0000003FC3FFFFFFFFFFFFFFFFFFFFF
      C0000003FC3FFFFFFFFFFFFFFFFFFFFFC0000003FC3FFC3FFF0FFFFFFFFFF0FF
      C0000003FC3FF83FFF07FFFFFFFFE0FFFFFFFFFFFC3FF03FFF03FFFFFFFFC0FF
      FFFFFFFFFC3FE03FFF01FFFFFFFF80FFFFFC3FFFFC3FC07FFF80FFFFFFFF01FF
      FFF81FFFFC3F80FFFFC07FFFFFFE03FFFFF00FFFFC3F01FFFFE03FFFFFFC07FF
      FFE007FFFC3E03FFFFF01FFFFFF80FFFFFC003FFFC3C07FFFFF80FFFFFF01FFF
      FF8001FFFC380FFFFFFC07FFFFE03FFFFF0000FFFC301FFFFFFE03FFFFC07FFF
      FF0000FFFC203FFFFFFF01FFFF80FFFFFF0420FFFC007FFFFFFF80FFFF01FFFF
      FF0C30FFFC00FFFFFFFFC0FFFF03FFFFFFFC3FFFFC00FFFFFFFFC0FFFF03FFFF
      FFFC3FFFFC007FFFFFFF80FFFF01FFFFFFFC3FFFFC203FFFFFFF01FFFF80FFFF
      FFFC3FFFFC301FFFFFFE03FFFFC07FFFFFFC3FFFFC380FFFFFFC07FFFFE03FFF
      FFFC3FFFFC3C07FFFFF80FFFFFF01FFFFFFC3FFFFC3E03FFFFF01FFFFFF80FFF
      FFFC3FFFFC3F01FFFFE03FFFFFFC07FFFFFC3FFFFC3F80FFFFC07FFFFFFE03FF
      FFFC3FFFFC3FC07FFF80FFFFFFFF01FFFFFC3FFFFC3FE03FFF01FFFFFFFF80FF
      FFFC3FFFFC3FF03FFF03FFFFFFFFC0FFFFFC3FFFFC3FF83FFF07FFFFFFFFE0FF
      FFFC3FFFFC3FFC3FFF0FFFFFFFFFF0FFFFFC3FFFFC3FFFFFFFFFFFFFFFFFFFFF
      FFFC3FFFFC3FFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFC3FFF80000001F800001FF800001FFFFC3FFF80000001E0000007E0000007
      FFFC3FFFFFFFFFFFC0000003C0000003FFFC3FFFF000000F8000000380000003
      FFFC3FFFE00000078000000180000001FFFC3FFFC00000038000000180000001
      FFFC3FFF800000038000000180000001FFFC3FFF800000018000000180000001
      FFFC3FFF800000018000000180000001FFFFFFFF800000018000000180000001
      FFFFFFFF800000018000000180000001FC00003F800000018000000180000001
      FC00003F800000018000000180000001FC00003F800000018000000180000001
      FC00003F800000018000000180000001FE00007F800000018000000100000000
      FE00007F800000018000000180000001FF0000FF800000018000000180000001
      FF8001FF800000018000000180000001FFC003FF800000018000000180000001
      FFE007FF800000018000000180000001FFE007FF800000018000000180000001
      FFE007FF800000018000000180000001FFC003FF800000018000000380000001
      FFC003FF80000001C000000380000001FFC003FF80000001E000000780000001
      FFC003FF80000003F000000F80000003FF0000FFC0000003FFFFFFFFC0000003
      FF0000FFE000000780000001E0000007FF0000FFF800001F80000001F800001F
      FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dlgSave: TSaveDialog
    DefaultExt = '.SVG'
    Filter = 'SVG font|*.svg|Any file|*.*'
    InitialDir = '.'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 152
    Top = 96
  end
  object SynIniSyn1: TSynIniSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    Left = 856
    Top = 148
  end
  object alMain: TActionList
    Images = ilMain
    Left = 368
    Top = 112
    object aApply: TAction
      Category = 'General'
      Caption = 'Apply'
      Hint = 'Save glyph'
      ImageIndex = 9
      ShortCut = 16397
      OnExecute = aApplyExecute
      OnUpdate = aApplyUpdate
    end
    object aReset: TAction
      Category = 'General'
      Caption = 'Reset'
      Hint = 'Reset glyph'
      ImageIndex = 15
      ShortCut = 16474
      OnExecute = aResetExecute
      OnUpdate = aResetUpdate
    end
    object aGoToZero: TAction
      Category = 'General'
      Caption = '0:0'
      Hint = 'Scroll to zero position'
      ImageIndex = 28
      OnExecute = aGoToZeroExecute
    end
    object aSetBase: TAction
      Category = 'Align'
      Caption = 'Set'
      Hint = 'Pin base glyph to align others'
      ImageIndex = 0
      OnExecute = aSetBaseExecute
      OnUpdate = aSetBaseUpdate
    end
    object aAlignTop: TAction
      Category = 'Align'
      Caption = 'Top'
      Hint = 'Align glyph TOP'
      ImageIndex = 18
      OnExecute = aAlignTopExecute
      OnUpdate = aAlignTopUpdate
    end
    object aAlignDown: TAction
      Category = 'Align'
      Caption = 'Bottom'
      Hint = 'Align glyph BOTTOM'
      ImageIndex = 19
      OnExecute = aAlignDownExecute
      OnUpdate = aAlignTopUpdate
    end
    object aAlignMidle: TAction
      Category = 'Align'
      Caption = 'Midle'
      Hint = 'Align glyph MIDLE'
      ImageIndex = 21
      OnExecute = aAlignMidleExecute
      OnUpdate = aAlignTopUpdate
    end
    object aAlignHeight: TAction
      Category = 'Align'
      Caption = 'Height'
      Hint = 'Resize to base glyph height'
      ImageIndex = 8
      OnExecute = aAlignHeightExecute
      OnUpdate = aAlignTopUpdate
    end
    object aLeftEdge: TAction
      Category = 'Move'
      Caption = 'Left'
      Hint = 'Set glyph left edge to ZERO'
      ImageIndex = 17
      OnExecute = aLeftEdgeExecute
      OnUpdate = aRightEdgeUpdate
    end
    object aMoveLeft: TAction
      Category = 'Move'
      Caption = '<Move'
      Hint = 'Move glyph LEFT'
      ImageIndex = 13
      OnExecute = aMoveLeftExecute
      OnUpdate = aRightEdgeUpdate
    end
    object aMoveRight: TAction
      Category = 'Move'
      Caption = 'Move>'
      Hint = 'Move glyph RIGHT'
      ImageIndex = 14
      OnExecute = aMoveRightExecute
      OnUpdate = aRightEdgeUpdate
    end
    object aRightEdge: TAction
      Category = 'Move'
      Caption = 'Right'
      Hint = 'Set WIDTH to glyph right edge'
      ImageIndex = 5
      OnExecute = aRightEdgeExecute
      OnUpdate = aRightEdgeUpdate
    end
    object aEdgeLeft: TAction
      Category = 'Move'
      Caption = '< |'
      Hint = 'Decrease width (right edge)'
      ImageIndex = 7
      OnExecute = aEdgeLeftExecute
      OnUpdate = aRightEdgeUpdate
    end
    object aEdgeRight: TAction
      Category = 'Move'
      Caption = '| >'
      Hint = 'Increase width (right edge)'
      ImageIndex = 6
      OnExecute = aEdgeRightExecute
      OnUpdate = aRightEdgeUpdate
    end
    object aKerningRows: TAction
      Category = 'Kerning'
      Caption = '+Rows'
      Hint = 'Add (I) glyph kerning pairs'
      ImageIndex = 23
      OnExecute = aKerningRowsExecute
      OnUpdate = aKerningRowsUpdate
    end
    object aKerningCols: TAction
      Category = 'Kerning'
      Caption = '+Cols'
      Hint = 'Add (II) glyph kerning pairs'
      ImageIndex = 24
      OnExecute = aKerningColsExecute
      OnUpdate = aKerningRowsUpdate
    end
    object aKerningCalc: TAction
      Category = 'Kerning'
      Caption = 'Calc'
      Hint = 'Recalc kerning pairs'
      ImageIndex = 22
      OnExecute = aKerningCalcExecute
      OnUpdate = aKerningCalcUpdate
    end
    object aKerningApply: TAction
      Category = 'Kerning'
      Caption = 'Apply'
      Hint = 'Apply kerning pairs to font'
      ImageIndex = 12
      OnExecute = aKerningApplyExecute
      OnUpdate = aKerningCalcUpdate
    end
    object aKerningClear: TAction
      Category = 'Kerning'
      Caption = 'Clear'
      Hint = 'Clear kerning pairs spreadsheet '
      ImageIndex = 15
      OnExecute = aKerningClearExecute
    end
    object aFontOpen: TAction
      Category = 'General'
      Caption = 'Open'
      ImageIndex = 26
      OnExecute = aFontOpenExecute
    end
    object aFontSave: TAction
      Category = 'General'
      Caption = 'Save'
      ImageIndex = 27
      OnExecute = aFontSaveExecute
      OnUpdate = aFontSaveUpdate
    end
    object aFontConfig: TAction
      Category = 'General'
      Caption = 'Font'
      ImageIndex = 25
      OnExecute = aFontConfigExecute
      OnUpdate = aFontSaveUpdate
    end
    object aStopCalc: TAction
      Category = 'Kerning'
      Caption = 'Stop'
      Enabled = False
      Hint = 'Break calc processing'
      ImageIndex = 29
      OnExecute = aStopCalcExecute
    end
    object aMoveUp: TAction
      Category = 'Move'
      Caption = 'Up'
      Hint = 'Move Up'
      ImageIndex = 31
      OnExecute = aMoveUpExecute
      OnUpdate = aRightEdgeUpdate
    end
    object aMoveDown: TAction
      Category = 'Move'
      Caption = 'Down'
      Hint = 'Move Down'
      ImageIndex = 30
      OnExecute = aMoveDownExecute
      OnUpdate = aRightEdgeUpdate
    end
  end
end
