object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 562
  ClientWidth = 1194
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Scbx_GABARITO: TScrollBox
    Left = 0
    Top = 0
    Width = 1194
    Height = 562
    HorzScrollBar.Position = 1867
    HorzScrollBar.Range = 4920
    Align = alClient
    AutoScroll = False
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Color = 4344918
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      1194
      545)
    object La_nSorteioRank: TLabel
      Left = -770
      Top = 8
      Width = 329
      Height = 23
      Align = alCustom
      Caption = 'Total de sorteios na apura'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 84
    end
    object Label3: TLabel
      Left = -1257
      Top = 8
      Width = 186
      Height = 18
      Caption = '9 N'#218'MEROS DE BASE'
      Color = 2306625
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label7: TLabel
      Left = -1863
      Top = 8
      Width = 202
      Height = 18
      Caption = '16 N'#218'MEROS  DE BASE'
      Color = 2306625
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label14: TLabel
      Left = 58
      Top = 9
      Width = 890
      Height = 18
      Caption = 
        'ESTAT'#205'STICA PARA OCORR'#202'NCIA DE 7 N. SORTEADOS DAS LINHAS DE 16 E' +
        'M TODOS OS SORTEIOS '
      Color = 2306625
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label15: TLabel
      Left = 1632
      Top = 13
      Width = 890
      Height = 18
      Caption = 
        'ESTAT'#205'STICA PARA OCORR'#202'NCIA DE 8 N. SORTEADOS DAS LINHAS DE 09 E' +
        'M TODOS OS SORTEIOS '
      Color = 2306625
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label54: TLabel
      Left = -887
      Top = 1
      Width = 99
      Height = 36
      Caption = 'REDEFINIR V ou F'
      Color = 2306625
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Visible = False
      WordWrap = True
    end
    object Label134: TLabel
      Left = 16483
      Top = 25
      Width = 117
      Height = 36
      Caption = 'Linhas 1 a 5 - Base4 - AC4'
      Color = 2306625
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      WordWrap = True
    end
    object Label135: TLabel
      Left = 16319
      Top = 23
      Width = 117
      Height = 36
      Caption = 'Linhas 1 a 5 - Base4 - AC3'
      Color = 2306625
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      WordWrap = True
    end
    object Label136: TLabel
      Left = 16198
      Top = 23
      Width = 112
      Height = 36
      Caption = 'Linhas 1 a 5 - Base4 - AC2'
      Color = 2306625
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      WordWrap = True
    end
    object Label138: TLabel
      Left = 16711
      Top = 5
      Width = 89
      Height = 54
      Caption = 'Linhas 1 a 5 - Base5- AC1'
      Color = 2306625
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      WordWrap = True
    end
    object Label139: TLabel
      Left = 16809
      Top = 23
      Width = 112
      Height = 36
      Caption = 'Linhas 1 a 5 - Base5 - AC2'
      Color = 2306625
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      WordWrap = True
    end
    object Label_qtdSorteios: TLabel
      Left = -433
      Top = 9
      Width = 77
      Height = 23
      Align = alCustom
      Caption = '88.888'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14150655
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 421
    end
    object Stgr_Base09: TStringGrid
      Left = -1260
      Top = 39
      Width = 370
      Height = 1583
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 8229658
      ColCount = 11
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = 11048845
      FixedCols = 2
      RowCount = 26
      Options = [goFixedHorzLine, goHorzLine, goRangeSelect]
      TabOrder = 0
      ColWidths = (
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30)
      RowHeights = (
        23
        24
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23)
    end
    object Stgr_Base16: TStringGrid
      Left = -1863
      Top = 39
      Width = 595
      Height = 1583
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      BorderStyle = bsNone
      Color = 10193920
      ColCount = 18
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = 11048845
      FixedCols = 2
      RowCount = 26
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      TabOrder = 1
      ColWidths = (
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30)
      RowHeights = (
        23
        24
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23)
    end
    object Stgr_Estatisticas: TStringGrid
      Left = -112
      Top = 34
      Width = 715
      Height = 1583
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 10193920
      ColCount = 6
      DefaultColWidth = 120
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clGray
      RowCount = 26
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      TabOrder = 2
      RowHeights = (
        23
        24
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23)
    end
    object Stgr_Sorteios: TStringGrid
      Left = -770
      Top = 34
      Width = 645
      Height = 1583
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      BorderStyle = bsNone
      Color = 10193920
      ColCount = 19
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = 11048845
      RowCount = 26
      Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect]
      TabOrder = 3
      ColWidths = (
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30
        30)
      RowHeights = (
        23
        24
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23)
    end
    object Stgr_EstatisticasOcorrencias: TStringGrid
      Left = 606
      Top = 33
      Width = 535
      Height = 1583
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 9278218
      ColCount = 1
      DefaultColWidth = 490
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clGray
      FixedCols = 0
      RowCount = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      ParentFont = False
      TabOrder = 4
      RowHeights = (
        23
        24
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23)
    end
    object Stgr_EstatisticasSorteiosAtrasados: TStringGrid
      Left = 1142
      Top = 33
      Width = 264
      Height = 1583
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 9278218
      ColCount = 1
      DefaultColWidth = 225
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clGray
      FixedCols = 0
      RowCount = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      ParentFont = False
      TabOrder = 5
      RowHeights = (
        23
        24
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23)
    end
    object Stgr_EstatisticasOcorrencias13: TStringGrid
      Left = 2242
      Top = 40
      Width = 535
      Height = 1583
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 9278218
      ColCount = 1
      DefaultColWidth = 490
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clGray
      FixedCols = 0
      RowCount = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      ParentFont = False
      TabOrder = 6
      RowHeights = (
        23
        24
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23)
    end
    object Stgr_EstatisticasSorteiosAtrasados13: TStringGrid
      Left = 2779
      Top = 40
      Width = 252
      Height = 1583
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 9278218
      ColCount = 1
      DefaultColWidth = 225
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clGray
      FixedCols = 0
      RowCount = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      ParentFont = False
      TabOrder = 7
      RowHeights = (
        23
        24
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23)
    end
    object Stgr_Estatisticas13: TStringGrid
      Left = 1491
      Top = 41
      Width = 752
      Height = 1583
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 9278218
      ColCount = 6
      DefaultColWidth = 120
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = clGray
      RowCount = 26
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      TabOrder = 8
      RowHeights = (
        23
        24
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23)
    end
    object Stgr_Base17VF: TStringGrid
      Left = -887
      Top = 39
      Width = 105
      Height = 1583
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      BorderStyle = bsNone
      Color = 10193920
      ColCount = 2
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = 11048845
      RowCount = 26
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goEditing]
      TabOrder = 9
      Visible = False
      ColWidths = (
        30
        30)
      RowHeights = (
        23
        24
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23
        23)
    end
    object Stgr_Todos_Numeros: TStringGrid
      Left = -1692
      Top = -496
      Width = 718
      Height = 97
      Anchors = [akLeft, akBottom]
      Color = 8421440
      ColCount = 26
      DefaultColWidth = 26
      DefaultRowHeight = 20
      DrawingStyle = gdsClassic
      RowCount = 4
      FixedRows = 0
      TabOrder = 10
      Visible = False
    end
    object Stgr_TodosNumerosP17: TStringGrid
      Left = -1692
      Top = -576
      Width = 910
      Height = 74
      Anchors = [akLeft, akBottom]
      Color = 9136444
      ColCount = 33
      DefaultColWidth = 26
      DefaultRowHeight = 20
      DrawingStyle = gdsClassic
      RowCount = 3
      FixedRows = 0
      TabOrder = 11
      Visible = False
    end
    object stgr_excluiFixar_BaseL4Ac4: TStringGrid
      Left = 16481
      Top = 61
      Width = 186
      Height = 0
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 13083983
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = 10262669
      RowCount = 2
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      TabOrder = 12
    end
    object stgr_excluiFixar_BaseL4Ac3: TStringGrid
      Left = 16319
      Top = 61
      Width = 156
      Height = 0
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 13083983
      ColCount = 4
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = 10262669
      RowCount = 2
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      TabOrder = 13
    end
    object stgr_excluiFixar_BaseL4Ac2: TStringGrid
      Left = 16197
      Top = 61
      Width = 116
      Height = 0
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 13083983
      ColCount = 3
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = 10262669
      RowCount = 2
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      TabOrder = 14
    end
    object stgr_excluiFixar_BaseL5Ac3: TStringGrid
      Left = 16931
      Top = 61
      Width = 156
      Height = 0
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 13083983
      ColCount = 4
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = 10262669
      RowCount = 2
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      TabOrder = 15
    end
    object stgr_excluiFixar_BaseL5Ac2: TStringGrid
      Left = 16809
      Top = 61
      Width = 116
      Height = 0
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 13083983
      ColCount = 3
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = 10262669
      RowCount = 2
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      TabOrder = 16
    end
    object stgr_excluiFixar_BaseL5Ac1: TStringGrid
      Left = 16711
      Top = 61
      Width = 92
      Height = 0
      TabStop = False
      Anchors = [akLeft, akTop, akBottom]
      Color = 13083983
      ColCount = 2
      DefaultColWidth = 30
      DefaultRowHeight = 23
      DrawingStyle = gdsClassic
      FixedColor = 10262669
      RowCount = 2
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
      TabOrder = 17
    end
    object Bbt_rank: TBitBtn
      Left = -1373
      Top = 3
      Width = 89
      Height = 34
      Caption = 'Rank'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnClick = Bbt_rankClick
    end
    object Bbt_carregarSorteio15N: TBitBtn
      Left = -1620
      Top = 3
      Width = 241
      Height = 34
      Caption = 'CARREGAR SORTEIOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      OnClick = Bbt_CarregarSort
    end
  end
  object IBQ_COMBINACOES: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT FIRST 10 * FROM COMBINACOES_15')
    Left = 1038
    Top = 54
  end
  object Ds_E_SORTEIO_15N: TDataSource
    DataSet = Ibq_E_SORTEIO_15N
    Left = 1150
    Top = 54
  end
  object Ibq_E_SORTEIO_15N: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *'
      'from E_SORTEIO_15N'
      'order by N_SORTEIO')
    Left = 1149
    Top = 13
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultAction = TACommitRetaining
    Left = 1038
    Top = 30
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\CXLOTOFACIL\COMBINACOES_15.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 1038
    Top = 6
  end
end
