object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 489
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
  object BitBtn1: TBitBtn
    Left = 198
    Top = 51
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object edtNome: TEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    Hint = 'Nome'
    TabOrder = 1
    TextHint = 'Nome'
  end
  object edtSobreNome: TEdit
    Left = 152
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'SobreNome'
  end
  object Memo1: TMemo
    Left = 296
    Top = 24
    Width = 185
    Height = 129
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 80
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 4
    Text = 'Fisica'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Fisica'
      'Juridica')
  end
end
