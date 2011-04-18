VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   12255
   ClientLeft      =   75
   ClientTop       =   375
   ClientWidth     =   19575
   LinkTopic       =   "Form1"
   ScaleHeight     =   12255
   ScaleWidth      =   19575
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   735
      Left            =   3000
      TabIndex        =   6
      Top             =   5880
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   240
      TabIndex        =   5
      Text            =   "Text3"
      Top             =   6600
      Width           =   4935
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   4335
      Left            =   360
      TabIndex        =   4
      Top             =   7080
      Width           =   5655
      ExtentX         =   9975
      ExtentY         =   7646
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
   Begin VB.TextBox Text2 
      BackColor       =   &H80000001&
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   9.75
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000006&
      Height          =   11295
      Left            =   5880
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   2
      Text            =   "Form1.frx":0000
      Top             =   600
      Width           =   13335
   End
   Begin VB.TextBox Text1 
      Height          =   2415
      Left            =   2160
      MultiLine       =   -1  'True
      TabIndex        =   1
      Text            =   "Form1.frx":0006
      Top             =   1920
      Width           =   3495
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   840
      Top             =   3600
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   735
      Left            =   360
      TabIndex        =   0
      Top             =   480
      Width           =   2415
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   3840
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   4935
      Left            =   720
      TabIndex        =   3
      Top             =   2280
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
On Error Resume Next



Dim ip As String
Dim lol As String

ip = "newsru.co.il"
Winsock1.Close
Text2.Text = ""

Winsock1.Connect ip, 80

    While Winsock1.State <> 7 And Winsock1.State <> 9
    DoEvents
       ' o = o + 1
         'Label1.Caption = Str(Winsock2.State)
        'If Winsock1.State = 6 Then
            'If Not prev_flag Then
            '    Time_out = Time_out - Int(Time_out / 100)
            'Else
            '    Time_out = 14000
            'End If
            'flag = False
        'End If
        Text1.Text = "YES-1\n" & vbCrLf & Text1.Text
        
    Wend

lol = "POST /info/bigpoll/liberman_delo.html HTTP/1.1" & vbCrLf + _
"Accept: image/jpeg, application/x-ms-application, image/gif, application/xaml+xml, image/pjpeg, application/x-ms-xbap, application/msword, application/vnd.ms-powerpoint, application/vnd.ms-excel, */*" & vbCrLf + _
"Referer: http://newsru.co.il/info/bigpoll/liberman_delo.html" & vbCrLf + _
"Accept -Language: en -US & vbCrLf" + _
"User-Agent: Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; Tablet PC 2.0)" & vbCrLf + _
"Content-Type: application/x-www-form-urlencoded" & vbCrLf + _
"Accept -Encoding: gzip , deflate" & vbCrLf + _
"Host: newsru.co.il" & vbCrLf + _
"Content-Length: 36" & vbCrLf + _
"Proxy -Connection: Keep -Alive" & vbCrLf + _
"Pragma: no -cache" & vbCrLf + _
"Cookie: snewsPage=2; polls=1; MG_3704=18" & vbCrLf + _
"" & vbCrLf + _
"qnum=5&qid=1488&poll=10367&x=21&y=14" & vbCrLf & vbCrLf


Winsock1.SendData (lol)


    While Winsock1.State <> 7 And Winsock1.State <> 9
    DoEvents
       ' o = o + 1
         'Label1.Caption = Str(Winsock2.State)
        'If Winsock1.State = 6 Then
            'If Not prev_flag Then
            '    Time_out = Time_out - Int(Time_out / 100)
            'Else
            '    Time_out = 14000
            'End If
            'flag = False
        'End If
        Text1.Text = "YES - 2\n" & vbCrLf & Text1.Text
        
    Wend
End Sub

Private Sub Command2_Click()
WebBrowser1.Navigate (Text3.Text)


End Sub

Private Sub Timer1_Timer()
If Winsock1.State <> 0 Then
    Label1.Caption = Winsock1.State & vbNewLine & Label1.Caption
End If

End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
Dim data As String

On Error Resume Next
Winsock1.GetData data
Text2.Text = Text2.Text & data & vbCrLf
End Sub

