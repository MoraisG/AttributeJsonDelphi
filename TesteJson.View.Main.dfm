object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 201
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      447
      201)
    object Button1: TButton
      AlignWithMargins = True
      Left = 0
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Standard'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Memo1: TMemo
      AlignWithMargins = True
      Left = 0
      Top = 80
      Width = 447
      Height = 121
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 1
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 0
      Top = 39
      Width = 75
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Format'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button3'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 104
      Top = 39
      Width = 75
      Height = 25
      Caption = 'ArrayJson'
      TabOrder = 4
      OnClick = Button4Click
    end
  end
end
