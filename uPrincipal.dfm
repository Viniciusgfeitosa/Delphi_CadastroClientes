object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 441
  ClientWidth = 624
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object lblNome: TLabel
    Left = 96
    Top = 32
    Width = 33
    Height = 15
    BiDiMode = bdLeftToRight
    Caption = 'Nome'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lblCPF: TLabel
    Left = 96
    Top = 82
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object lblTelefone: TLabel
    Left = 96
    Top = 132
    Width = 44
    Height = 15
    Caption = 'Telefone'
  end
  object lblEmail: TLabel
    Left = 96
    Top = 182
    Width = 29
    Height = 15
    Caption = 'Email'
  end
  object btnNovo: TButton
    Left = 296
    Top = 52
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
    OnClick = btnNovoClick
  end
  object edtNome: TEdit
    Left = 96
    Top = 53
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object edtCPF: TEdit
    Left = 96
    Top = 103
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object edtTelefone: TEdit
    Left = 96
    Top = 153
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object edtEmail: TEdit
    Left = 96
    Top = 203
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object btnSalvar: TButton
    Left = 296
    Top = 133
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btnSalvarClick
  end
  object btnLimpar: TButton
    Left = 296
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 6
    OnClick = btnLimparClick
  end
  object sgClientes: TStringGrid
    Left = 96
    Top = 248
    Width = 265
    Height = 57
    ColCount = 4
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goFixedRowDefAlign]
    TabOrder = 7
  end
end
