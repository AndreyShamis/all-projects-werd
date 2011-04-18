VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   11955
   ClientLeft      =   75
   ClientTop       =   375
   ClientWidth     =   19755
   LinkTopic       =   "Form1"
   ScaleHeight     =   11955
   ScaleWidth      =   19755
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   11655
      Left            =   0
      TabIndex        =   3
      Top             =   360
      Width           =   19815
      Begin VB.Timer Timer1 
         Interval        =   300
         Left            =   10440
         Top             =   1920
      End
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   5520
         TabIndex        =   4
         Text            =   "09:30"
         Top             =   1920
         Width           =   1455
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   15120
      TabIndex        =   2
      Top             =   0
      Width           =   4695
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Text            =   "http://www.youtube.com/watch?v=JkM0SBgtiwE&feature=related"
      Top             =   0
      Width           =   15135
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   11655
      Left            =   0
      TabIndex        =   0
      Top             =   360
      Width           =   19815
      ExtentX         =   34951
      ExtentY         =   20558
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   ""
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
'WebBrowser1.Navigate (Text1.Text)
    
End Sub

Private Sub Timer1_Timer()
'MsgBox Time, vbCritical
If Left$(Time, 5) = Text2.Text Then
    WebBrowser1.Navigate (Text1.Text)
    Timer1.Enabled = False
    Frame1.Visible = False
End If
End Sub
