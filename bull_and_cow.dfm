object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 320
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mot_label: TLabel
    Left = 151
    Top = 43
    Width = 47
    Height = 13
    Caption = 'Votre mot'
  end
  object bull_label: TLabel
    Left = 112
    Top = 123
    Width = 16
    Height = 13
    Caption = 'Bull'
  end
  object cow_label: TLabel
    Left = 108
    Top = 171
    Width = 21
    Height = 13
    Caption = 'Cow'
  end
  object essais_label: TLabel
    Left = 325
    Top = 123
    Width = 84
    Height = 13
    Caption = 'Nombre d'#39'essais :'
  end
  object taille_label: TLabel
    Left = 316
    Top = 171
    Width = 93
    Height = 13
    Caption = 'Nombre de lettres :'
  end
  object mot_saisi: TEdit
    Left = 208
    Top = 40
    Width = 217
    Height = 21
    AutoSelect = False
    TabOrder = 0
  end
  object bull: TEdit
    Left = 144
    Top = 120
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object cow: TEdit
    Left = 144
    Top = 168
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object Check: TButton
    Left = 72
    Top = 232
    Width = 131
    Height = 57
    Caption = 'Check'
    TabOrder = 3
    OnClick = CheckClick
  end
  object Ràz: TButton
    Left = 236
    Top = 232
    Width = 128
    Height = 57
    Caption = 'R'#224'z'
    TabOrder = 4
    OnClick = RàzClick
  end
  object Quit: TButton
    Left = 392
    Top = 232
    Width = 121
    Height = 57
    Caption = 'Quit'
    TabOrder = 5
    OnClick = QuitClick
  end
  object nbr_essais: TEdit
    Left = 408
    Top = 120
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 6
  end
  object taille_mot: TEdit
    Left = 408
    Top = 168
    Width = 129
    Height = 21
    Enabled = False
    ReadOnly = True
    TabOrder = 7
  end
  object liste_mot: TMemo
    Left = 556
    Top = 263
    Width = 79
    Height = 26
    Lines.Strings = (
      'mots')
    ReadOnly = True
    TabOrder = 8
    Visible = False
  end
  object lancement: TButton
    Left = 472
    Top = 38
    Width = 121
    Height = 51
    Caption = 'Nouvelle partie'
    TabOrder = 9
    OnClick = lancementClick
  end
  object mot_choisi: TEdit
    Left = 519
    Top = 236
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 10
    Visible = False
  end
end
