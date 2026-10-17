Global Const $WC_ANIMATE = "SysAnimate32"
Global Const $WC_BUTTON = "Button"
Global Const $WC_COMBOBOX = "ComboBox"
Global Const $WC_COMBOBOXEX = "ComboBoxEx32"
Global Const $WC_DATETIMEPICK = "SysDateTimePick32"
Global Const $WC_EDIT = "Edit"
Global Const $WC_HEADER = "SysHeader32"
Global Const $WC_HOTKEY = "msctls_hotkey32"
Global Const $WC_IPADDRESS = "SysIPAddress32"
Global Const $WC_LINK = "SysLink"
Global Const $WC_LISTBOX = "ListBox"
Global Const $WC_LISTVIEW = "SysListView32"
Global Const $WC_MONTHCAL = "SysMonthCal32"
Global Const $WC_NATIVEFONTCTL = "NativeFontCtl"
Global Const $WC_PAGESCROLLER = "SysPager"
Global Const $WC_PROGRESS = "msctls_progress32"
Global Const $WC_REBAR = "ReBarWindow32"
Global Const $WC_SCROLLBAR = "ScrollBar"
Global Const $WC_STATIC = "Static"
Global Const $WC_STATUSBAR = "msctls_statusbar32"
Global Const $WC_TABCONTROL = "SysTabControl32"
Global Const $WC_TOOLBAR = "ToolbarWindow32"
Global Const $WC_TOOLTIPS = "tooltips_class32"
Global Const $WC_TRACKBAR = "msctls_trackbar32"
Global Const $WC_TREEVIEW = "SysTreeView32"
Global Const $WC_UPDOWN = "msctls_updown32"
Global Const $WS_OVERLAPPED = 0
Global Const $WS_TILED = $WS_OVERLAPPED
Global Const $WS_MAXIMIZEBOX = 65536
Global Const $WS_MINIMIZEBOX = 131072
Global Const $WS_TABSTOP = 65536
Global Const $WS_GROUP = 131072
Global Const $WS_SIZEBOX = 262144
Global Const $WS_THICKFRAME = $WS_SIZEBOX
Global Const $WS_SYSMENU = 524288
Global Const $WS_HSCROLL = 1048576
Global Const $WS_VSCROLL = 2097152
Global Const $WS_DLGFRAME = 4194304
Global Const $WS_BORDER = 8388608
Global Const $WS_CAPTION = 12582912
Global Const $WS_OVERLAPPEDWINDOW = BitOR ( $WS_CAPTION , $WS_MAXIMIZEBOX , $WS_MINIMIZEBOX , $WS_OVERLAPPED , $WS_SYSMENU , $WS_THICKFRAME )
Global Const $WS_TILEDWINDOW = $WS_OVERLAPPEDWINDOW
Global Const $WS_MAXIMIZE = 16777216
Global Const $WS_CLIPCHILDREN = 33554432
Global Const $WS_CLIPSIBLINGS = 67108864
Global Const $WS_DISABLED = 134217728
Global Const $WS_VISIBLE = 268435456
Global Const $WS_MINIMIZE = 536870912
Global Const $WS_ICONIC = $WS_MINIMIZE
Global Const $WS_CHILD = 1073741824
Global Const $WS_CHILDWINDOW = $WS_CHILD
Global Const $WS_POPUP = 2147483648
Global Const $WS_POPUPWINDOW = 2156396544
Global Const $DS_3DLOOK = 4
Global Const $DS_ABSALIGN = 1
Global Const $DS_CENTER = 2048
Global Const $DS_CENTERMOUSE = 4096
Global Const $DS_CONTEXTHELP = 8192
Global Const $DS_CONTROL = 1024
Global Const $DS_FIXEDSYS = 8
Global Const $DS_LOCALEDIT = 32
Global Const $DS_MODALFRAME = 128
Global Const $DS_NOFAILCREATE = 16
Global Const $DS_NOIDLEMSG = 256
Global Const $DS_SETFONT = 64
Global Const $DS_SETFOREGROUND = 512
Global Const $DS_SHELLFONT = BitOR ( $DS_FIXEDSYS , $DS_SETFONT )
Global Const $DS_SYSMODAL = 2
Global Const $WS_EX_ACCEPTFILES = 16
Global Const $WS_EX_APPWINDOW = 262144
Global Const $WS_EX_COMPOSITED = 33554432
Global Const $WS_EX_CONTROLPARENT = 65536
Global Const $WS_EX_CLIENTEDGE = 512
Global Const $WS_EX_CONTEXTHELP = 1024
Global Const $WS_EX_DLGMODALFRAME = 1
Global Const $WS_EX_LAYERED = 524288
Global Const $WS_EX_LAYOUTRTL = 4194304
Global Const $WS_EX_LEFT = 0
Global Const $WS_EX_LEFTSCROLLBAR = 16384
Global Const $WS_EX_LTRREADING = 0
Global Const $WS_EX_MDICHILD = 64
Global Const $WS_EX_NOACTIVATE = 134217728
Global Const $WS_EX_NOINHERITLAYOUT = 1048576
Global Const $WS_EX_NOPARENTNOTIFY = 4
Global Const $WS_EX_RIGHT = 4096
Global Const $WS_EX_RIGHTSCROLLBAR = 0
Global Const $WS_EX_RTLREADING = 8192
Global Const $WS_EX_STATICEDGE = 131072
Global Const $WS_EX_TOOLWINDOW = 128
Global Const $WS_EX_TOPMOST = 8
Global Const $WS_EX_TRANSPARENT = 32
Global Const $WS_EX_WINDOWEDGE = 256
Global Const $WS_EX_OVERLAPPEDWINDOW = BitOR ( $WS_EX_CLIENTEDGE , $WS_EX_WINDOWEDGE )
Global Const $WS_EX_PALETTEWINDOW = BitOR ( $WS_EX_TOOLWINDOW , $WS_EX_TOPMOST , $WS_EX_WINDOWEDGE )
Global Const $WM_NULL = 0
Global Const $WM_CREATE = 1
Global Const $WM_DESTROY = 2
Global Const $WM_MOVE = 3
Global Const $WM_SIZEWAIT = 4
Global Const $WM_SIZE = 5
Global Const $WM_ACTIVATE = 6
Global Const $WM_SETFOCUS = 7
Global Const $WM_KILLFOCUS = 8
Global Const $WM_SETVISIBLE = 9
Global Const $WM_ENABLE = 10
Global Const $WM_SETREDRAW = 11
Global Const $WM_SETTEXT = 12
Global Const $WM_GETTEXT = 13
Global Const $WM_GETTEXTLENGTH = 14
Global Const $WM_PAINT = 15
Global Const $WM_CLOSE = 16
Global Const $WM_QUERYENDSESSION = 17
Global Const $WM_QUIT = 18
Global Const $WM_ERASEBKGND = 20
Global Const $WM_QUERYOPEN = 19
Global Const $WM_SYSCOLORCHANGE = 21
Global Const $WM_ENDSESSION = 22
Global Const $WM_SYSTEMERROR = 23
Global Const $WM_SHOWWINDOW = 24
Global Const $WM_CTLCOLOR = 25
Global Const $WM_SETTINGCHANGE = 26
Global Const $WM_WININICHANGE = 26
Global Const $WM_DEVMODECHANGE = 27
Global Const $WM_ACTIVATEAPP = 28
Global Const $WM_FONTCHANGE = 29
Global Const $WM_TIMECHANGE = 30
Global Const $WM_CANCELMODE = 31
Global Const $WM_SETCURSOR = 32
Global Const $WM_MOUSEACTIVATE = 33
Global Const $WM_CHILDACTIVATE = 34
Global Const $WM_QUEUESYNC = 35
Global Const $WM_GETMINMAXINFO = 36
Global Const $WM_LOGOFF = 37
Global Const $WM_PAINTICON = 38
Global Const $WM_ICONERASEBKGND = 39
Global Const $WM_NEXTDLGCTL = 40
Global Const $WM_ALTTABACTIVE = 41
Global Const $WM_SPOOLERSTATUS = 42
Global Const $WM_DRAWITEM = 43
Global Const $WM_MEASUREITEM = 44
Global Const $WM_DELETEITEM = 45
Global Const $WM_VKEYTOITEM = 46
Global Const $WM_CHARTOITEM = 47
Global Const $WM_SETFONT = 48
Global Const $WM_GETFONT = 49
Global Const $WM_SETHOTKEY = 50
Global Const $WM_GETHOTKEY = 51
Global Const $WM_FILESYSCHANGE = 52
Global Const $WM_ISACTIVEICON = 53
Global Const $WM_QUERYPARKICON = 54
Global Const $WM_QUERYDRAGICON = 55
Global Const $WM_WINHELP = 56
Global Const $WM_COMPAREITEM = 57
Global Const $WM_FULLSCREEN = 58
Global Const $WM_CLIENTSHUTDOWN = 59
Global Const $WM_DDEMLEVENT = 60
Global Const $WM_GETOBJECT = 61
Global Const $WM_CALCSCROLL = 63
Global Const $WM_TESTING = 64
Global Const $WM_COMPACTING = 65
Global Const $WM_OTHERWINDOWCREATED = 66
Global Const $WM_OTHERWINDOWDESTROYED = 67
Global Const $WM_COMMNOTIFY = 68
Global Const $WM_MEDIASTATUSCHANGE = 69
Global Const $WM_WINDOWPOSCHANGING = 70
Global Const $WM_WINDOWPOSCHANGED = 71
Global Const $WM_POWER = 72
Global Const $WM_COPYGLOBALDATA = 73
Global Const $WM_COPYDATA = 74
Global Const $WM_CANCELJOURNAL = 75
Global Const $WM_LOGONNOTIFY = 76
Global Const $WM_KEYF1 = 77
Global Const $WM_NOTIFY = 78
Global Const $WM_ACCESS_WINDOW = 79
Global Const $WM_INPUTLANGCHANGEREQUEST = 80
Global Const $WM_INPUTLANGCHANGE = 81
Global Const $WM_TCARD = 82
Global Const $WM_HELP = 83
Global Const $WM_USERCHANGED = 84
Global Const $WM_NOTIFYFORMAT = 85
Global Const $WM_QM_ACTIVATE = 96
Global Const $WM_HOOK_DO_CALLBACK = 97
Global Const $WM_SYSCOPYDATA = 98
Global Const $WM_FINALDESTROY = 112
Global Const $WM_MEASUREITEM_CLIENTDATA = 113
Global Const $WM_CONTEXTMENU = 123
Global Const $WM_STYLECHANGING = 124
Global Const $WM_STYLECHANGED = 125
Global Const $WM_DISPLAYCHANGE = 126
Global Const $WM_GETICON = 127
Global Const $WM_SETICON = 128
Global Const $WM_NCCREATE = 129
Global Const $WM_NCDESTROY = 130
Global Const $WM_NCCALCSIZE = 131
Global Const $WM_NCHITTEST = 132
Global Const $WM_NCPAINT = 133
Global Const $WM_NCACTIVATE = 134
Global Const $WM_GETDLGCODE = 135
Global Const $WM_SYNCPAINT = 136
Global Const $WM_SYNCTASK = 137
Global Const $WM_KLUDGEMINRECT = 139
Global Const $WM_LPKDRAWSWITCHWND = 140
Global Const $WM_UAHDESTROYWINDOW = 144
Global Const $WM_UAHDRAWMENU = 145
Global Const $WM_UAHDRAWMENUITEM = 146
Global Const $WM_UAHINITMENU = 147
Global Const $WM_UAHMEASUREMENUITEM = 148
Global Const $WM_UAHNCPAINTMENUPOPUP = 149
Global Const $WM_NCMOUSEMOVE = 160
Global Const $WM_NCLBUTTONDOWN = 161
Global Const $WM_NCLBUTTONUP = 162
Global Const $WM_NCLBUTTONDBLCLK = 163
Global Const $WM_NCRBUTTONDOWN = 164
Global Const $WM_NCRBUTTONUP = 165
Global Const $WM_NCRBUTTONDBLCLK = 166
Global Const $WM_NCMBUTTONDOWN = 167
Global Const $WM_NCMBUTTONUP = 168
Global Const $WM_NCMBUTTONDBLCLK = 169
Global Const $WM_NCXBUTTONDOWN = 171
Global Const $WM_NCXBUTTONUP = 172
Global Const $WM_NCXBUTTONDBLCLK = 173
Global Const $WM_NCUAHDRAWCAPTION = 174
Global Const $WM_NCUAHDRAWFRAME = 175
Global Const $WM_INPUT_DEVICE_CHANGE = 254
Global Const $WM_INPUT = 255
Global Const $WM_KEYDOWN = 256
Global Const $WM_KEYFIRST = 256
Global Const $WM_KEYUP = 257
Global Const $WM_CHAR = 258
Global Const $WM_DEADCHAR = 259
Global Const $WM_SYSKEYDOWN = 260
Global Const $WM_SYSKEYUP = 261
Global Const $WM_SYSCHAR = 262
Global Const $WM_SYSDEADCHAR = 263
Global Const $WM_YOMICHAR = 264
Global Const $WM_KEYLAST = 265
Global Const $WM_UNICHAR = 265
Global Const $WM_CONVERTREQUEST = 266
Global Const $WM_CONVERTRESULT = 267
Global Const $WM_IM_INFO = 268
Global Const $WM_IME_STARTCOMPOSITION = 269
Global Const $WM_IME_ENDCOMPOSITION = 270
Global Const $WM_IME_COMPOSITION = 271
Global Const $WM_IME_KEYLAST = 271
Global Const $WM_INITDIALOG = 272
Global Const $WM_COMMAND = 273
Global Const $WM_SYSCOMMAND = 274
Global Const $WM_TIMER = 275
Global Const $WM_HSCROLL = 276
Global Const $WM_VSCROLL = 277
Global Const $WM_INITMENU = 278
Global Const $WM_INITMENUPOPUP = 279
Global Const $WM_SYSTIMER = 280
Global Const $WM_GESTURE = 281
Global Const $WM_GESTURENOTIFY = 282
Global Const $WM_GESTUREINPUT = 283
Global Const $WM_GESTURENOTIFIED = 284
Global Const $WM_MENUSELECT = 287
Global Const $WM_MENUCHAR = 288
Global Const $WM_ENTERIDLE = 289
Global Const $WM_MENURBUTTONUP = 290
Global Const $WM_MENUDRAG = 291
Global Const $WM_MENUGETOBJECT = 292
Global Const $WM_UNINITMENUPOPUP = 293
Global Const $WM_MENUCOMMAND = 294
Global Const $WM_CHANGEUISTATE = 295
Global Const $WM_UPDATEUISTATE = 296
Global Const $WM_QUERYUISTATE = 297
Global Const $WM_LBTRACKPOINT = 305
Global Const $WM_CTLCOLORMSGBOX = 306
Global Const $WM_CTLCOLOREDIT = 307
Global Const $WM_CTLCOLORLISTBOX = 308
Global Const $WM_CTLCOLORBTN = 309
Global Const $WM_CTLCOLORDLG = 310
Global Const $WM_CTLCOLORSCROLLBAR = 311
Global Const $WM_CTLCOLORSTATIC = 312
Global Const $MN_GETHMENU = 481
Global Const $WM_PARENTNOTIFY = 528
Global Const $WM_ENTERMENULOOP = 529
Global Const $WM_EXITMENULOOP = 530
Global Const $WM_NEXTMENU = 531
Global Const $WM_SIZING = 532
Global Const $WM_CAPTURECHANGED = 533
Global Const $WM_MOVING = 534
Global Const $WM_POWERBROADCAST = 536
Global Const $WM_DEVICECHANGE = 537
Global Const $WM_MDICREATE = 544
Global Const $WM_MDIDESTROY = 545
Global Const $WM_MDIACTIVATE = 546
Global Const $WM_MDIRESTORE = 547
Global Const $WM_MDINEXT = 548
Global Const $WM_MDIMAXIMIZE = 549
Global Const $WM_MDITILE = 550
Global Const $WM_MDICASCADE = 551
Global Const $WM_MDIICONARRANGE = 552
Global Const $WM_MDIGETACTIVE = 553
Global Const $WM_DROPOBJECT = 554
Global Const $WM_QUERYDROPOBJECT = 555
Global Const $WM_BEGINDRAG = 556
Global Const $WM_DRAGLOOP = 557
Global Const $WM_DRAGSELECT = 558
Global Const $WM_DRAGMOVE = 559
Global Const $WM_MDISETMENU = 560
Global Const $WM_ENTERSIZEMOVE = 561
Global Const $WM_EXITSIZEMOVE = 562
Global Const $WM_DROPFILES = 563
Global Const $WM_MDIREFRESHMENU = 564
Global Const $WM_TOUCH = 576
Global Const $WM_IME_SETCONTEXT = 641
Global Const $WM_IME_NOTIFY = 642
Global Const $WM_IME_CONTROL = 643
Global Const $WM_IME_COMPOSITIONFULL = 644
Global Const $WM_IME_SELECT = 645
Global Const $WM_IME_CHAR = 646
Global Const $WM_IME_SYSTEM = 647
Global Const $WM_IME_REQUEST = 648
Global Const $WM_IME_KEYDOWN = 656
Global Const $WM_IME_KEYUP = 657
Global Const $WM_NCMOUSEHOVER = 672
Global Const $WM_MOUSEHOVER = 673
Global Const $WM_NCMOUSELEAVE = 674
Global Const $WM_MOUSELEAVE = 675
Global Const $WM_WTSSESSION_CHANGE = 689
Global Const $WM_TABLET_FIRST = 704
Global Const $WM_TABLET_LAST = 735
Global Const $WM_CUT = 768
Global Const $WM_COPY = 769
Global Const $WM_PASTE = 770
Global Const $WM_CLEAR = 771
Global Const $WM_UNDO = 772
Global Const $WM_PALETTEISCHANGING = 784
Global Const $WM_HOTKEY = 786
Global Const $WM_PALETTECHANGED = 785
Global Const $WM_SYSMENU = 787
Global Const $WM_HOOKMSG = 788
Global Const $WM_EXITPROCESS = 789
Global Const $WM_WAKETHREAD = 790
Global Const $WM_PRINT = 791
Global Const $WM_PRINTCLIENT = 792
Global Const $WM_APPCOMMAND = 793
Global Const $WM_QUERYNEWPALETTE = 783
Global Const $WM_THEMECHANGED = 794
Global Const $WM_UAHINIT = 795
Global Const $WM_DESKTOPNOTIFY = 796
Global Const $WM_CLIPBOARDUPDATE = 797
Global Const $WM_DWMCOMPOSITIONCHANGED = 798
Global Const $WM_DWMNCRENDERINGCHANGED = 799
Global Const $WM_DWMCOLORIZATIONCOLORCHANGED = 800
Global Const $WM_DWMWINDOWMAXIMIZEDCHANGE = 801
Global Const $WM_DWMEXILEFRAME = 802
Global Const $WM_DWMSENDICONICTHUMBNAIL = 803
Global Const $WM_MAGNIFICATION_STARTED = 804
Global Const $WM_MAGNIFICATION_ENDED = 805
Global Const $WM_DWMSENDICONICLIVEPREVIEWBITMAP = 806
Global Const $WM_DWMTHUMBNAILSIZECHANGED = 807
Global Const $WM_MAGNIFICATION_OUTPUT = 808
Global Const $WM_MEASURECONTROL = 816
Global Const $WM_GETACTIONTEXT = 817
Global Const $WM_FORWARDKEYDOWN = 819
Global Const $WM_FORWARDKEYUP = 820
Global Const $WM_GETTITLEBARINFOEX = 831
Global Const $WM_NOTIFYWOW = 832
Global Const $WM_HANDHELDFIRST = 856
Global Const $WM_HANDHELDLAST = 863
Global Const $WM_AFXFIRST = 864
Global Const $WM_AFXLAST = 895
Global Const $WM_PENWINFIRST = 896
Global Const $WM_PENWINLAST = 911
Global Const $WM_DDE_INITIATE = 992
Global Const $WM_DDE_TERMINATE = 993
Global Const $WM_DDE_ADVISE = 994
Global Const $WM_DDE_UNADVISE = 995
Global Const $WM_DDE_ACK = 996
Global Const $WM_DDE_DATA = 997
Global Const $WM_DDE_REQUEST = 998
Global Const $WM_DDE_POKE = 999
Global Const $WM_DDE_EXECUTE = 1000
Global Const $WM_DBNOTIFICATION = 1021
Global Const $WM_NETCONNECT = 1022
Global Const $WM_HIBERNATE = 1023
Global Const $WM_USER = 1024
Global Const $WM_APP = 32768
Global Const $NM_FIRST = 0
Global Const $NM_OUTOFMEMORY = $NM_FIRST + 4294967295
Global Const $NM_CLICK = $NM_FIRST + 4294967294
Global Const $NM_DBLCLK = $NM_FIRST + 4294967293
Global Const $NM_RETURN = $NM_FIRST + 4294967292
Global Const $NM_RCLICK = $NM_FIRST + 4294967291
Global Const $NM_RDBLCLK = $NM_FIRST + 4294967290
Global Const $NM_SETFOCUS = $NM_FIRST + 4294967289
Global Const $NM_KILLFOCUS = $NM_FIRST + 4294967288
Global Const $NM_CUSTOMDRAW = $NM_FIRST + 4294967284
Global Const $NM_HOVER = $NM_FIRST + 4294967283
Global Const $NM_NCHITTEST = $NM_FIRST + 4294967282
Global Const $NM_KEYDOWN = $NM_FIRST + 4294967281
Global Const $NM_RELEASEDCAPTURE = $NM_FIRST + 4294967280
Global Const $NM_SETCURSOR = $NM_FIRST + 4294967279
Global Const $NM_CHAR = $NM_FIRST + 4294967278
Global Const $NM_TOOLTIPSCREATED = $NM_FIRST + 4294967277
Global Const $NM_LDOWN = $NM_FIRST + 4294967276
Global Const $NM_RDOWN = $NM_FIRST + 4294967275
Global Const $NM_THEMECHANGED = $NM_FIRST + 4294967274
Global Const $WM_MOUSEFIRST = 512
Global Const $WM_MOUSEMOVE = 512
Global Const $WM_LBUTTONDOWN = 513
Global Const $WM_LBUTTONUP = 514
Global Const $WM_LBUTTONDBLCLK = 515
Global Const $WM_RBUTTONDOWN = 516
Global Const $WM_RBUTTONUP = 517
Global Const $WM_RBUTTONDBLCLK = 518
Global Const $WM_MBUTTONDOWN = 519
Global Const $WM_MBUTTONUP = 520
Global Const $WM_MBUTTONDBLCLK = 521
Global Const $WM_MOUSEWHEEL = 522
Global Const $WM_XBUTTONDOWN = 523
Global Const $WM_XBUTTONUP = 524
Global Const $WM_XBUTTONDBLCLK = 525
Global Const $WM_MOUSEHWHEEL = 526
Global Const $PS_SOLID = 0
Global Const $PS_DASH = 1
Global Const $PS_DOT = 2
Global Const $PS_DASHDOT = 3
Global Const $PS_DASHDOTDOT = 4
Global Const $PS_NULL = 5
Global Const $PS_INSIDEFRAME = 6
Global Const $PS_USERSTYLE = 7
Global Const $PS_ALTERNATE = 8
Global Const $PS_ENDCAP_ROUND = 0
Global Const $PS_ENDCAP_SQUARE = 256
Global Const $PS_ENDCAP_FLAT = 512
Global Const $PS_JOIN_BEVEL = 4096
Global Const $PS_JOIN_MITER = 8192
Global Const $PS_JOIN_ROUND = 0
Global Const $PS_GEOMETRIC = 65536
Global Const $PS_COSMETIC = 0
Global Const $LWA_ALPHA = 2
Global Const $LWA_COLORKEY = 1
Global Const $RGN_AND = 1
Global Const $RGN_OR = 2
Global Const $RGN_XOR = 3
Global Const $RGN_DIFF = 4
Global Const $RGN_COPY = 5
Global Const $ERRORREGION = 0
Global Const $NULLREGION = 1
Global Const $SIMPLEREGION = 2
Global Const $COMPLEXREGION = 3
Global Const $TRANSPARENT = 1
Global Const $OPAQUE = 2
Global Const $CCM_FIRST = 8192
Global Const $CCM_GETUNICODEFORMAT = ( $CCM_FIRST + 6 )
Global Const $CCM_SETUNICODEFORMAT = ( $CCM_FIRST + 5 )
Global Const $CCM_SETBKCOLOR = $CCM_FIRST + 1
Global Const $CCM_SETCOLORSCHEME = $CCM_FIRST + 2
Global Const $CCM_GETCOLORSCHEME = $CCM_FIRST + 3
Global Const $CCM_GETDROPTARGET = $CCM_FIRST + 4
Global Const $CCM_SETWINDOWTHEME = $CCM_FIRST + 11
Global Const $GA_PARENT = 1
Global Const $GA_ROOT = 2
Global Const $GA_ROOTOWNER = 3
Global Const $SM_CXSCREEN = 0
Global Const $SM_CYSCREEN = 1
Global Const $SM_CXVSCROLL = 2
Global Const $SM_CYHSCROLL = 3
Global Const $SM_CYCAPTION = 4
Global Const $SM_CXBORDER = 5
Global Const $SM_CYBORDER = 6
Global Const $SM_CXDLGFRAME = 7
Global Const $SM_CYDLGFRAME = 8
Global Const $SM_CYVTHUMB = 9
Global Const $SM_CXHTHUMB = 10
Global Const $SM_CXICON = 11
Global Const $SM_CYICON = 12
Global Const $SM_CXCURSOR = 13
Global Const $SM_CYCURSOR = 14
Global Const $SM_CYMENU = 15
Global Const $SM_CXFULLSCREEN = 16
Global Const $SM_CYFULLSCREEN = 17
Global Const $SM_CYKANJIWINDOW = 18
Global Const $SM_MOUSEPRESENT = 19
Global Const $SM_CYVSCROLL = 20
Global Const $SM_CXHSCROLL = 21
Global Const $SM_DEBUG = 22
Global Const $SM_SWAPBUTTON = 23
Global Const $SM_RESERVED1 = 24
Global Const $SM_RESERVED2 = 25
Global Const $SM_RESERVED3 = 26
Global Const $SM_RESERVED4 = 27
Global Const $SM_CXMIN = 28
Global Const $SM_CYMIN = 29
Global Const $SM_CXSIZE = 30
Global Const $SM_CYSIZE = 31
Global Const $SM_CXFRAME = 32
Global Const $SM_CYFRAME = 33
Global Const $SM_CXMINTRACK = 34
Global Const $SM_CYMINTRACK = 35
Global Const $SM_CXDOUBLECLK = 36
Global Const $SM_CYDOUBLECLK = 37
Global Const $SM_CXICONSPACING = 38
Global Const $SM_CYICONSPACING = 39
Global Const $SM_MENUDROPALIGNMENT = 40
Global Const $SM_PENWINDOWS = 41
Global Const $SM_DBCSENABLED = 42
Global Const $SM_CMOUSEBUTTONS = 43
Global Const $SM_SECURE = 44
Global Const $SM_CXEDGE = 45
Global Const $SM_CYEDGE = 46
Global Const $SM_CXMINSPACING = 47
Global Const $SM_CYMINSPACING = 48
Global Const $SM_CXSMICON = 49
Global Const $SM_CYSMICON = 50
Global Const $SM_CYSMCAPTION = 51
Global Const $SM_CXSMSIZE = 52
Global Const $SM_CYSMSIZE = 53
Global Const $SM_CXMENUSIZE = 54
Global Const $SM_CYMENUSIZE = 55
Global Const $SM_ARRANGE = 56
Global Const $SM_CXMINIMIZED = 57
Global Const $SM_CYMINIMIZED = 58
Global Const $SM_CXMAXTRACK = 59
Global Const $SM_CYMAXTRACK = 60
Global Const $SM_CXMAXIMIZED = 61
Global Const $SM_CYMAXIMIZED = 62
Global Const $SM_NETWORK = 63
Global Const $SM_CLEANBOOT = 67
Global Const $SM_CXDRAG = 68
Global Const $SM_CYDRAG = 69
Global Const $SM_SHOWSOUNDS = 70
Global Const $SM_CXMENUCHECK = 71
Global Const $SM_CYMENUCHECK = 72
Global Const $SM_SLOWMACHINE = 73
Global Const $SM_MIDEASTENABLED = 74
Global Const $SM_MOUSEWHEELPRESENT = 75
Global Const $SM_XVIRTUALSCREEN = 76
Global Const $SM_YVIRTUALSCREEN = 77
Global Const $SM_CXVIRTUALSCREEN = 78
Global Const $SM_CYVIRTUALSCREEN = 79
Global Const $SM_CMONITORS = 80
Global Const $SM_SAMEDISPLAYFORMAT = 81
Global Const $SM_IMMENABLED = 82
Global Const $SM_CXFOCUSBORDER = 83
Global Const $SM_CYFOCUSBORDER = 84
Global Const $SM_TABLETPC = 86
Global Const $SM_MEDIACENTER = 87
Global Const $SM_STARTER = 88
Global Const $SM_SERVERR2 = 89
Global Const $SM_CMETRICS = 90
Global Const $SM_REMOTESESSION = 4096
Global Const $SM_SHUTTINGDOWN = 8192
Global Const $SM_REMOTECONTROL = 8193
Global Const $SM_CARETBLINKINGENABLED = 8194
Global Const $BLACKNESS = 66
Global Const $CAPTUREBLT = 1073741824
Global Const $DSTINVERT = 5570569
Global Const $MERGECOPY = 12583114
Global Const $MERGEPAINT = 12255782
Global Const $NOMIRRORBITMAP = 2147483648
Global Const $NOTSRCCOPY = 3342344
Global Const $NOTSRCERASE = 1114278
Global Const $PATCOPY = 15728673
Global Const $PATINVERT = 5898313
Global Const $PATPAINT = 16452105
Global Const $SRCAND = 8913094
Global Const $SRCCOPY = 13369376
Global Const $SRCERASE = 4457256
Global Const $SRCINVERT = 6684742
Global Const $SRCPAINT = 15597702
Global Const $WHITENESS = 16711778
Global Const $DT_BOTTOM = 8
Global Const $DT_CALCRECT = 1024
Global Const $DT_CENTER = 1
Global Const $DT_EDITCONTROL = 8192
Global Const $DT_END_ELLIPSIS = 32768
Global Const $DT_EXPANDTABS = 64
Global Const $DT_EXTERNALLEADING = 512
Global Const $DT_HIDEPREFIX = 1048576
Global Const $DT_INTERNAL = 4096
Global Const $DT_LEFT = 0
Global Const $DT_MODIFYSTRING = 65536
Global Const $DT_NOCLIP = 256
Global Const $DT_NOFULLWIDTHCHARBREAK = 524288
Global Const $DT_NOPREFIX = 2048
Global Const $DT_PATH_ELLIPSIS = 16384
Global Const $DT_PREFIXONLY = 2097152
Global Const $DT_RIGHT = 2
Global Const $DT_RTLREADING = 131072
Global Const $DT_SINGLELINE = 32
Global Const $DT_TABSTOP = 128
Global Const $DT_TOP = 0
Global Const $DT_VCENTER = 4
Global Const $DT_WORDBREAK = 16
Global Const $DT_WORD_ELLIPSIS = 262144
Global Const $RDW_ERASE = 4
Global Const $RDW_FRAME = 1024
Global Const $RDW_INTERNALPAINT = 2
Global Const $RDW_INVALIDATE = 1
Global Const $RDW_NOERASE = 32
Global Const $RDW_NOFRAME = 2048
Global Const $RDW_NOINTERNALPAINT = 16
Global Const $RDW_VALIDATE = 8
Global Const $RDW_ERASENOW = 512
Global Const $RDW_UPDATENOW = 256
Global Const $RDW_ALLCHILDREN = 128
Global Const $RDW_NOCHILDREN = 64
Global Const $WM_RENDERFORMAT = 773
Global Const $WM_RENDERALLFORMATS = 774
Global Const $WM_DESTROYCLIPBOARD = 775
Global Const $WM_DRAWCLIPBOARD = 776
Global Const $WM_PAINTCLIPBOARD = 777
Global Const $WM_VSCROLLCLIPBOARD = 778
Global Const $WM_SIZECLIPBOARD = 779
Global Const $WM_ASKCBFORMATNAME = 780
Global Const $WM_CHANGECBCHAIN = 781
Global Const $WM_HSCROLLCLIPBOARD = 782
Global Const $HTERROR = + 4294967294
Global Const $HTTRANSPARENT = + 4294967295
Global Const $HTNOWHERE = 0
Global Const $HTCLIENT = 1
Global Const $HTCAPTION = 2
Global Const $HTSYSMENU = 3
Global Const $HTGROWBOX = 4
Global Const $HTSIZE = $HTGROWBOX
Global Const $HTMENU = 5
Global Const $HTHSCROLL = 6
Global Const $HTVSCROLL = 7
Global Const $HTMINBUTTON = 8
Global Const $HTMAXBUTTON = 9
Global Const $HTLEFT = 10
Global Const $HTRIGHT = 11
Global Const $HTTOP = 12
Global Const $HTTOPLEFT = 13
Global Const $HTTOPRIGHT = 14
Global Const $HTBOTTOM = 15
Global Const $HTBOTTOMLEFT = 16
Global Const $HTBOTTOMRIGHT = 17
Global Const $HTBORDER = 18
Global Const $HTREDUCE = $HTMINBUTTON
Global Const $HTZOOM = $HTMAXBUTTON
Global Const $HTSIZEFIRST = $HTLEFT
Global Const $HTSIZELAST = $HTBOTTOMRIGHT
Global Const $HTOBJECT = 19
Global Const $HTCLOSE = 20
Global Const $HTHELP = 21
Global Const $COLOR_SCROLLBAR = 0
Global Const $COLOR_BACKGROUND = 1
Global Const $COLOR_ACTIVECAPTION = 2
Global Const $COLOR_INACTIVECAPTION = 3
Global Const $COLOR_MENU = 4
Global Const $COLOR_WINDOW = 5
Global Const $COLOR_WINDOWFRAME = 6
Global Const $COLOR_MENUTEXT = 7
Global Const $COLOR_WINDOWTEXT = 8
Global Const $COLOR_CAPTIONTEXT = 9
Global Const $COLOR_ACTIVEBORDER = 10
Global Const $COLOR_INACTIVEBORDER = 11
Global Const $COLOR_APPWORKSPACE = 12
Global Const $COLOR_HIGHLIGHT = 13
Global Const $COLOR_HIGHLIGHTTEXT = 14
Global Const $COLOR_BTNFACE = 15
Global Const $COLOR_BTNSHADOW = 16
Global Const $COLOR_GRAYTEXT = 17
Global Const $COLOR_BTNTEXT = 18
Global Const $COLOR_INACTIVECAPTIONTEXT = 19
Global Const $COLOR_BTNHIGHLIGHT = 20
Global Const $COLOR_3DDKSHADOW = 21
Global Const $COLOR_3DLIGHT = 22
Global Const $COLOR_INFOTEXT = 23
Global Const $COLOR_INFOBK = 24
Global Const $COLOR_HOTLIGHT = 26
Global Const $COLOR_GRADIENTACTIVECAPTION = 27
Global Const $COLOR_GRADIENTINACTIVECAPTION = 28
Global Const $COLOR_MENUHILIGHT = 29
Global Const $COLOR_MENUBAR = 30
Global Const $COLOR_DESKTOP = 1
Global Const $COLOR_3DFACE = 15
Global Const $COLOR_3DSHADOW = 16
Global Const $COLOR_3DHIGHLIGHT = 20
Global Const $COLOR_3DHILIGHT = 20
Global Const $COLOR_BTNHILIGHT = 20
Global Const $HINST_COMMCTRL = + 4294967295
Global Const $IDB_STD_SMALL_COLOR = 0
Global Const $IDB_STD_LARGE_COLOR = 1
Global Const $IDB_VIEW_SMALL_COLOR = 4
Global Const $IDB_VIEW_LARGE_COLOR = 5
Global Const $IDB_HIST_SMALL_COLOR = 8
Global Const $IDB_HIST_LARGE_COLOR = 9
Global Const $STARTF_FORCEOFFFEEDBACK = 128
Global Const $STARTF_FORCEONFEEDBACK = 64
Global Const $STARTF_PREVENTPINNING = 8192
Global Const $STARTF_RUNFULLSCREEN = 32
Global Const $STARTF_TITLEISAPPID = 4096
Global Const $STARTF_TITLEISLINKNAME = 2048
Global Const $STARTF_USECOUNTCHARS = 8
Global Const $STARTF_USEFILLATTRIBUTE = 16
Global Const $STARTF_USEHOTKEY = 512
Global Const $STARTF_USEPOSITION = 4
Global Const $STARTF_USESHOWWINDOW = 1
Global Const $STARTF_USESIZE = 2
Global Const $STARTF_USESTDHANDLES = 256
Global Const $CDDS_PREPAINT = 1
Global Const $CDDS_POSTPAINT = 2
Global Const $CDDS_PREERASE = 3
Global Const $CDDS_POSTERASE = 4
Global Const $CDDS_ITEM = 65536
Global Const $CDDS_ITEMPREPAINT = 65537
Global Const $CDDS_ITEMPOSTPAINT = 65538
Global Const $CDDS_ITEMPREERASE = 65539
Global Const $CDDS_ITEMPOSTERASE = 65540
Global Const $CDDS_SUBITEM = 131072
Global Const $CDIS_SELECTED = 1
Global Const $CDIS_GRAYED = 2
Global Const $CDIS_DISABLED = 4
Global Const $CDIS_CHECKED = 8
Global Const $CDIS_FOCUS = 16
Global Const $CDIS_DEFAULT = 32
Global Const $CDIS_HOT = 64
Global Const $CDIS_MARKED = 128
Global Const $CDIS_INDETERMINATE = 256
Global Const $CDIS_SHOWKEYBOARDCUES = 512
Global Const $CDIS_NEARHOT = 1024
Global Const $CDIS_OTHERSIDEHOT = 2048
Global Const $CDIS_DROPHILITED = 4096
Global Const $CDRF_DODEFAULT = 0
Global Const $CDRF_NEWFONT = 2
Global Const $CDRF_SKIPDEFAULT = 4
Global Const $CDRF_NOTIFYPOSTPAINT = 16
Global Const $CDRF_NOTIFYITEMDRAW = 32
Global Const $CDRF_NOTIFYSUBITEMDRAW = 32
Global Const $CDRF_NOTIFYPOSTERASE = 64
Global Const $CDRF_DOERASE = 8
Global Const $CDRF_SKIPPOSTPAINT = 256
Global Const $GUI_SS_DEFAULT_GUI = BitOR ( $WS_MINIMIZEBOX , $WS_CAPTION , $WS_POPUP , $WS_SYSMENU )
Global Const $SS_LEFT = 0
Global Const $SS_CENTER = 1
Global Const $SS_RIGHT = 2
Global Const $SS_ICON = 3
Global Const $SS_BLACKRECT = 4
Global Const $SS_GRAYRECT = 5
Global Const $SS_WHITERECT = 6
Global Const $SS_BLACKFRAME = 7
Global Const $SS_GRAYFRAME = 8
Global Const $SS_WHITEFRAME = 9
Global Const $SS_SIMPLE = 11
Global Const $SS_LEFTNOWORDWRAP = 12
Global Const $SS_BITMAP = 14
Global Const $SS_ENHMETAFILE = 15
Global Const $SS_ETCHEDHORZ = 16
Global Const $SS_ETCHEDVERT = 17
Global Const $SS_ETCHEDFRAME = 18
Global Const $SS_REALSIZECONTROL = 64
Global Const $SS_NOPREFIX = 128
Global Const $SS_NOTIFY = 256
Global Const $SS_CENTERIMAGE = 512
Global Const $SS_RIGHTJUST = 1024
Global Const $SS_SUNKEN = 4096
Global Const $GUI_SS_DEFAULT_LABEL = 0
Global Const $GUI_SS_DEFAULT_GRAPHIC = 0
Global Const $GUI_SS_DEFAULT_ICON = $SS_NOTIFY
Global Const $GUI_SS_DEFAULT_PIC = $SS_NOTIFY
Global Const $STM_SETICON = 368
Global Const $STM_GETICON = 369
Global Const $STM_SETIMAGE = 370
Global Const $STM_GETIMAGE = 371
Global Const $GUI_EVENT_SINGLE = 0
Global Const $GUI_EVENT_ARRAY = 1
Global Const $GUI_EVENT_NONE = 0
Global Const $GUI_EVENT_CLOSE = + 4294967293
Global Const $GUI_EVENT_MINIMIZE = + 4294967292
Global Const $GUI_EVENT_RESTORE = + 4294967291
Global Const $GUI_EVENT_MAXIMIZE = + 4294967290
Global Const $GUI_EVENT_PRIMARYDOWN = + 4294967289
Global Const $GUI_EVENT_PRIMARYUP = + 4294967288
Global Const $GUI_EVENT_SECONDARYDOWN = + 4294967287
Global Const $GUI_EVENT_SECONDARYUP = + 4294967286
Global Const $GUI_EVENT_MOUSEMOVE = + 4294967285
Global Const $GUI_EVENT_RESIZED = + 4294967284
Global Const $GUI_EVENT_DROPPED = + 4294967283
Global Const $GUI_RUNDEFMSG = "GUI_RUNDEFMSG"
Global Const $GUI_AVISTOP = 0
Global Const $GUI_AVISTART = 1
Global Const $GUI_AVICLOSE = 2
Global Const $GUI_CHECKED = 1
Global Const $GUI_INDETERMINATE = 2
Global Const $GUI_UNCHECKED = 4
Global Const $GUI_DROPACCEPTED = 8
Global Const $GUI_NODROPACCEPTED = 4096
Global Const $GUI_ACCEPTFILES = $GUI_DROPACCEPTED
Global Const $GUI_SHOW = 16
Global Const $GUI_HIDE = 32
Global Const $GUI_ENABLE = 64
Global Const $GUI_DISABLE = 128
Global Const $GUI_FOCUS = 256
Global Const $GUI_NOFOCUS = 8192
Global Const $GUI_DEFBUTTON = 512
Global Const $GUI_EXPAND = 1024
Global Const $GUI_ONTOP = 2048
Global Const $GUI_FONTNORMAL = 0
Global Const $GUI_FONTITALIC = 2
Global Const $GUI_FONTUNDER = 4
Global Const $GUI_FONTSTRIKE = 8
Global Const $GUI_DOCKAUTO = 1
Global Const $GUI_DOCKLEFT = 2
Global Const $GUI_DOCKRIGHT = 4
Global Const $GUI_DOCKHCENTER = 8
Global Const $GUI_DOCKTOP = 32
Global Const $GUI_DOCKBOTTOM = 64
Global Const $GUI_DOCKVCENTER = 128
Global Const $GUI_DOCKWIDTH = 256
Global Const $GUI_DOCKHEIGHT = 512
Global Const $GUI_DOCKSIZE = 768
Global Const $GUI_DOCKMENUBAR = 544
Global Const $GUI_DOCKSTATEBAR = 576
Global Const $GUI_DOCKALL = 802
Global Const $GUI_DOCKBORDERS = 102
Global Const $GUI_GR_CLOSE = 1
Global Const $GUI_GR_LINE = 2
Global Const $GUI_GR_BEZIER = 4
Global Const $GUI_GR_MOVE = 6
Global Const $GUI_GR_COLOR = 8
Global Const $GUI_GR_RECT = 10
Global Const $GUI_GR_ELLIPSE = 12
Global Const $GUI_GR_PIE = 14
Global Const $GUI_GR_DOT = 16
Global Const $GUI_GR_PIXEL = 18
Global Const $GUI_GR_HINT = 20
Global Const $GUI_GR_REFRESH = 22
Global Const $GUI_GR_PENSIZE = 24
Global Const $GUI_GR_NOBKCOLOR = + 4294967294
Global Const $GUI_BKCOLOR_DEFAULT = + 4294967295
Global Const $GUI_BKCOLOR_TRANSPARENT = + 4294967294
Global Const $GUI_BKCOLOR_LV_ALTERNATE = 4261412864
Global Const $GUI_READ_DEFAULT = 0
Global Const $GUI_READ_EXTENDED = 1
Global Const $GUI_CURSOR_NOOVERRIDE = 0
Global Const $GUI_CURSOR_OVERRIDE = 1
Global Const $GUI_WS_EX_PARENTDRAG = 1048576
Global Const $OPT_COORDSRELATIVE = 0
Global Const $OPT_COORDSABSOLUTE = 1
Global Const $OPT_COORDSCLIENT = 2
Global Const $OPT_ERRORSILENT = 0
Global Const $OPT_ERRORFATAL = 1
Global Const $OPT_CAPSNOSTORE = 0
Global Const $OPT_CAPSSTORE = 1
Global Const $OPT_MATCHSTART = 1
Global Const $OPT_MATCHANY = 2
Global Const $OPT_MATCHEXACT = 3
Global Const $OPT_MATCHADVANCED = 4
Global Const $CCS_TOP = 1
Global Const $CCS_NOMOVEY = 2
Global Const $CCS_BOTTOM = 3
Global Const $CCS_NORESIZE = 4
Global Const $CCS_NOPARENTALIGN = 8
Global Const $CCS_NOHILITE = 16
Global Const $CCS_ADJUSTABLE = 32
Global Const $CCS_NODIVIDER = 64
Global Const $CCS_VERT = 128
Global Const $CCS_LEFT = 129
Global Const $CCS_NOMOVEX = 130
Global Const $CCS_RIGHT = 131
Global Const $DT_DRIVETYPE = 1
Global Const $DT_SSDSTATUS = 2
Global Const $DT_BUSTYPE = 3
Global Const $PROXY_IE = 0
Global Const $PROXY_NONE = 1
Global Const $PROXY_SPECIFIED = 2
Global Const $OBJID_WINDOW = 0
Global Const $OBJID_TITLEBAR = 4294967294
Global Const $OBJID_SIZEGRIP = 4294967289
Global Const $OBJID_CARET = 4294967288
Global Const $OBJID_CURSOR = 4294967287
Global Const $OBJID_ALERT = 4294967286
Global Const $OBJID_SOUND = 4294967285
Global Const $DLG_CENTERONTOP = 0
Global Const $DLG_NOTITLE = 1
Global Const $DLG_NOTONTOP = 2
Global Const $DLG_TEXTLEFT = 4
Global Const $DLG_TEXTRIGHT = 8
Global Const $DLG_MOVEABLE = 16
Global Const $DLG_TEXTVCENTER = 32
Global Const $IDC_UNKNOWN = 0
Global Const $IDC_APPSTARTING = 1
Global Const $IDC_ARROW = 2
Global Const $IDC_CROSS = 3
Global Const $IDC_HAND = 32649
Global Const $IDC_HELP = 4
Global Const $IDC_IBEAM = 5
Global Const $IDC_ICON = 6
Global Const $IDC_NO = 7
Global Const $IDC_SIZE = 8
Global Const $IDC_SIZEALL = 9
Global Const $IDC_SIZENESW = 10
Global Const $IDC_SIZENS = 11
Global Const $IDC_SIZENWSE = 12
Global Const $IDC_SIZEWE = 13
Global Const $IDC_UPARROW = 14
Global Const $IDC_WAIT = 15
Global Const $IDI_APPLICATION = 32512
Global Const $IDI_ASTERISK = 32516
Global Const $IDI_EXCLAMATION = 32515
Global Const $IDI_HAND = 32513
Global Const $IDI_QUESTION = 32514
Global Const $IDI_WINLOGO = 32517
Global Const $IDI_SHIELD = 32518
Global Const $IDI_ERROR = $IDI_HAND
Global Const $IDI_INFORMATION = $IDI_ASTERISK
Global Const $IDI_WARNING = $IDI_EXCLAMATION
Global Const $SD_LOGOFF = 0
Global Const $SD_SHUTDOWN = 1
Global Const $SD_REBOOT = 2
Global Const $SD_FORCE = 4
Global Const $SD_POWERDOWN = 8
Global Const $SD_FORCEHUNG = 16
Global Const $SD_STANDBY = 32
Global Const $SD_HIBERNATE = 64
Global Const $STDIN_CHILD = 1
Global Const $STDOUT_CHILD = 2
Global Const $STDERR_CHILD = 4
Global Const $STDERR_MERGED = 8
Global Const $STDIO_INHERIT_PARENT = 16
Global Const $RUN_CREATE_NEW_CONSOLE = 65536
Global Const $UBOUND_DIMENSIONS = 0
Global Const $UBOUND_ROWS = 1
Global Const $UBOUND_COLUMNS = 2
Global Const $MOUSEEVENTF_ABSOLUTE = 32768
Global Const $MOUSEEVENTF_MOVE = 1
Global Const $MOUSEEVENTF_LEFTDOWN = 2
Global Const $MOUSEEVENTF_LEFTUP = 4
Global Const $MOUSEEVENTF_RIGHTDOWN = 8
Global Const $MOUSEEVENTF_RIGHTUP = 16
Global Const $MOUSEEVENTF_MIDDLEDOWN = 32
Global Const $MOUSEEVENTF_MIDDLEUP = 64
Global Const $MOUSEEVENTF_WHEEL = 2048
Global Const $MOUSEEVENTF_XDOWN = 128
Global Const $MOUSEEVENTF_XUP = 256
Global Const $REG_NONE = 0
Global Const $REG_SZ = 1
Global Const $REG_EXPAND_SZ = 2
Global Const $REG_BINARY = 3
Global Const $REG_DWORD = 4
Global Const $REG_DWORD_LITTLE_ENDIAN = 4
Global Const $REG_DWORD_BIG_ENDIAN = 5
Global Const $REG_LINK = 6
Global Const $REG_MULTI_SZ = 7
Global Const $REG_RESOURCE_LIST = 8
Global Const $REG_FULL_RESOURCE_DESCRIPTOR = 9
Global Const $REG_RESOURCE_REQUIREMENTS_LIST = 10
Global Const $REG_QWORD = 11
Global Const $REG_QWORD_LITTLE_ENDIAN = 11
Global Const $HWND_BOTTOM = 1
Global Const $HWND_NOTOPMOST = + 4294967294
Global Const $HWND_TOP = 0
Global Const $HWND_TOPMOST = + 4294967295
Global Const $SWP_NOSIZE = 1
Global Const $SWP_NOMOVE = 2
Global Const $SWP_NOZORDER = 4
Global Const $SWP_NOREDRAW = 8
Global Const $SWP_NOACTIVATE = 16
Global Const $SWP_FRAMECHANGED = 32
Global Const $SWP_DRAWFRAME = 32
Global Const $SWP_SHOWWINDOW = 64
Global Const $SWP_HIDEWINDOW = 128
Global Const $SWP_NOCOPYBITS = 256
Global Const $SWP_NOOWNERZORDER = 512
Global Const $SWP_NOREPOSITION = 512
Global Const $SWP_NOSENDCHANGING = 1024
Global Const $SWP_DEFERERASE = 8192
Global Const $SWP_ASYNCWINDOWPOS = 16384
Global Const $KEYWORD_DEFAULT = 1
Global Const $KEYWORD_NULL = 2
Global Const $DECLARED_LOCAL = + 4294967295
Global Const $DECLARED_UNKNOWN = 0
Global Const $DECLARED_GLOBAL = 1
Global Const $ASSIGN_CREATE = 0
Global Const $ASSIGN_FORCELOCAL = 1
Global Const $ASSIGN_FORCEGLOBAL = 2
Global Const $ASSIGN_EXISTFAIL = 4
Global Const $BI_ENABLE = 0
Global Const $BI_DISABLE = 1
Global Const $BREAK_ENABLE = 1
Global Const $BREAK_DISABLE = 0
Global Const $CDTRAY_OPEN = "open"
Global Const $CDTRAY_CLOSED = "closed"
Global Const $SEND_DEFAULT = 0
Global Const $SEND_RAW = 1
Global Const $DIR_DEFAULT = 0
Global Const $DIR_EXTENDED = 1
Global Const $DIR_NORECURSE = 2
Global Const $DIR_REMOVE = 1
Global Const $DT_ALL = "ALL"
Global Const $DT_CDROM = "CDROM"
Global Const $DT_REMOVABLE = "REMOVABLE"
Global Const $DT_FIXED = "FIXED"
Global Const $DT_NETWORK = "NETWORK"
Global Const $DT_RAMDISK = "RAMDISK"
Global Const $DT_UNKNOWN = "UNKNOWN"
Global Const $DT_UNDEFINED = 1
Global Const $DT_FAT = "FAT"
Global Const $DT_FAT32 = "FAT32"
Global Const $DT_EXFAT = "exFAT"
Global Const $DT_NTFS = "NTFS"
Global Const $DT_NWFS = "NWFS"
Global Const $DT_CDFS = "CDFS"
Global Const $DT_UDF = "UDF"
Global Const $DMA_DEFAULT = 0
Global Const $DMA_PERSISTENT = 1
Global Const $DMA_AUTHENTICATION = 8
Global Const $DS_UNKNOWN = "UNKNOWN"
Global Const $DS_READY = "READY"
Global Const $DS_NOTREADY = "NOTREADY"
Global Const $DS_INVALID = "INVALID"
Global Const $MOUSE_CLICK_LEFT = "left"
Global Const $MOUSE_CLICK_RIGHT = "right"
Global Const $MOUSE_CLICK_MIDDLE = "middle"
Global Const $MOUSE_CLICK_MAIN = "main"
Global Const $MOUSE_CLICK_MENU = "menu"
Global Const $MOUSE_CLICK_PRIMARY = "primary"
Global Const $MOUSE_CLICK_SECONDARY = "secondary"
Global Const $MOUSE_WHEEL_UP = "up"
Global Const $MOUSE_WHEEL_DOWN = "down"
Global Const $NUMBER_AUTO = 0
Global Const $NUMBER_32BIT = 1
Global Const $NUMBER_64BIT = 2
Global Const $NUMBER_DOUBLE = 3
Global Const $OBJ_NAME = 1
Global Const $OBJ_STRING = 2
Global Const $OBJ_PROGID = 3
Global Const $OBJ_FILE = 4
Global Const $OBJ_MODULE = 5
Global Const $OBJ_CLSID = 6
Global Const $OBJ_IID = 7
Global Const $EXITCLOSE_NORMAL = 0
Global Const $EXITCLOSE_BYEXIT = 1
Global Const $EXITCLOSE_BYCLICK = 2
Global Const $EXITCLOSE_BYLOGOFF = 3
Global Const $EXITCLOSE_BYSUTDOWN = 4
Global Const $PROCESS_STATS_MEMORY = 0
Global Const $PROCESS_STATS_IO = 1
Global Const $PROCESS_LOW = 0
Global Const $PROCESS_BELOWNORMAL = 1
Global Const $PROCESS_NORMAL = 2
Global Const $PROCESS_ABOVENORMAL = 3
Global Const $PROCESS_HIGH = 4
Global Const $PROCESS_REALTIME = 5
Global Const $RUN_LOGON_NOPROFILE = 0
Global Const $RUN_LOGON_PROFILE = 1
Global Const $RUN_LOGON_NETWORK = 2
Global Const $RUN_LOGON_INHERIT = 4
Global Const $SOUND_NOWAIT = 0
Global Const $SOUND_WAIT = 1
Global Const $SHEX_OPEN = "open"
Global Const $SHEX_EDIT = "edit"
Global Const $SHEX_PRINT = "print"
Global Const $SHEX_PROPERTIES = "properties"
Global Const $TCP_DATA_DEFAULT = 0
Global Const $TCP_DATA_BINARY = 1
Global Const $UDP_OPEN_DEFAULT = 0
Global Const $UDP_OPEN_BROADCAST = 1
Global Const $UDP_DATA_DEFAULT = 0
Global Const $UDP_DATA_BINARY = 1
Global Const $UDP_DATA_ARRAY = 2
Global Const $TIP_NOICON = 0
Global Const $TIP_INFOICON = 1
Global Const $TIP_WARNINGICON = 2
Global Const $TIP_ERRORICON = 3
Global Const $TIP_BALLOON = 1
Global Const $TIP_CENTER = 2
Global Const $TIP_FORCEVISIBLE = 4
Global Const $WINDOWS_NOONTOP = 0
Global Const $WINDOWS_ONTOP = 1
Global Const $FC_NOOVERWRITE = 0
Global Const $FC_OVERWRITE = 1
Global Const $FC_CREATEPATH = 8
Global Const $FT_MODIFIED = 0
Global Const $FT_CREATED = 1
Global Const $FT_ACCESSED = 2
Global Const $FT_ARRAY = 0
Global Const $FT_STRING = 1
Global Const $FSF_CREATEBUTTON = 1
Global Const $FSF_NEWDIALOG = 2
Global Const $FSF_EDITCONTROL = 4
Global Const $FT_NONRECURSIVE = 0
Global Const $FT_RECURSIVE = 1
Global Const $FO_READ = 0
Global Const $FO_APPEND = 1
Global Const $FO_OVERWRITE = 2
Global Const $FO_CREATEPATH = 8
Global Const $FO_BINARY = 16
Global Const $FO_UNICODE = 32
Global Const $FO_UTF16_LE = 32
Global Const $FO_UTF16_BE = 64
Global Const $FO_UTF8 = 128
Global Const $FO_UTF8_NOBOM = 256
Global Const $FO_ANSI = 512
Global Const $FO_UTF16_LE_NOBOM = 1024
Global Const $FO_UTF16_BE_NOBOM = 2048
Global Const $FO_UTF8_FULL = 16384
Global Const $FO_FULLFILE_DETECT = 16384
Global Const $EOF = + 4294967295
Global Const $FD_FILEMUSTEXIST = 1
Global Const $FD_PATHMUSTEXIST = 2
Global Const $FD_MULTISELECT = 4
Global Const $FD_PROMPTCREATENEW = 8
Global Const $FD_PROMPTOVERWRITE = 16
Global Const $CREATE_NEW = 1
Global Const $CREATE_ALWAYS = 2
Global Const $OPEN_EXISTING = 3
Global Const $OPEN_ALWAYS = 4
Global Const $TRUNCATE_EXISTING = 5
Global Const $INVALID_SET_FILE_POINTER = + 4294967295
Global Const $FILE_BEGIN = 0
Global Const $FILE_CURRENT = 1
Global Const $FILE_END = 2
Global Const $FILE_ATTRIBUTE_READONLY = 1
Global Const $FILE_ATTRIBUTE_HIDDEN = 2
Global Const $FILE_ATTRIBUTE_SYSTEM = 4
Global Const $FILE_ATTRIBUTE_DIRECTORY = 16
Global Const $FILE_ATTRIBUTE_ARCHIVE = 32
Global Const $FILE_ATTRIBUTE_DEVICE = 64
Global Const $FILE_ATTRIBUTE_NORMAL = 128
Global Const $FILE_ATTRIBUTE_TEMPORARY = 256
Global Const $FILE_ATTRIBUTE_SPARSE_FILE = 512
Global Const $FILE_ATTRIBUTE_REPARSE_POINT = 1024
Global Const $FILE_ATTRIBUTE_COMPRESSED = 2048
Global Const $FILE_ATTRIBUTE_OFFLINE = 4096
Global Const $FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 8192
Global Const $FILE_ATTRIBUTE_ENCRYPTED = 16384
Global Const $FILE_SHARE_READ = 1
Global Const $FILE_SHARE_WRITE = 2
Global Const $FILE_SHARE_DELETE = 4
Global Const $FILE_SHARE_READWRITE = BitOR ( $FILE_SHARE_READ , $FILE_SHARE_WRITE )
Global Const $FILE_SHARE_ANY = BitOR ( $FILE_SHARE_READ , $FILE_SHARE_WRITE , $FILE_SHARE_DELETE )
Global Const $GENERIC_ALL = 268435456
Global Const $GENERIC_EXECUTE = 536870912
Global Const $GENERIC_WRITE = 1073741824
Global Const $GENERIC_READ = 2147483648
Global Const $GENERIC_READWRITE = BitOR ( $GENERIC_READ , $GENERIC_WRITE )
Global Const $FILE_ENCODING_UTF16LE = 32
Global Const $FE_ENTIRE_UTF8 = 1
Global Const $FE_PARTIALFIRST_UTF8 = 2
Global Const $FN_FULLPATH = 0
Global Const $FN_RELATIVEPATH = 1
Global Const $FV_COMMENTS = "Comments"
Global Const $FV_COMPANYNAME = "CompanyName"
Global Const $FV_FILEDESCRIPTION = "FileDescription"
Global Const $FV_FILEVERSION = "FileVersion"
Global Const $FV_INTERNALNAME = "InternalName"
Global Const $FV_LEGALCOPYRIGHT = "LegalCopyright"
Global Const $FV_LEGALTRADEMARKS = "LegalTrademarks"
Global Const $FV_ORIGINALFILENAME = "OriginalFilename"
Global Const $FV_PRODUCTNAME = "ProductName"
Global Const $FV_PRODUCTVERSION = "ProductVersion"
Global Const $FV_PRIVATEBUILD = "PrivateBuild"
Global Const $FV_SPECIALBUILD = "SpecialBuild"
Global Const $FRTA_NOCOUNT = 0
Global Const $FRTA_COUNT = 1
Global Const $FRTA_INTARRAYS = 2
Global Const $FRTA_ENTIRESPLIT = 4
Global Const $FLTA_FILESFOLDERS = 0
Global Const $FLTA_FILES = 1
Global Const $FLTA_FOLDERS = 2
Global Const $FLTAR_FILESFOLDERS = 0
Global Const $FLTAR_FILES = 1
Global Const $FLTAR_FOLDERS = 2
Global Const $FLTAR_NOHIDDEN = 4
Global Const $FLTAR_NOSYSTEM = 8
Global Const $FLTAR_NOLINK = 16
Global Const $FLTAR_NORECUR = 0
Global Const $FLTAR_RECUR = 1
Global Const $FLTAR_NOSORT = 0
Global Const $FLTAR_SORT = 1
Global Const $FLTAR_FASTSORT = 2
Global Const $FLTAR_NOPATH = 0
Global Const $FLTAR_RELPATH = 1
Global Const $FLTAR_FULLPATH = 2
Global Const $MB_OK = 0
Global Const $MB_OKCANCEL = 1
Global Const $MB_ABORTRETRYIGNORE = 2
Global Const $MB_YESNOCANCEL = 3
Global Const $MB_YESNO = 4
Global Const $MB_RETRYCANCEL = 5
Global Const $MB_CANCELTRYCONTINUE = 6
Global Const $MB_HELP = 16384
Global Const $MB_ICONSTOP = 16
Global Const $MB_ICONERROR = 16
Global Const $MB_ICONHAND = 16
Global Const $MB_ICONQUESTION = 32
Global Const $MB_ICONEXCLAMATION = 48
Global Const $MB_ICONWARNING = 48
Global Const $MB_ICONINFORMATION = 64
Global Const $MB_ICONASTERISK = 64
Global Const $MB_USERICON = 128
Global Const $MB_DEFBUTTON1 = 0
Global Const $MB_DEFBUTTON2 = 256
Global Const $MB_DEFBUTTON3 = 512
Global Const $MB_DEFBUTTON4 = 768
Global Const $MB_APPLMODAL = 0
Global Const $MB_SYSTEMMODAL = 4096
Global Const $MB_TASKMODAL = 8192
Global Const $MB_DEFAULT_DESKTOP_ONLY = 131072
Global Const $MB_RIGHT = 524288
Global Const $MB_RTLREADING = 1048576
Global Const $MB_SETFOREGROUND = 65536
Global Const $MB_TOPMOST = 262144
Global Const $MB_SERVICE_NOTIFICATION = 2097152
Global Const $MB_RIGHTJUSTIFIED = $MB_RIGHT
Global Const $IDTIMEOUT = + 4294967295
Global Const $IDOK = 1
Global Const $IDCANCEL = 2
Global Const $IDABORT = 3
Global Const $IDRETRY = 4
Global Const $IDIGNORE = 5
Global Const $IDYES = 6
Global Const $IDNO = 7
Global Const $IDCLOSE = 8
Global Const $IDHELP = 9
Global Const $IDTRYAGAIN = 10
Global Const $IDCONTINUE = 11
Global Const $SE_ASSIGNPRIMARYTOKEN_NAME = "SeAssignPrimaryTokenPrivilege"
Global Const $SE_AUDIT_NAME = "SeAuditPrivilege"
Global Const $SE_BACKUP_NAME = "SeBackupPrivilege"
Global Const $SE_CHANGE_NOTIFY_NAME = "SeChangeNotifyPrivilege"
Global Const $SE_CREATE_GLOBAL_NAME = "SeCreateGlobalPrivilege"
Global Const $SE_CREATE_PAGEFILE_NAME = "SeCreatePagefilePrivilege"
Global Const $SE_CREATE_PERMANENT_NAME = "SeCreatePermanentPrivilege"
Global Const $SE_CREATE_SYMBOLIC_LINK_NAME = "SeCreateSymbolicLinkPrivilege"
Global Const $SE_CREATE_TOKEN_NAME = "SeCreateTokenPrivilege"
Global Const $SE_DEBUG_NAME = "SeDebugPrivilege"
Global Const $SE_ENABLE_DELEGATION_NAME = "SeEnableDelegationPrivilege"
Global Const $SE_IMPERSONATE_NAME = "SeImpersonatePrivilege"
Global Const $SE_INC_BASE_PRIORITY_NAME = "SeIncreaseBasePriorityPrivilege"
Global Const $SE_INC_WORKING_SET_NAME = "SeIncreaseWorkingSetPrivilege"
Global Const $SE_INCREASE_QUOTA_NAME = "SeIncreaseQuotaPrivilege"
Global Const $SE_LOAD_DRIVER_NAME = "SeLoadDriverPrivilege"
Global Const $SE_LOCK_MEMORY_NAME = "SeLockMemoryPrivilege"
Global Const $SE_MACHINE_ACCOUNT_NAME = "SeMachineAccountPrivilege"
Global Const $SE_MANAGE_VOLUME_NAME = "SeManageVolumePrivilege"
Global Const $SE_PROF_SINGLE_PROCESS_NAME = "SeProfileSingleProcessPrivilege"
Global Const $SE_RELABEL_NAME = "SeRelabelPrivilege"
Global Const $SE_REMOTE_SHUTDOWN_NAME = "SeRemoteShutdownPrivilege"
Global Const $SE_RESTORE_NAME = "SeRestorePrivilege"
Global Const $SE_SECURITY_NAME = "SeSecurityPrivilege"
Global Const $SE_SHUTDOWN_NAME = "SeShutdownPrivilege"
Global Const $SE_SYNC_AGENT_NAME = "SeSyncAgentPrivilege"
Global Const $SE_SYSTEM_ENVIRONMENT_NAME = "SeSystemEnvironmentPrivilege"
Global Const $SE_SYSTEM_PROFILE_NAME = "SeSystemProfilePrivilege"
Global Const $SE_SYSTEMTIME_NAME = "SeSystemtimePrivilege"
Global Const $SE_TAKE_OWNERSHIP_NAME = "SeTakeOwnershipPrivilege"
Global Const $SE_TCB_NAME = "SeTcbPrivilege"
Global Const $SE_TIME_ZONE_NAME = "SeTimeZonePrivilege"
Global Const $SE_TRUSTED_CREDMAN_ACCESS_NAME = "SeTrustedCredManAccessPrivilege"
Global Const $SE_UNSOLICITED_INPUT_NAME = "SeUnsolicitedInputPrivilege"
Global Const $SE_UNDOCK_NAME = "SeUndockPrivilege"
Global Const $SE_PRIVILEGE_ENABLED_BY_DEFAULT = 1
Global Const $SE_PRIVILEGE_ENABLED = 2
Global Const $SE_PRIVILEGE_REMOVED = 4
Global Const $SE_PRIVILEGE_USED_FOR_ACCESS = 2147483648
Global Const $SE_GROUP_MANDATORY = 1
Global Const $SE_GROUP_ENABLED_BY_DEFAULT = 2
Global Const $SE_GROUP_ENABLED = 4
Global Const $SE_GROUP_OWNER = 8
Global Const $SE_GROUP_USE_FOR_DENY_ONLY = 16
Global Const $SE_GROUP_INTEGRITY = 32
Global Const $SE_GROUP_INTEGRITY_ENABLED = 64
Global Const $SE_GROUP_RESOURCE = 536870912
Global Const $SE_GROUP_LOGON_ID = 3221225472
Global Enum $TOKENPRIMARY = 1 , $TOKENIMPERSONATION
Global Enum $SECURITYANONYMOUS = 0 , $SECURITYIDENTIFICATION , $SECURITYIMPERSONATION , $SECURITYDELEGATION
Global Enum $TOKENUSER = 1 , $TOKENGROUPS , $TOKENPRIVILEGES , $TOKENOWNER , $TOKENPRIMARYGROUP , $TOKENDEFAULTDACL , $TOKENSOURCE , $TOKENTYPE , $TOKENIMPERSONATIONLEVEL , $TOKENSTATISTICS , $TOKENRESTRICTEDSIDS , $TOKENSESSIONID , $TOKENGROUPSANDPRIVILEGES , $TOKENSESSIONREFERENCE , $TOKENSANDBOXINERT , $TOKENAUDITPOLICY , $TOKENORIGIN , $TOKENELEVATIONTYPE , $TOKENLINKEDTOKEN , $TOKENELEVATION , $TOKENHASRESTRICTIONS , $TOKENACCESSINFORMATION , $TOKENVIRTUALIZATIONALLOWED , $TOKENVIRTUALIZATIONENABLED , $TOKENINTEGRITYLEVEL , $TOKENUIACCESS , $TOKENMANDATORYPOLICY , $TOKENLOGONSID
Global Const $TOKEN_ASSIGN_PRIMARY = 1
Global Const $TOKEN_DUPLICATE = 2
Global Const $TOKEN_IMPERSONATE = 4
Global Const $TOKEN_QUERY = 8
Global Const $TOKEN_QUERY_SOURCE = 16
Global Const $TOKEN_ADJUST_PRIVILEGES = 32
Global Const $TOKEN_ADJUST_GROUPS = 64
Global Const $TOKEN_ADJUST_DEFAULT = 128
Global Const $TOKEN_ADJUST_SESSIONID = 256
Global Const $TOKEN_ALL_ACCESS = 983551
Global Const $TOKEN_READ = 131080
Global Const $TOKEN_WRITE = 131296
Global Const $TOKEN_EXECUTE = 131072
Global Const $TOKEN_HAS_TRAVERSE_PRIVILEGE = 1
Global Const $TOKEN_HAS_BACKUP_PRIVILEGE = 2
Global Const $TOKEN_HAS_RESTORE_PRIVILEGE = 4
Global Const $TOKEN_HAS_ADMIN_GROUP = 8
Global Const $TOKEN_IS_RESTRICTED = 16
Global Const $TOKEN_SESSION_NOT_REFERENCED = 32
Global Const $TOKEN_SANDBOX_INERT = 64
Global Const $TOKEN_HAS_IMPERSONATE_PRIVILEGE = 128
Global Const $RIGHTS_DELETE = 65536
Global Const $READ_CONTROL = 131072
Global Const $WRITE_DAC = 262144
Global Const $WRITE_OWNER = 524288
Global Const $SYNCHRONIZE = 1048576
Global Const $ACCESS_SYSTEM_SECURITY = 16777216
Global Const $STANDARD_RIGHTS_REQUIRED = 983040
Global Const $STANDARD_RIGHTS_READ = $READ_CONTROL
Global Const $STANDARD_RIGHTS_WRITE = $READ_CONTROL
Global Const $STANDARD_RIGHTS_EXECUTE = $READ_CONTROL
Global Const $STANDARD_RIGHTS_ALL = 2031616
Global Const $SPECIFIC_RIGHTS_ALL = 65535
Global Enum $NOT_USED_ACCESS = 0 , $GRANT_ACCESS , $SET_ACCESS , $DENY_ACCESS , $REVOKE_ACCESS , $SET_AUDIT_SUCCESS , $SET_AUDIT_FAILURE
Global Enum $TRUSTEE_IS_UNKNOWN = 0 , $TRUSTEE_IS_USER , $TRUSTEE_IS_GROUP , $TRUSTEE_IS_DOMAIN , $TRUSTEE_IS_ALIAS , $TRUSTEE_IS_WELL_KNOWN_GROUP , $TRUSTEE_IS_DELETED , $TRUSTEE_IS_INVALID , $TRUSTEE_IS_COMPUTER
Global Const $LOGON_WITH_PROFILE = 1
Global Const $LOGON_NETCREDENTIALS_ONLY = 2
Global Enum $SIDTYPEUSER = 1 , $SIDTYPEGROUP , $SIDTYPEDOMAIN , $SIDTYPEALIAS , $SIDTYPEWELLKNOWNGROUP , $SIDTYPEDELETEDACCOUNT , $SIDTYPEINVALID , $SIDTYPEUNKNOWN , $SIDTYPECOMPUTER , $SIDTYPELABEL
Global Const $SID_ADMINISTRATORS = "S-1-5-32-544"
Global Const $SID_USERS = "S-1-5-32-545"
Global Const $SID_GUESTS = "S-1-5-32-546"
Global Const $SID_ACCOUNT_OPERATORS = "S-1-5-32-548"
Global Const $SID_SERVER_OPERATORS = "S-1-5-32-549"
Global Const $SID_PRINT_OPERATORS = "S-1-5-32-550"
Global Const $SID_BACKUP_OPERATORS = "S-1-5-32-551"
Global Const $SID_REPLICATOR = "S-1-5-32-552"
Global Const $SID_OWNER = "S-1-3-0"
Global Const $SID_EVERYONE = "S-1-1-0"
Global Const $SID_NETWORK = "S-1-5-2"
Global Const $SID_INTERACTIVE = "S-1-5-4"
Global Const $SID_SYSTEM = "S-1-5-18"
Global Const $SID_AUTHENTICATED_USERS = "S-1-5-11"
Global Const $SID_SCHANNEL_AUTHENTICATION = "S-1-5-64-14"
Global Const $SID_DIGEST_AUTHENTICATION = "S-1-5-64-21"
Global Const $SID_NT_SERVICE = "S-1-5-80"
Global Const $SID_UNTRUSTED_MANDATORY_LEVEL = "S-1-16-0"
Global Const $SID_LOW_MANDATORY_LEVEL = "S-1-16-4096"
Global Const $SID_MEDIUM_MANDATORY_LEVEL = "S-1-16-8192"
Global Const $SID_MEDIUM_PLUS_MANDATORY_LEVEL = "S-1-16-8448"
Global Const $SID_HIGH_MANDATORY_LEVEL = "S-1-16-12288"
Global Const $SID_SYSTEM_MANDATORY_LEVEL = "S-1-16-16384"
Global Const $SID_PROTECTED_PROCESS_MANDATORY_LEVEL = "S-1-16-20480"
Global Const $SID_SECURE_PROCESS_MANDATORY_LEVEL = "S-1-16-28672"
Global Const $SID_ALL_SERVICES = "S-1-5-80-0"
Func _WINAPI_GETLASTERROR ( Const $_ICURRENTERROR = @error , Const $_ICURRENTEXTENDED = @extended )
	Local $ARESULT = DllCall ( "kernel32.dll" , "dword" , "GetLastError" )
	Return SetError ( $_ICURRENTERROR , $_ICURRENTEXTENDED , $ARESULT [ 0 ] )
EndFunc
Func _WINAPI_SETLASTERROR ( $IERRORCODE , Const $_ICURRENTERROR = @error , Const $_ICURRENTEXTENDED = @extended )
	DllCall ( "kernel32.dll" , "none" , "SetLastError" , "dword" , $IERRORCODE )
	Return SetError ( $_ICURRENTERROR , $_ICURRENTEXTENDED , Null )
EndFunc
Func __COMERRORFORMATING ( $OCOMERROR , $SPREFIX = @TAB )
	Local Const $STR_STRIPTRAILING = 2
	Local $SERROR = "COM Error encountered in " & @ScriptName & " (" & $OCOMERROR .Scriptline & ") :" & @CRLF & $SPREFIX & "Number        " & @TAB & "= 0x" & Hex ( $OCOMERROR .Number , 8 ) & " (" & $OCOMERROR .Number & ")" & @CRLF & $SPREFIX & "WinDescription" & @TAB & "= " & StringStripWS ( $OCOMERROR .WinDescription , $STR_STRIPTRAILING ) & @CRLF & $SPREFIX & "Description   " & @TAB & "= " & StringStripWS ( $OCOMERROR .Description , $STR_STRIPTRAILING ) & @CRLF & $SPREFIX & "Source        " & @TAB & "= " & $OCOMERROR .Source & @CRLF & $SPREFIX & "HelpFile      " & @TAB & "= " & $OCOMERROR .HelpFile & @CRLF & $SPREFIX & "HelpContext   " & @TAB & "= " & $OCOMERROR .HelpContext & @CRLF & $SPREFIX & "LastDllError  " & @TAB & "= " & $OCOMERROR .LastDllError & @CRLF & $SPREFIX & "Retcode       " & @TAB & "= 0x" & Hex ( $OCOMERROR .retcode )
	Return $SERROR
EndFunc
Func _SECURITY__ADJUSTTOKENPRIVILEGES ( $HTOKEN , $BDISABLEALL , $TNEWSTATE , $IBUFFERLEN , $TPREVSTATE = 0 , $PREQUIRED = 0 )
	Local $ACALL = DllCall ( "advapi32.dll" , "bool" , "AdjustTokenPrivileges" , "handle" , $HTOKEN , "bool" , $BDISABLEALL , "struct*" , $TNEWSTATE , "dword" , $IBUFFERLEN , "struct*" , $TPREVSTATE , "struct*" , $PREQUIRED )
	If @error Then Return SetError ( @error , @extended , False )
	Return Not ( $ACALL [ 0 ] = 0 )
EndFunc
Func _SECURITY__CREATEPROCESSWITHTOKEN ( $HTOKEN , $ILOGONFLAGS , $SCOMMANDLINE , $ICREATIONFLAGS , $SCURDIR , $TSTARTUPINFO , $TPROCESS_INFORMATION )
	Local $ACALL = DllCall ( "advapi32.dll" , "bool" , "CreateProcessWithTokenW" , "handle" , $HTOKEN , "dword" , $ILOGONFLAGS , "ptr" , 0 , "wstr" , $SCOMMANDLINE , "dword" , $ICREATIONFLAGS , "struct*" , 0 , "wstr" , $SCURDIR , "struct*" , $TSTARTUPINFO , "struct*" , $TPROCESS_INFORMATION )
	If @error Or Not $ACALL [ 0 ] Then Return SetError ( @error , @extended , False )
	Return True
EndFunc
Func _SECURITY__DUPLICATETOKENEX ( $HEXISTINGTOKEN , $IDESIREDACCESS , $IIMPERSONATIONLEVEL , $ITOKENTYPE )
	Local $ACALL = DllCall ( "advapi32.dll" , "bool" , "DuplicateTokenEx" , "handle" , $HEXISTINGTOKEN , "dword" , $IDESIREDACCESS , "struct*" , 0 , "int" , $IIMPERSONATIONLEVEL , "int" , $ITOKENTYPE , "handle*" , 0 )
	If @error Or Not $ACALL [ 0 ] Then Return SetError ( @error , @extended , 0 )
	Return $ACALL [ 6 ]
EndFunc
Func _SECURITY__GETACCOUNTSID ( $SACCOUNT , $SSYSTEM = "" )
	Local $AACCT = _SECURITY__LOOKUPACCOUNTNAME ( $SACCOUNT , $SSYSTEM )
	If @error Then Return SetError ( @error , @extended , 0 )
	If IsArray ( $AACCT ) Then Return _SECURITY__STRINGSIDTOSID ( $AACCT [ 0 ] )
	Return ""
EndFunc
Func _SECURITY__GETLENGTHSID ( $PSID )
	If Not _SECURITY__ISVALIDSID ( $PSID ) Then Return SetError ( @error + 10 , @extended , 0 )
	Local $ACALL = DllCall ( "advapi32.dll" , "dword" , "GetLengthSid" , "struct*" , $PSID )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ACALL [ 0 ]
EndFunc
Func _SECURITY__GETTOKENINFORMATION ( $HTOKEN , $ICLASS )
	Local $ACALL = DllCall ( "advapi32.dll" , "bool" , "GetTokenInformation" , "handle" , $HTOKEN , "int" , $ICLASS , "struct*" , 0 , "dword" , 0 , "dword*" , 0 )
	If @error Or Not $ACALL [ 5 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Local $ILEN = $ACALL [ 5 ]
	Local $TBUFFER = DllStructCreate ( "byte[" & $ILEN & "]" )
	$ACALL = DllCall ( "advapi32.dll" , "bool" , "GetTokenInformation" , "handle" , $HTOKEN , "int" , $ICLASS , "struct*" , $TBUFFER , "dword" , DllStructGetSize ( $TBUFFER ) , "dword*" , 0 )
	If @error Or Not $ACALL [ 0 ] Then Return SetError ( @error , @extended , 0 )
	Return $TBUFFER
EndFunc
Func _SECURITY__IMPERSONATESELF ( $ILEVEL = $SECURITYIMPERSONATION )
	Local $ACALL = DllCall ( "advapi32.dll" , "bool" , "ImpersonateSelf" , "int" , $ILEVEL )
	If @error Then Return SetError ( @error , @extended , False )
	Return Not ( $ACALL [ 0 ] = 0 )
EndFunc
Func _SECURITY__ISVALIDSID ( $PSID )
	Local $ACALL = DllCall ( "advapi32.dll" , "bool" , "IsValidSid" , "struct*" , $PSID )
	If @error Then Return SetError ( @error , @extended , False )
	Return Not ( $ACALL [ 0 ] = 0 )
EndFunc
Func _SECURITY__LOOKUPACCOUNTNAME ( $SACCOUNT , $SSYSTEM = "" )
	Local $TDATA = DllStructCreate ( "byte SID[256]" )
	Local $ACALL = DllCall ( "advapi32.dll" , "bool" , "LookupAccountNameW" , "wstr" , $SSYSTEM , "wstr" , $SACCOUNT , "struct*" , $TDATA , "dword*" , DllStructGetSize ( $TDATA ) , "wstr" , "" , "dword*" , DllStructGetSize ( $TDATA ) , "int*" , 0 )
	If @error Or Not $ACALL [ 0 ] Then Return SetError ( @error , @extended , 0 )
	Local $AACCT [ 3 ]
	$AACCT [ 0 ] = _SECURITY__SIDTOSTRINGSID ( DllStructGetPtr ( $TDATA , "SID" ) )
	$AACCT [ 1 ] = $ACALL [ 5 ]
	$AACCT [ 2 ] = $ACALL [ 7 ]
	Return $AACCT
EndFunc
Func _SECURITY__LOOKUPACCOUNTSID ( $VSID , $SSYSTEM = "" )
	Local $PSID , $AACCT [ 3 ]
	If IsString ( $VSID ) Then
		$PSID = _SECURITY__STRINGSIDTOSID ( $VSID )
	Else
		$PSID = $VSID
	EndIf
	If Not _SECURITY__ISVALIDSID ( $PSID ) Then Return SetError ( @error + 10 , @extended , 0 )
	Local $STYPESYSTEM = "ptr"
	If $SSYSTEM Then $STYPESYSTEM = "wstr"
	Local $ACALL = DllCall ( "advapi32.dll" , "bool" , "LookupAccountSidW" , $STYPESYSTEM , $SSYSTEM , "struct*" , $PSID , "wstr" , "" , "dword*" , 65536 , "wstr" , "" , "dword*" , 65536 , "int*" , 0 )
	If @error Or Not $ACALL [ 0 ] Then Return SetError ( @error , @extended , 0 )
	Local $AACCT [ 3 ]
	$AACCT [ 0 ] = $ACALL [ 3 ]
	$AACCT [ 1 ] = $ACALL [ 5 ]
	$AACCT [ 2 ] = $ACALL [ 7 ]
	Return $AACCT
EndFunc
Func _SECURITY__LOOKUPPRIVILEGEVALUE ( $SSYSTEM , $SNAME )
	Local $ACALL = DllCall ( "advapi32.dll" , "bool" , "LookupPrivilegeValueW" , "wstr" , $SSYSTEM , "wstr" , $SNAME , "int64*" , 0 )
	If @error Or Not $ACALL [ 0 ] Then Return SetError ( @error , @extended , 0 )
	Return $ACALL [ 3 ]
EndFunc
Func _SECURITY__OPENPROCESSTOKEN ( $HPROCESS , $IACCESS )
	Local $ACALL = DllCall ( "advapi32.dll" , "bool" , "OpenProcessToken" , "handle" , $HPROCESS , "dword" , $IACCESS , "handle*" , 0 )
	If @error Or Not $ACALL [ 0 ] Then Return SetError ( @error , @extended , 0 )
	Return $ACALL [ 3 ]
EndFunc
Func _SECURITY__OPENTHREADTOKEN ( $IACCESS , $HTHREAD = 0 , $BOPENASSELF = False )
	If $HTHREAD = 0 Then
		Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "GetCurrentThread" )
		If @error Then Return SetError ( @error + 10 , @extended , 0 )
		$HTHREAD = $ARESULT [ 0 ]
	EndIf
	Local $ACALL = DllCall ( "advapi32.dll" , "bool" , "OpenThreadToken" , "handle" , $HTHREAD , "dword" , $IACCESS , "bool" , $BOPENASSELF , "handle*" , 0 )
	If @error Or Not $ACALL [ 0 ] Then Return SetError ( @error , @extended , 0 )
	Return $ACALL [ 4 ]
EndFunc
Func _SECURITY__OPENTHREADTOKENEX ( $IACCESS , $HTHREAD = 0 , $BOPENASSELF = False )
	Local $HTOKEN = _SECURITY__OPENTHREADTOKEN ( $IACCESS , $HTHREAD , $BOPENASSELF )
	If $HTOKEN = 0 Then
		Local Const $ERROR_NO_TOKEN = 1008
		If _WINAPI_GETLASTERROR ( ) <> $ERROR_NO_TOKEN Then Return SetError ( 20 , _WINAPI_GETLASTERROR ( ) , 0 )
		If Not _SECURITY__IMPERSONATESELF ( ) Then Return SetError ( @error + 10 , _WINAPI_GETLASTERROR ( ) , 0 )
		$HTOKEN = _SECURITY__OPENTHREADTOKEN ( $IACCESS , $HTHREAD , $BOPENASSELF )
		If $HTOKEN = 0 Then Return SetError ( @error , _WINAPI_GETLASTERROR ( ) , 0 )
	EndIf
	Return $HTOKEN
EndFunc
Func _SECURITY__SETPRIVILEGE ( $HTOKEN , $SPRIVILEGE , $BENABLE )
	Local $ILUID = _SECURITY__LOOKUPPRIVILEGEVALUE ( "" , $SPRIVILEGE )
	If $ILUID = 0 Then Return SetError ( @error + 10 , @extended , False )
	Local Const $TAGTOKEN_PRIVILEGES = "dword Count;align 4;int64 LUID;dword Attributes"
	Local $TCURRSTATE = DllStructCreate ( $TAGTOKEN_PRIVILEGES )
	Local $ICURRSTATE = DllStructGetSize ( $TCURRSTATE )
	Local $TPREVSTATE = DllStructCreate ( $TAGTOKEN_PRIVILEGES )
	Local $IPREVSTATE = DllStructGetSize ( $TPREVSTATE )
	Local $TREQUIRED = DllStructCreate ( "int Data" )
	DllStructSetData ( $TCURRSTATE , "Count" , 1 )
	DllStructSetData ( $TCURRSTATE , "LUID" , $ILUID )
	If Not _SECURITY__ADJUSTTOKENPRIVILEGES ( $HTOKEN , False , $TCURRSTATE , $ICURRSTATE , $TPREVSTATE , $TREQUIRED ) Then Return SetError ( 2 , @error , False )
	DllStructSetData ( $TPREVSTATE , "Count" , 1 )
	DllStructSetData ( $TPREVSTATE , "LUID" , $ILUID )
	Local $IATTRIBUTES = DllStructGetData ( $TPREVSTATE , "Attributes" )
	If $BENABLE Then
		$IATTRIBUTES = BitOR ( $IATTRIBUTES , $SE_PRIVILEGE_ENABLED )
	Else
		$IATTRIBUTES = BitAND ( $IATTRIBUTES , BitNOT ( $SE_PRIVILEGE_ENABLED ) )
	EndIf
	DllStructSetData ( $TPREVSTATE , "Attributes" , $IATTRIBUTES )
	If Not _SECURITY__ADJUSTTOKENPRIVILEGES ( $HTOKEN , False , $TPREVSTATE , $IPREVSTATE , $TCURRSTATE , $TREQUIRED ) Then Return SetError ( 3 , @error , False )
	Return True
EndFunc
Func _SECURITY__SETTOKENINFORMATION ( $HTOKEN , $ITOKENINFORMATION , $VTOKENINFORMATION , $ITOKENINFORMATIONLENGTH )
	Local $ACALL = DllCall ( "advapi32.dll" , "bool" , "SetTokenInformation" , "handle" , $HTOKEN , "int" , $ITOKENINFORMATION , "struct*" , $VTOKENINFORMATION , "dword" , $ITOKENINFORMATIONLENGTH )
	If @error Or Not $ACALL [ 0 ] Then Return SetError ( @error , @extended , False )
	Return True
EndFunc
Func _SECURITY__SIDTOSTRINGSID ( $PSID )
	If Not _SECURITY__ISVALIDSID ( $PSID ) Then Return SetError ( @error + 10 , 0 , "" )
	Local $ACALL = DllCall ( "advapi32.dll" , "bool" , "ConvertSidToStringSidW" , "struct*" , $PSID , "ptr*" , 0 )
	If @error Or Not $ACALL [ 0 ] Then Return SetError ( @error , @extended , "" )
	Local $PSTRINGSID = $ACALL [ 2 ]
	Local $ALEN = DllCall ( "kernel32.dll" , "int" , "lstrlenW" , "struct*" , $PSTRINGSID )
	Local $SSID = DllStructGetData ( DllStructCreate ( "wchar Text[" & $ALEN [ 0 ] + 1 & "]" , $PSTRINGSID ) , "Text" )
	DllCall ( "kernel32.dll" , "handle" , "LocalFree" , "handle" , $PSTRINGSID )
	Return $SSID
EndFunc
Func _SECURITY__SIDTYPESTR ( $ITYPE )
	Switch $ITYPE
	Case $SIDTYPEUSER
		Return "User"
	Case $SIDTYPEGROUP
		Return "Group"
	Case $SIDTYPEDOMAIN
		Return "Domain"
	Case $SIDTYPEALIAS
		Return "Alias"
	Case $SIDTYPEWELLKNOWNGROUP
		Return "Well Known Group"
	Case $SIDTYPEDELETEDACCOUNT
		Return "Deleted Account"
	Case $SIDTYPEINVALID
		Return "Invalid"
	Case $SIDTYPEUNKNOWN
		Return "Unknown Type"
	Case $SIDTYPECOMPUTER
		Return "Computer"
	Case $SIDTYPELABEL
		Return "A mandatory integrity label SID"
Case Else
		Return "Unknown SID Type"
	EndSwitch
EndFunc
Func _SECURITY__STRINGSIDTOSID ( $SSID )
	Local $ACALL = DllCall ( "advapi32.dll" , "bool" , "ConvertStringSidToSidW" , "wstr" , $SSID , "ptr*" , 0 )
	If @error Or Not $ACALL [ 0 ] Then Return SetError ( @error , @extended , 0 )
	Local $PSID = $ACALL [ 2 ]
	Local $TBUFFER = DllStructCreate ( "byte Data[" & _SECURITY__GETLENGTHSID ( $PSID ) & "]" , $PSID )
	Local $TSID = DllStructCreate ( "byte Data[" & DllStructGetSize ( $TBUFFER ) & "]" )
	DllStructSetData ( $TSID , "Data" , DllStructGetData ( $TBUFFER , "Data" ) )
	DllCall ( "kernel32.dll" , "handle" , "LocalFree" , "handle" , $PSID )
	Return $TSID
EndFunc
Func _SENDMESSAGE ( $HWND , $IMSG , $WPARAM = 0 , $LPARAM = 0 , $IRETURN = 0 , $WPARAMTYPE = "wparam" , $LPARAMTYPE = "lparam" , $SRETURNTYPE = "lresult" )
	Local $ARESULT = DllCall ( "user32.dll" , $SRETURNTYPE , "SendMessageW" , "hwnd" , $HWND , "uint" , $IMSG , $WPARAMTYPE , $WPARAM , $LPARAMTYPE , $LPARAM )
	If @error Then Return SetError ( @error , @extended , "" )
	If $IRETURN >= 0 And $IRETURN <= 4 Then Return $ARESULT [ $IRETURN ]
	Return $ARESULT
EndFunc
Func _SENDMESSAGEA ( $HWND , $IMSG , $WPARAM = 0 , $LPARAM = 0 , $IRETURN = 0 , $WPARAMTYPE = "wparam" , $LPARAMTYPE = "lparam" , $SRETURNTYPE = "lresult" )
	Local $ARESULT = DllCall ( "user32.dll" , $SRETURNTYPE , "SendMessageA" , "hwnd" , $HWND , "uint" , $IMSG , $WPARAMTYPE , $WPARAM , $LPARAMTYPE , $LPARAM )
	If @error Then Return SetError ( @error , @extended , "" )
	If $IRETURN >= 0 And $IRETURN <= 4 Then Return $ARESULT [ $IRETURN ]
	Return $ARESULT
EndFunc
Global Const $STR_NOCASESENSE = 0
Global Const $STR_CASESENSE = 1
Global Const $STR_NOCASESENSEBASIC = 2
Global Const $STR_STRIPLEADING = 1
Global Const $STR_STRIPTRAILING = 2
Global Const $STR_STRIPSPACES = 4
Global Const $STR_STRIPALL = 8
Global Const $STR_CHRSPLIT = 0
Global Const $STR_ENTIRESPLIT = 1
Global Const $STR_NOCOUNT = 2
Global Const $STR_REGEXPMATCH = 0
Global Const $STR_REGEXPARRAYMATCH = 1
Global Const $STR_REGEXPARRAYFULLMATCH = 2
Global Const $STR_REGEXPARRAYGLOBALMATCH = 3
Global Const $STR_REGEXPARRAYGLOBALFULLMATCH = 4
Global Const $STR_ENDISSTART = 0
Global Const $STR_ENDNOTSTART = 1
Global Const $SB_ANSI = 1
Global Const $SB_UTF16LE = 2
Global Const $SB_UTF16BE = 3
Global Const $SB_UTF8 = 4
Global Const $SE_UTF16 = 0
Global Const $SE_ANSI = 1
Global Const $SE_UTF8 = 2
Global Const $STR_UTF16 = 0
Global Const $STR_UCS2 = 1
Global Const $TAGPOINT = "struct;long X;long Y;endstruct"
Global Const $TAGRECT = "struct;long Left;long Top;long Right;long Bottom;endstruct"
Global Const $TAGSIZE = "struct;long X;long Y;endstruct"
Global Const $TAGMARGINS = "int cxLeftWidth;int cxRightWidth;int cyTopHeight;int cyBottomHeight"
Global Const $TAGFILETIME = "struct;dword Lo;dword Hi;endstruct"
Global Const $TAGSYSTEMTIME = "struct;word Year;word Month;word Dow;word Day;word Hour;word Minute;word Second;word MSeconds;endstruct"
Global Const $TAGTIME_ZONE_INFORMATION = "struct;long Bias;wchar StdName[32];word StdDate[8];long StdBias;wchar DayName[32];word DayDate[8];long DayBias;endstruct"
Global Const $TAGNMHDR = "struct;hwnd hWndFrom;uint_ptr IDFrom;INT Code;endstruct"
Global Const $TAGCOMBOBOXEXITEM = "uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;int SelectedImage;int OverlayImage;" & "int Indent;lparam Param"
Global Const $TAGNMCBEDRAGBEGIN = $TAGNMHDR & ";int ItemID;wchar szText[260]"
Global Const $TAGNMCBEENDEDIT = $TAGNMHDR & ";bool fChanged;int NewSelection;wchar szText[260];int Why"
Global Const $TAGNMCOMBOBOXEX = $TAGNMHDR & ";uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;" & "int SelectedImage;int OverlayImage;int Indent;lparam Param"
Global Const $TAGDTPRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;" & "word MinSecond;word MinMSecond;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;" & "word MaxMinute;word MaxSecond;word MaxMSecond;bool MinValid;bool MaxValid"
Global Const $TAGNMDATETIMECHANGE = $TAGNMHDR & ";dword Flag;" & $TAGSYSTEMTIME
Global Const $TAGNMDATETIMEFORMAT = $TAGNMHDR & ";ptr Format;" & $TAGSYSTEMTIME & ";ptr pDisplay;wchar Display[64]"
Global Const $TAGNMDATETIMEFORMATQUERY = $TAGNMHDR & ";ptr Format;struct;long SizeX;long SizeY;endstruct"
Global Const $TAGNMDATETIMEKEYDOWN = $TAGNMHDR & ";int VirtKey;ptr Format;" & $TAGSYSTEMTIME
Global Const $TAGNMDATETIMESTRING = $TAGNMHDR & ";ptr UserString;" & $TAGSYSTEMTIME & ";dword Flags"
Global Const $TAGEVENTLOGRECORD = "dword Length;dword Reserved;dword RecordNumber;dword TimeGenerated;dword TimeWritten;dword EventID;" & "word EventType;word NumStrings;word EventCategory;word ReservedFlags;dword ClosingRecordNumber;dword StringOffset;" & "dword UserSidLength;dword UserSidOffset;dword DataLength;dword DataOffset"
Global Const $TAGGDIP_EFFECTPARAMS_BLUR = "float Radius; bool ExpandEdge"
Global Const $TAGGDIP_EFFECTPARAMS_BRIGHTNESSCONTRAST = "int BrightnessLevel; int ContrastLevel"
Global Const $TAGGDIP_EFFECTPARAMS_COLORBALANCE = "int CyanRed; int MagentaGreen; int YellowBlue"
Global Const $TAGGDIP_EFFECTPARAMS_COLORCURVE = "int Adjustment; int Channel; int AdjustValue"
Global Const $TAGGDIP_EFFECTPARAMS_COLORLUT = "byte LutB[256]; byte LutG[256]; byte LutR[256]; byte LutA[256]"
Global Const $TAGGDIP_EFFECTPARAMS_HUESATURATIONLIGHTNESS = "int HueLevel; int SaturationLevel; int LightnessLevel"
Global Const $TAGGDIP_EFFECTPARAMS_LEVELS = "int Highlight; int Midtone; int Shadow"
Global Const $TAGGDIP_EFFECTPARAMS_REDEYECORRECTION = "uint NumberOfAreas; ptr Areas"
Global Const $TAGGDIP_EFFECTPARAMS_SHARPEN = "float Radius; float Amount"
Global Const $TAGGDIP_EFFECTPARAMS_TINT = "int Hue; int Amount"
Global Const $TAGGDIPBITMAPDATA = "uint Width;uint Height;int Stride;int Format;ptr Scan0;uint_ptr Reserved"
Global Const $TAGGDIPCOLORMATRIX = "float m[25]"
Global Const $TAGGDIPENCODERPARAM = "struct;byte GUID[16];ulong NumberOfValues;ulong Type;ptr Values;endstruct"
Global Const $TAGGDIPENCODERPARAMS = "uint Count;" & $TAGGDIPENCODERPARAM
Global Const $TAGGDIPRECTF = "struct;float X;float Y;float Width;float Height;endstruct"
Global Const $TAGGDIPSTARTUPINPUT = "uint Version;ptr Callback;bool NoThread;bool NoCodecs"
Global Const $TAGGDIPSTARTUPOUTPUT = "ptr HookProc;ptr UnhookProc"
Global Const $TAGGDIPIMAGECODECINFO = "byte CLSID[16];byte FormatID[16];ptr CodecName;ptr DllName;ptr FormatDesc;ptr FileExt;" & "ptr MimeType;dword Flags;dword Version;dword SigCount;dword SigSize;ptr SigPattern;ptr SigMask"
Global Const $TAGGDIPPENCODERPARAMS = "uint Count;byte Params[1]"
Global Const $TAGHDITEM = "uint Mask;int XY;ptr Text;handle hBMP;int TextMax;int Fmt;lparam Param;int Image;int Order;uint Type;ptr pFilter;uint State"
Global Const $TAGNMHDDISPINFO = $TAGNMHDR & ";int Item;uint Mask;ptr Text;int TextMax;int Image;lparam lParam"
Global Const $TAGNMHDFILTERBTNCLICK = $TAGNMHDR & ";int Item;" & $TAGRECT
Global Const $TAGNMHEADER = $TAGNMHDR & ";int Item;int Button;ptr pItem"
Global Const $TAGGETIPADDRESS = "byte Field4;byte Field3;byte Field2;byte Field1"
Global Const $TAGNMIPADDRESS = $TAGNMHDR & ";int Field;int Value"
Global Const $TAGLVFINDINFO = "struct;uint Flags;ptr Text;lparam Param;" & $TAGPOINT & ";uint Direction;endstruct"
Global Const $TAGLVHITTESTINFO = $TAGPOINT & ";uint Flags;int Item;int SubItem;int iGroup"
Global Const $TAGLVITEM = "struct;uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" & "int Indent;int GroupID;uint Columns;ptr pColumns;ptr piColFmt;int iGroup;endstruct"
Global Const $TAGNMLISTVIEW = $TAGNMHDR & ";int Item;int SubItem;uint NewState;uint OldState;uint Changed;" & "struct;long ActionX;long ActionY;endstruct;lparam Param"
Global Const $TAGNMLVCUSTOMDRAW = "struct;" & $TAGNMHDR & ";dword dwDrawStage;handle hdc;" & $TAGRECT & ";dword_ptr dwItemSpec;uint uItemState;lparam lItemlParam;endstruct" & ";dword clrText;dword clrTextBk;int iSubItem;dword dwItemType;dword clrFace;int iIconEffect;" & "int iIconPhase;int iPartID;int iStateID;struct;long TextLeft;long TextTop;long TextRight;long TextBottom;endstruct;uint uAlign"
Global Const $TAGNMLVDISPINFO = $TAGNMHDR & ";" & $TAGLVITEM
Global Const $TAGNMLVFINDITEM = $TAGNMHDR & ";int Start;" & $TAGLVFINDINFO
Global Const $TAGNMLVGETINFOTIP = $TAGNMHDR & ";dword Flags;ptr Text;int TextMax;int Item;int SubItem;lparam lParam"
Global Const $TAGNMITEMACTIVATE = $TAGNMHDR & ";int Index;int SubItem;uint NewState;uint OldState;uint Changed;" & $TAGPOINT & ";lparam lParam;uint KeyFlags"
Global Const $TAGNMLVKEYDOWN = "align 1;" & $TAGNMHDR & ";word VKey;uint Flags"
Global Const $TAGNMLVSCROLL = $TAGNMHDR & ";int DX;int DY"
Global Const $TAGMCHITTESTINFO = "uint Size;" & $TAGPOINT & ";uint Hit;" & $TAGSYSTEMTIME & ";" & $TAGRECT & ";int iOffset;int iRow;int iCol"
Global Const $TAGMCMONTHRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds;short Span"
Global Const $TAGMCRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds;short MinSet;short MaxSet"
Global Const $TAGMCSELRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds"
Global Const $TAGNMDAYSTATE = $TAGNMHDR & ";" & $TAGSYSTEMTIME & ";int DayState;ptr pDayState"
Global Const $TAGNMSELCHANGE = $TAGNMHDR & ";struct;word BegYear;word BegMonth;word BegDOW;word BegDay;word BegHour;word BegMinute;word BegSecond;word BegMSeconds;endstruct;" & "struct;word EndYear;word EndMonth;word EndDOW;word EndDay;word EndHour;word EndMinute;word EndSecond;word EndMSeconds;endstruct"
Global Const $TAGNMOBJECTNOTIFY = $TAGNMHDR & ";int Item;ptr piid;ptr pObject;long Result;dword dwFlags"
Global Const $TAGNMTCKEYDOWN = "align 1;" & $TAGNMHDR & ";word VKey;uint Flags"
Global Const $TAGTVITEM = "struct;uint Mask;handle hItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;int SelectedImage;" & "int Children;lparam Param;endstruct"
Global Const $TAGTVITEMEX = "struct;" & $TAGTVITEM & ";int Integral;uint uStateEx;hwnd hwnd;int iExpandedImage;int iReserved;endstruct"
Global Const $TAGNMTREEVIEW = $TAGNMHDR & ";uint Action;" & "struct;uint OldMask;handle OldhItem;uint OldState;uint OldStateMask;" & "ptr OldText;int OldTextMax;int OldImage;int OldSelectedImage;int OldChildren;lparam OldParam;endstruct;" & "struct;uint NewMask;handle NewhItem;uint NewState;uint NewStateMask;" & "ptr NewText;int NewTextMax;int NewImage;int NewSelectedImage;int NewChildren;lparam NewParam;endstruct;" & "struct;long PointX;long PointY;endstruct"
Global Const $TAGNMTVCUSTOMDRAW = "struct;" & $TAGNMHDR & ";dword DrawStage;handle HDC;" & $TAGRECT & ";dword_ptr ItemSpec;uint ItemState;lparam ItemParam;endstruct" & ";dword ClrText;dword ClrTextBk;int Level"
Global Const $TAGNMTVDISPINFO = $TAGNMHDR & ";" & $TAGTVITEM
Global Const $TAGNMTVGETINFOTIP = $TAGNMHDR & ";ptr Text;int TextMax;handle hItem;lparam lParam"
Global Const $TAGNMTVITEMCHANGE = $TAGNMHDR & ";uint Changed;handle hItem;uint StateNew;uint StateOld;lparam lParam;"
Global Const $TAGTVHITTESTINFO = $TAGPOINT & ";uint Flags;handle Item"
Global Const $TAGNMTVKEYDOWN = "align 1;" & $TAGNMHDR & ";word VKey;uint Flags"
Global Const $TAGNMMOUSE = $TAGNMHDR & ";dword_ptr ItemSpec;dword_ptr ItemData;" & $TAGPOINT & ";lparam HitInfo"
Global Const $TAGTOKEN_PRIVILEGES = "dword Count;align 4;int64 LUID;dword Attributes"
Global Const $TAGIMAGEINFO = "handle hBitmap;handle hMask;int Unused1;int Unused2;" & $TAGRECT
Global Const $TAGMENUINFO = "dword Size;INT Mask;dword Style;uint YMax;handle hBack;dword ContextHelpID;ulong_ptr MenuData"
Global Const $TAGMENUITEMINFO = "uint Size;uint Mask;uint Type;uint State;uint ID;handle SubMenu;handle BmpChecked;handle BmpUnchecked;" & "ulong_ptr ItemData;ptr TypeData;uint CCH;handle BmpItem"
Global Const $TAGREBARBANDINFO = "uint cbSize;uint fMask;uint fStyle;dword clrFore;dword clrBack;ptr lpText;uint cch;" & "int iImage;hwnd hwndChild;uint cxMinChild;uint cyMinChild;uint cx;handle hbmBack;uint wID;uint cyChild;uint cyMaxChild;" & "uint cyIntegral;uint cxIdeal;lparam lParam;uint cxHeader" & ( ( @OSVersion = "WIN_XP" ) ? "" : ";" & $TAGRECT & ";uint uChevronState" )
Global Const $TAGNMREBARAUTOBREAK = $TAGNMHDR & ";uint uBand;uint wID;lparam lParam;uint uMsg;uint fStyleCurrent;bool fAutoBreak"
Global Const $TAGNMRBAUTOSIZE = $TAGNMHDR & ";bool fChanged;" & "struct;long TargetLeft;long TargetTop;long TargetRight;long TargetBottom;endstruct;" & "struct;long ActualLeft;long ActualTop;long ActualRight;long ActualBottom;endstruct"
Global Const $TAGNMREBAR = $TAGNMHDR & ";dword dwMask;uint uBand;uint fStyle;uint wID;lparam lParam"
Global Const $TAGNMREBARCHEVRON = $TAGNMHDR & ";uint uBand;uint wID;lparam lParam;" & $TAGRECT & ";lparam lParamNM"
Global Const $TAGNMREBARCHILDSIZE = $TAGNMHDR & ";uint uBand;uint wID;" & "struct;long CLeft;long CTop;long CRight;long CBottom;endstruct;" & "struct;long BLeft;long BTop;long BRight;long BBottom;endstruct"
Global Const $TAGCOLORSCHEME = "dword Size;dword BtnHighlight;dword BtnShadow"
Global Const $TAGNMTOOLBAR = $TAGNMHDR & ";int iItem;" & "struct;int iBitmap;int idCommand;byte fsState;byte fsStyle;dword_ptr dwData;int_ptr iString;endstruct" & ";int cchText;ptr pszText;" & $TAGRECT
Global Const $TAGNMTBHOTITEM = $TAGNMHDR & ";int idOld;int idNew;dword dwFlags"
Global Const $TAGTBBUTTON = "int Bitmap;int Command;byte State;byte Style;dword_ptr Param;int_ptr String"
Global Const $TAGTBBUTTONINFO = "uint Size;dword Mask;int Command;int Image;byte State;byte Style;word CX;dword_ptr Param;ptr Text;int TextMax"
Global Const $TAGNETRESOURCE = "dword Scope;dword Type;dword DisplayType;dword Usage;ptr LocalName;ptr RemoteName;ptr Comment;ptr Provider"
Global Const $TAGOVERLAPPED = "ulong_ptr Internal;ulong_ptr InternalHigh;struct;dword Offset;dword OffsetHigh;endstruct;handle hEvent"
Global Const $TAGOPENFILENAME = "dword StructSize;hwnd hwndOwner;handle hInstance;ptr lpstrFilter;ptr lpstrCustomFilter;" & "dword nMaxCustFilter;dword nFilterIndex;ptr lpstrFile;dword nMaxFile;ptr lpstrFileTitle;dword nMaxFileTitle;" & "ptr lpstrInitialDir;ptr lpstrTitle;dword Flags;word nFileOffset;word nFileExtension;ptr lpstrDefExt;lparam lCustData;" & "ptr lpfnHook;ptr lpTemplateName;ptr pvReserved;dword dwReserved;dword FlagsEx"
Global Const $TAGBITMAPINFOHEADER = "struct;dword biSize;long biWidth;long biHeight;word biPlanes;word biBitCount;" & "dword biCompression;dword biSizeImage;long biXPelsPerMeter;long biYPelsPerMeter;dword biClrUsed;dword biClrImportant;endstruct"
Global Const $TAGBITMAPINFO = $TAGBITMAPINFOHEADER & ";dword biRGBQuad[1]"
Global Const $TAGBLENDFUNCTION = "byte Op;byte Flags;byte Alpha;byte Format"
Global Const $TAGGUID = "struct;ulong Data1;ushort Data2;ushort Data3;byte Data4[8];endstruct"
Global Const $TAGWINDOWPLACEMENT = "uint length;uint flags;uint showCmd;long ptMinPosition[2];long ptMaxPosition[2];long rcNormalPosition[4]"
Global Const $TAGWINDOWPOS = "hwnd hWnd;hwnd InsertAfter;int X;int Y;int CX;int CY;uint Flags"
Global Const $TAGSCROLLINFO = "uint cbSize;uint fMask;int nMin;int nMax;uint nPage;int nPos;int nTrackPos"
Global Const $TAGSCROLLBARINFO = "dword cbSize;" & $TAGRECT & ";int dxyLineButton;int xyThumbTop;" & "int xyThumbBottom;int reserved;dword rgstate[6]"
Global Const $TAGLOGFONT = "struct;long Height;long Width;long Escapement;long Orientation;long Weight;byte Italic;byte Underline;" & "byte Strikeout;byte CharSet;byte OutPrecision;byte ClipPrecision;byte Quality;byte PitchAndFamily;wchar FaceName[32];endstruct"
Global Const $TAGKBDLLHOOKSTRUCT = "dword vkCode;dword scanCode;dword flags;dword time;ulong_ptr dwExtraInfo"
Global Const $TAGPROCESS_INFORMATION = "handle hProcess;handle hThread;dword ProcessID;dword ThreadID"
Global Const $TAGSTARTUPINFO = "dword Size;ptr Reserved1;ptr Desktop;ptr Title;dword X;dword Y;dword XSize;dword YSize;dword XCountChars;" & "dword YCountChars;dword FillAttribute;dword Flags;word ShowWindow;word Reserved2;ptr Reserved3;handle StdInput;" & "handle StdOutput;handle StdError"
Global Const $TAGSECURITY_ATTRIBUTES = "dword Length;ptr Descriptor;bool InheritHandle"
Global Const $TAGWIN32_FIND_DATA = "dword dwFileAttributes;dword ftCreationTime[2];dword ftLastAccessTime[2];dword ftLastWriteTime[2];dword nFileSizeHigh;dword nFileSizeLow;dword dwReserved0;dword dwReserved1;wchar cFileName[260];wchar cAlternateFileName[14]"
Global Const $TAGTEXTMETRIC = "long tmHeight;long tmAscent;long tmDescent;long tmInternalLeading;long tmExternalLeading;" & "long tmAveCharWidth;long tmMaxCharWidth;long tmWeight;long tmOverhang;long tmDigitizedAspectX;long tmDigitizedAspectY;" & "wchar tmFirstChar;wchar tmLastChar;wchar tmDefaultChar;wchar tmBreakChar;byte tmItalic;byte tmUnderlined;byte tmStruckOut;" & "byte tmPitchAndFamily;byte tmCharSet"
Global Const $HGDI_ERROR = Ptr ( + 4294967295 )
Global Const $INVALID_HANDLE_VALUE = Ptr ( + 4294967295 )
Global Const $CLR_INVALID = + 4294967295
Global Const $NULL_BRUSH = 5
Global Const $NULL_PEN = 8
Global Const $BLACK_BRUSH = 4
Global Const $DKGRAY_BRUSH = 3
Global Const $DC_BRUSH = 18
Global Const $GRAY_BRUSH = 2
Global Const $HOLLOW_BRUSH = $NULL_BRUSH
Global Const $LTGRAY_BRUSH = 1
Global Const $WHITE_BRUSH = 0
Global Const $BLACK_PEN = 7
Global Const $DC_PEN = 19
Global Const $WHITE_PEN = 6
Global Const $ANSI_FIXED_FONT = 11
Global Const $ANSI_VAR_FONT = 12
Global Const $DEVICE_DEFAULT_FONT = 14
Global Const $DEFAULT_GUI_FONT = 17
Global Const $OEM_FIXED_FONT = 10
Global Const $SYSTEM_FONT = 13
Global Const $SYSTEM_FIXED_FONT = 16
Global Const $DEFAULT_PALETTE = 15
Global Const $MB_PRECOMPOSED = 1
Global Const $MB_COMPOSITE = 2
Global Const $MB_USEGLYPHCHARS = 4
Global Const $ULW_ALPHA = 2
Global Const $ULW_COLORKEY = 1
Global Const $ULW_OPAQUE = 4
Global Const $ULW_EX_NORESIZE = 8
Global Const $WH_CALLWNDPROC = 4
Global Const $WH_CALLWNDPROCRET = 12
Global Const $WH_CBT = 5
Global Const $WH_DEBUG = 9
Global Const $WH_FOREGROUNDIDLE = 11
Global Const $WH_GETMESSAGE = 3
Global Const $WH_JOURNALPLAYBACK = 1
Global Const $WH_JOURNALRECORD = 0
Global Const $WH_KEYBOARD = 2
Global Const $WH_KEYBOARD_LL = 13
Global Const $WH_MOUSE = 7
Global Const $WH_MOUSE_LL = 14
Global Const $WH_MSGFILTER = + 4294967295
Global Const $WH_SHELL = 10
Global Const $WH_SYSMSGFILTER = 6
Global Const $WPF_ASYNCWINDOWPLACEMENT = 4
Global Const $WPF_RESTORETOMAXIMIZED = 2
Global Const $WPF_SETMINPOSITION = 1
Global Const $KF_EXTENDED = 256
Global Const $KF_ALTDOWN = 8192
Global Const $KF_UP = 32768
Global Const $LLKHF_EXTENDED = BitShift ( $KF_EXTENDED , 8 )
Global Const $LLKHF_INJECTED = 16
Global Const $LLKHF_ALTDOWN = BitShift ( $KF_ALTDOWN , 8 )
Global Const $LLKHF_UP = BitShift ( $KF_UP , 8 )
Global Const $OFN_ALLOWMULTISELECT = 512
Global Const $OFN_CREATEPROMPT = 8192
Global Const $OFN_DONTADDTORECENT = 33554432
Global Const $OFN_ENABLEHOOK = 32
Global Const $OFN_ENABLEINCLUDENOTIFY = 4194304
Global Const $OFN_ENABLESIZING = 8388608
Global Const $OFN_ENABLETEMPLATE = 64
Global Const $OFN_ENABLETEMPLATEHANDLE = 128
Global Const $OFN_EXPLORER = 524288
Global Const $OFN_EXTENSIONDIFFERENT = 1024
Global Const $OFN_FILEMUSTEXIST = 4096
Global Const $OFN_FORCESHOWHIDDEN = 268435456
Global Const $OFN_HIDEREADONLY = 4
Global Const $OFN_LONGNAMES = 2097152
Global Const $OFN_NOCHANGEDIR = 8
Global Const $OFN_NODEREFERENCELINKS = 1048576
Global Const $OFN_NOLONGNAMES = 262144
Global Const $OFN_NONETWORKBUTTON = 131072
Global Const $OFN_NOREADONLYRETURN = 32768
Global Const $OFN_NOTESTFILECREATE = 65536
Global Const $OFN_NOVALIDATE = 256
Global Const $OFN_OVERWRITEPROMPT = 2
Global Const $OFN_PATHMUSTEXIST = 2048
Global Const $OFN_READONLY = 1
Global Const $OFN_SHAREAWARE = 16384
Global Const $OFN_SHOWHELP = 16
Global Const $OFN_EX_NOPLACESBAR = 1
Global Const $TMPF_FIXED_PITCH = 1
Global Const $TMPF_VECTOR = 2
Global Const $TMPF_TRUETYPE = 4
Global Const $TMPF_DEVICE = 8
Global Const $DUPLICATE_CLOSE_SOURCE = 1
Global Const $DUPLICATE_SAME_ACCESS = 2
Global Const $DI_MASK = 1
Global Const $DI_IMAGE = 2
Global Const $DI_NORMAL = 3
Global Const $DI_COMPAT = 4
Global Const $DI_DEFAULTSIZE = 8
Global Const $DI_NOMIRROR = 16
Global Const $DISPLAY_DEVICE_ATTACHED_TO_DESKTOP = 1
Global Const $DISPLAY_DEVICE_MULTI_DRIVER = 2
Global Const $DISPLAY_DEVICE_PRIMARY_DEVICE = 4
Global Const $DISPLAY_DEVICE_MIRRORING_DRIVER = 8
Global Const $DISPLAY_DEVICE_VGA_COMPATIBLE = 16
Global Const $DISPLAY_DEVICE_REMOVABLE = 32
Global Const $DISPLAY_DEVICE_DISCONNECT = 33554432
Global Const $DISPLAY_DEVICE_REMOTE = 67108864
Global Const $DISPLAY_DEVICE_MODESPRUNED = 134217728
Global Const $FLASHW_CAPTION = 1
Global Const $FLASHW_TRAY = 2
Global Const $FLASHW_TIMER = 4
Global Const $FLASHW_TIMERNOFG = 12
Global Const $FORMAT_MESSAGE_ALLOCATE_BUFFER = 256
Global Const $FORMAT_MESSAGE_IGNORE_INSERTS = 512
Global Const $FORMAT_MESSAGE_FROM_STRING = 1024
Global Const $FORMAT_MESSAGE_FROM_HMODULE = 2048
Global Const $FORMAT_MESSAGE_FROM_SYSTEM = 4096
Global Const $FORMAT_MESSAGE_ARGUMENT_ARRAY = 8192
Global Const $GW_HWNDFIRST = 0
Global Const $GW_HWNDLAST = 1
Global Const $GW_HWNDNEXT = 2
Global Const $GW_HWNDPREV = 3
Global Const $GW_OWNER = 4
Global Const $GW_CHILD = 5
Global Const $GW_ENABLEDPOPUP = 6
Global Const $GWL_WNDPROC = 4294967292
Global Const $GWL_HINSTANCE = 4294967290
Global Const $GWL_HWNDPARENT = 4294967288
Global Const $GWL_ID = 4294967284
Global Const $GWL_STYLE = 4294967280
Global Const $GWL_EXSTYLE = 4294967276
Global Const $GWL_USERDATA = 4294967275
Global Const $STD_CUT = 0
Global Const $STD_COPY = 1
Global Const $STD_PASTE = 2
Global Const $STD_UNDO = 3
Global Const $STD_REDOW = 4
Global Const $STD_DELETE = 5
Global Const $STD_FILENEW = 6
Global Const $STD_FILEOPEN = 7
Global Const $STD_FILESAVE = 8
Global Const $STD_PRINTPRE = 9
Global Const $STD_PROPERTIES = 10
Global Const $STD_HELP = 11
Global Const $STD_FIND = 12
Global Const $STD_REPLACE = 13
Global Const $STD_PRINT = 14
Global Const $IMAGE_BITMAP = 0
Global Const $IMAGE_ICON = 1
Global Const $IMAGE_CURSOR = 2
Global Const $IMAGE_ENHMETAFILE = 3
Global Const $KB_SENDSPECIAL = 0
Global Const $KB_SENDRAW = 1
Global Const $KB_CAPSOFF = 0
Global Const $KB_CAPSON = 1
Global Const $DONT_RESOLVE_DLL_REFERENCES = 1
Global Const $LOAD_LIBRARY_AS_DATAFILE = 2
Global Const $LOAD_WITH_ALTERED_SEARCH_PATH = 8
Global Const $LOAD_IGNORE_CODE_AUTHZ_LEVEL = 16
Global Const $LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE = 64
Global Const $LOAD_LIBRARY_AS_IMAGE_RESOURCE = 32
Global Const $LOAD_LIBRARY_SEARCH_APPLICATION_DIR = 512
Global Const $LOAD_LIBRARY_SEARCH_DEFAULT_DIRS = 4096
Global Const $LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR = 256
Global Const $LOAD_LIBRARY_SEARCH_SYSTEM32 = 2048
Global Const $LOAD_LIBRARY_SEARCH_USER_DIRS = 1024
Global Const $S_OK = 0
Global Const $E_ABORT = 2147500036
Global Const $E_ACCESSDENIED = 2147942405
Global Const $E_FAIL = 2147500037
Global Const $E_HANDLE = 2147942406
Global Const $E_INVALIDARG = 2147942487
Global Const $E_NOINTERFACE = 2147500034
Global Const $E_NOTIMPL = 2147500033
Global Const $E_OUTOFMEMORY = 2147942414
Global Const $E_POINTER = 2147500035
Global Const $E_UNEXPECTED = 2147549183
Global Const $LR_DEFAULTCOLOR = 0
Global Const $LR_MONOCHROME = 1
Global Const $LR_COLOR = 2
Global Const $LR_COPYRETURNORG = 4
Global Const $LR_COPYDELETEORG = 8
Global Const $LR_LOADFROMFILE = 16
Global Const $LR_LOADTRANSPARENT = 32
Global Const $LR_DEFAULTSIZE = 64
Global Const $LR_VGACOLOR = 128
Global Const $LR_LOADMAP3DCOLORS = 4096
Global Const $LR_CREATEDIBSECTION = 8192
Global Const $LR_COPYFROMRESOURCE = 16384
Global Const $LR_SHARED = 32768
Global Const $OBM_TRTYPE = 32732
Global Const $OBM_LFARROWI = 32734
Global Const $OBM_RGARROWI = 32735
Global Const $OBM_DNARROWI = 32736
Global Const $OBM_UPARROWI = 32737
Global Const $OBM_COMBO = 32738
Global Const $OBM_MNARROW = 32739
Global Const $OBM_LFARROWD = 32740
Global Const $OBM_RGARROWD = 32741
Global Const $OBM_DNARROWD = 32742
Global Const $OBM_UPARROWD = 32743
Global Const $OBM_RESTORED = 32744
Global Const $OBM_ZOOMD = 32745
Global Const $OBM_REDUCED = 32746
Global Const $OBM_RESTORE = 32747
Global Const $OBM_ZOOM = 32748
Global Const $OBM_REDUCE = 32749
Global Const $OBM_LFARROW = 32750
Global Const $OBM_RGARROW = 32751
Global Const $OBM_DNARROW = 32752
Global Const $OBM_UPARROW = 32753
Global Const $OBM_CLOSE = 32754
Global Const $OBM_OLD_RESTORE = 32755
Global Const $OBM_OLD_ZOOM = 32756
Global Const $OBM_OLD_REDUCE = 32757
Global Const $OBM_BTNCORNERS = 32758
Global Const $OBM_CHECKBOXES = 32759
Global Const $OBM_CHECK = 32760
Global Const $OBM_BTSIZE = 32761
Global Const $OBM_OLD_LFARROW = 32762
Global Const $OBM_OLD_RGARROW = 32763
Global Const $OBM_OLD_DNARROW = 32764
Global Const $OBM_OLD_UPARROW = 32765
Global Const $OBM_SIZE = 32766
Global Const $OBM_OLD_CLOSE = 32767
Global Const $OIC_SAMPLE = 32512
Global Const $OIC_HAND = 32513
Global Const $OIC_QUES = 32514
Global Const $OIC_BANG = 32515
Global Const $OIC_NOTE = 32516
Global Const $OIC_WINLOGO = 32517
Global Const $OIC_WARNING = $OIC_BANG
Global Const $OIC_ERROR = $OIC_HAND
Global Const $OIC_INFORMATION = $OIC_NOTE
Global $__G_AINPROCESS_WINAPI [ 64 ] [ 2 ] = [ [ 0 , 0 ] ]
Global $__G_AWINLIST_WINAPI [ 64 ] [ 2 ] = [ [ 0 , 0 ] ]
Global Const $__WINAPICONSTANT_WM_SETFONT = 48
Global Const $__WINAPICONSTANT_FW_NORMAL = 400
Global Const $__WINAPICONSTANT_DEFAULT_CHARSET = 1
Global Const $__WINAPICONSTANT_OUT_DEFAULT_PRECIS = 0
Global Const $__WINAPICONSTANT_CLIP_DEFAULT_PRECIS = 0
Global Const $__WINAPICONSTANT_DEFAULT_QUALITY = 0
Global Const $__WINAPICONSTANT_LOGPIXELSX = 88
Global Const $__WINAPICONSTANT_LOGPIXELSY = 90
Global Const $TAGCURSORINFO = "dword Size;dword Flags;handle hCursor;" & $TAGPOINT
Global Const $TAGDISPLAY_DEVICE = "dword Size;wchar Name[32];wchar String[128];dword Flags;wchar ID[128];wchar Key[128]"
Global Const $TAGFLASHWINFO = "uint Size;hwnd hWnd;dword Flags;uint Count;dword TimeOut"
Global Const $TAGICONINFO = "bool Icon;dword XHotSpot;dword YHotSpot;handle hMask;handle hColor"
Global Const $TAGMEMORYSTATUSEX = "dword Length;dword MemoryLoad;" & "uint64 TotalPhys;uint64 AvailPhys;uint64 TotalPageFile;uint64 AvailPageFile;" & "uint64 TotalVirtual;uint64 AvailVirtual;uint64 AvailExtendedVirtual"
Func _WINAPI_ATTACHCONSOLE ( $IPID = + 4294967295 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "AttachConsole" , "dword" , $IPID )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_ATTACHTHREADINPUT ( $IATTACH , $IATTACHTO , $BATTACH )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "AttachThreadInput" , "dword" , $IATTACH , "dword" , $IATTACHTO , "bool" , $BATTACH )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_BEEP ( $IFREQ = 500 , $IDURATION = 1000 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "Beep" , "dword" , $IFREQ , "dword" , $IDURATION )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_BITBLT ( $HDESTDC , $IXDEST , $IYDEST , $IWIDTH , $IHEIGHT , $HSRCDC , $IXSRC , $IYSRC , $IROP )
	Local $ARESULT = DllCall ( "gdi32.dll" , "bool" , "BitBlt" , "handle" , $HDESTDC , "int" , $IXDEST , "int" , $IYDEST , "int" , $IWIDTH , "int" , $IHEIGHT , "handle" , $HSRCDC , "int" , $IXSRC , "int" , $IYSRC , "dword" , $IROP )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CALLNEXTHOOKEX ( $HHOOK , $ICODE , $WPARAM , $LPARAM )
	Local $ARESULT = DllCall ( "user32.dll" , "lresult" , "CallNextHookEx" , "handle" , $HHOOK , "int" , $ICODE , "wparam" , $WPARAM , "lparam" , $LPARAM )
	If @error Then Return SetError ( @error , @extended , + 4294967295 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CALLWINDOWPROC ( $PPREVWNDFUNC , $HWND , $IMSG , $WPARAM , $LPARAM )
	Local $ARESULT = DllCall ( "user32.dll" , "lresult" , "CallWindowProc" , "ptr" , $PPREVWNDFUNC , "hwnd" , $HWND , "uint" , $IMSG , "wparam" , $WPARAM , "lparam" , $LPARAM )
	If @error Then Return SetError ( @error , @extended , + 4294967295 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CLIENTTOSCREEN ( $HWND , ByRef $TPOINT )
	Local $ARET = DllCall ( "user32.dll" , "bool" , "ClientToScreen" , "hwnd" , $HWND , "struct*" , $TPOINT )
	If @error Or Not $ARET [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Return $TPOINT
EndFunc
Func _WINAPI_CLOSEHANDLE ( $HOBJECT )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "CloseHandle" , "handle" , $HOBJECT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_COMBINERGN ( $HRGNDEST , $HRGNSRC1 , $HRGNSRC2 , $ICOMBINEMODE )
	Local $ARESULT = DllCall ( "gdi32.dll" , "int" , "CombineRgn" , "handle" , $HRGNDEST , "handle" , $HRGNSRC1 , "handle" , $HRGNSRC2 , "int" , $ICOMBINEMODE )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_COMMDLGEXTENDEDERROR ( )
	Local Const $CDERR_DIALOGFAILURE = 65535
	Local Const $CDERR_FINDRESFAILURE = 6
	Local Const $CDERR_INITIALIZATION = 2
	Local Const $CDERR_LOADRESFAILURE = 7
	Local Const $CDERR_LOADSTRFAILURE = 5
	Local Const $CDERR_LOCKRESFAILURE = 8
	Local Const $CDERR_MEMALLOCFAILURE = 9
	Local Const $CDERR_MEMLOCKFAILURE = 10
	Local Const $CDERR_NOHINSTANCE = 4
	Local Const $CDERR_NOHOOK = 11
	Local Const $CDERR_NOTEMPLATE = 3
	Local Const $CDERR_REGISTERMSGFAIL = 12
	Local Const $CDERR_STRUCTSIZE = 1
	Local Const $FNERR_BUFFERTOOSMALL = 12291
	Local Const $FNERR_INVALIDFILENAME = 12290
	Local Const $FNERR_SUBCLASSFAILURE = 12289
	Local $ARESULT = DllCall ( "comdlg32.dll" , "dword" , "CommDlgExtendedError" )
	If Not @error Then
		Switch $ARESULT [ 0 ]
		Case $CDERR_DIALOGFAILURE
			Return SetError ( $ARESULT [ 0 ] , 0 , "The dialog box could not be created." & @LF & "The common dialog box function's call to the DialogBox function failed." & @LF & "For example, this error occurs if the common dialog box call specifies an invalid window handle." )
		Case $CDERR_FINDRESFAILURE
			Return SetError ( $ARESULT [ 0 ] , 0 , "The common dialog box function failed to find a specified resource." )
		Case $CDERR_INITIALIZATION
			Return SetError ( $ARESULT [ 0 ] , 0 , "The common dialog box function failed during initialization." & @LF & "This error often occurs when sufficient memory is not available." )
		Case $CDERR_LOADRESFAILURE
			Return SetError ( $ARESULT [ 0 ] , 0 , "The common dialog box function failed to load a specified resource." )
		Case $CDERR_LOADSTRFAILURE
			Return SetError ( $ARESULT [ 0 ] , 0 , "The common dialog box function failed to load a specified string." )
		Case $CDERR_LOCKRESFAILURE
			Return SetError ( $ARESULT [ 0 ] , 0 , "The common dialog box function failed to lock a specified resource." )
		Case $CDERR_MEMALLOCFAILURE
			Return SetError ( $ARESULT [ 0 ] , 0 , "The common dialog box function was unable to allocate memory for internal structures." )
		Case $CDERR_MEMLOCKFAILURE
			Return SetError ( $ARESULT [ 0 ] , 0 , "The common dialog box function was unable to lock the memory associated with a handle." )
		Case $CDERR_NOHINSTANCE
			Return SetError ( $ARESULT [ 0 ] , 0 , "The ENABLETEMPLATE flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a corresponding instance handle." )
		Case $CDERR_NOHOOK
			Return SetError ( $ARESULT [ 0 ] , 0 , "The ENABLEHOOK flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a pointer to a corresponding hook procedure." )
		Case $CDERR_NOTEMPLATE
			Return SetError ( $ARESULT [ 0 ] , 0 , "The ENABLETEMPLATE flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a corresponding template." )
		Case $CDERR_REGISTERMSGFAIL
			Return SetError ( $ARESULT [ 0 ] , 0 , "The RegisterWindowMessage function returned an error code when it was called by the common dialog box function." )
		Case $CDERR_STRUCTSIZE
			Return SetError ( $ARESULT [ 0 ] , 0 , "The lStructSize member of the initialization structure for the corresponding common dialog box is invalid" )
		Case $FNERR_BUFFERTOOSMALL
			Return SetError ( $ARESULT [ 0 ] , 0 , "The buffer pointed to by the lpstrFile member of the OPENFILENAME structure is too small for the file name specified by the user." & @LF & "The first two bytes of the lpstrFile buffer contain an integer value specifying the size, in TCHARs, required to receive the full name." )
		Case $FNERR_INVALIDFILENAME
			Return SetError ( $ARESULT [ 0 ] , 0 , "A file name is invalid." )
		Case $FNERR_SUBCLASSFAILURE
			Return SetError ( $ARESULT [ 0 ] , 0 , "An attempt to subclass a list box failed because sufficient memory was not available." )
		EndSwitch
	EndIf
	Return SetError ( @error , @extended , "0x" & Hex ( $ARESULT [ 0 ] ) )
EndFunc
Func _WINAPI_COPYICON ( $HICON )
	Local $ARESULT = DllCall ( "user32.dll" , "handle" , "CopyIcon" , "handle" , $HICON )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEBITMAP ( $IWIDTH , $IHEIGHT , $IPLANES = 1 , $IBITSPERPEL = 1 , $PBITS = 0 )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateBitmap" , "int" , $IWIDTH , "int" , $IHEIGHT , "uint" , $IPLANES , "uint" , $IBITSPERPEL , "struct*" , $PBITS )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATECOMPATIBLEBITMAP ( $HDC , $IWIDTH , $IHEIGHT )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateCompatibleBitmap" , "handle" , $HDC , "int" , $IWIDTH , "int" , $IHEIGHT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATECOMPATIBLEDC ( $HDC )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateCompatibleDC" , "handle" , $HDC )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEEVENT ( $TATTRIBUTES = 0 , $BMANUALRESET = True , $BINITIALSTATE = True , $SNAME = "" )
	Local $SNAMETYPE = "wstr"
	If $SNAME = "" Then
		$SNAME = 0
		$SNAMETYPE = "ptr"
	EndIf
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "CreateEventW" , "struct*" , $TATTRIBUTES , "bool" , $BMANUALRESET , "bool" , $BINITIALSTATE , $SNAMETYPE , $SNAME )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEFILE ( $SFILENAME , $ICREATION , $IACCESS = 4 , $ISHARE = 0 , $IATTRIBUTES = 0 , $TSECURITY = 0 )
	Local $IDA = 0 , $ISM = 0 , $ICD = 0 , $IFA = 0
	If BitAND ( $IACCESS , 1 ) <> 0 Then $IDA = BitOR ( $IDA , $GENERIC_EXECUTE )
	If BitAND ( $IACCESS , 2 ) <> 0 Then $IDA = BitOR ( $IDA , $GENERIC_READ )
	If BitAND ( $IACCESS , 4 ) <> 0 Then $IDA = BitOR ( $IDA , $GENERIC_WRITE )
	If BitAND ( $ISHARE , 1 ) <> 0 Then $ISM = BitOR ( $ISM , $FILE_SHARE_DELETE )
	If BitAND ( $ISHARE , 2 ) <> 0 Then $ISM = BitOR ( $ISM , $FILE_SHARE_READ )
	If BitAND ( $ISHARE , 4 ) <> 0 Then $ISM = BitOR ( $ISM , $FILE_SHARE_WRITE )
	Switch $ICREATION
	Case 0
		$ICD = $CREATE_NEW
	Case 1
		$ICD = $CREATE_ALWAYS
	Case 2
		$ICD = $OPEN_EXISTING
	Case 3
		$ICD = $OPEN_ALWAYS
	Case 4
		$ICD = $TRUNCATE_EXISTING
	EndSwitch
	If BitAND ( $IATTRIBUTES , 1 ) <> 0 Then $IFA = BitOR ( $IFA , $FILE_ATTRIBUTE_ARCHIVE )
	If BitAND ( $IATTRIBUTES , 2 ) <> 0 Then $IFA = BitOR ( $IFA , $FILE_ATTRIBUTE_HIDDEN )
	If BitAND ( $IATTRIBUTES , 4 ) <> 0 Then $IFA = BitOR ( $IFA , $FILE_ATTRIBUTE_READONLY )
	If BitAND ( $IATTRIBUTES , 8 ) <> 0 Then $IFA = BitOR ( $IFA , $FILE_ATTRIBUTE_SYSTEM )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "CreateFileW" , "wstr" , $SFILENAME , "dword" , $IDA , "dword" , $ISM , "struct*" , $TSECURITY , "dword" , $ICD , "dword" , $IFA , "ptr" , 0 )
	If @error Or ( $ARESULT [ 0 ] = $INVALID_HANDLE_VALUE ) Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEFONT ( $IHEIGHT , $IWIDTH , $IESCAPE = 0 , $IORIENTN = 0 , $IWEIGHT = $__WINAPICONSTANT_FW_NORMAL , $BITALIC = False , $BUNDERLINE = False , $BSTRIKEOUT = False , $ICHARSET = $__WINAPICONSTANT_DEFAULT_CHARSET , $IOUTPUTPREC = $__WINAPICONSTANT_OUT_DEFAULT_PRECIS , $ICLIPPREC = $__WINAPICONSTANT_CLIP_DEFAULT_PRECIS , $IQUALITY = $__WINAPICONSTANT_DEFAULT_QUALITY , $IPITCH = 0 , $SFACE = "Arial" )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateFontW" , "int" , $IHEIGHT , "int" , $IWIDTH , "int" , $IESCAPE , "int" , $IORIENTN , "int" , $IWEIGHT , "dword" , $BITALIC , "dword" , $BUNDERLINE , "dword" , $BSTRIKEOUT , "dword" , $ICHARSET , "dword" , $IOUTPUTPREC , "dword" , $ICLIPPREC , "dword" , $IQUALITY , "dword" , $IPITCH , "wstr" , $SFACE )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEFONTINDIRECT ( $TLOGFONT )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateFontIndirectW" , "struct*" , $TLOGFONT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEPEN ( $IPENSTYLE , $IWIDTH , $ICOLOR )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreatePen" , "int" , $IPENSTYLE , "int" , $IWIDTH , "INT" , $ICOLOR )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEPROCESS ( $SAPPNAME , $SCOMMAND , $TSECURITY , $TTHREAD , $BINHERIT , $IFLAGS , $PENVIRON , $SDIR , $TSTARTUPINFO , $TPROCESS )
	Local $TCOMMAND = 0
	Local $SAPPNAMETYPE = "wstr" , $SDIRTYPE = "wstr"
	If $SAPPNAME = "" Then
		$SAPPNAMETYPE = "ptr"
		$SAPPNAME = 0
	EndIf
	If $SCOMMAND <> "" Then
		$TCOMMAND = DllStructCreate ( "wchar Text[" & 260 + 1 & "]" )
		DllStructSetData ( $TCOMMAND , "Text" , $SCOMMAND )
	EndIf
	If $SDIR = "" Then
		$SDIRTYPE = "ptr"
		$SDIR = 0
	EndIf
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "CreateProcessW" , $SAPPNAMETYPE , $SAPPNAME , "struct*" , $TCOMMAND , "struct*" , $TSECURITY , "struct*" , $TTHREAD , "bool" , $BINHERIT , "dword" , $IFLAGS , "struct*" , $PENVIRON , $SDIRTYPE , $SDIR , "struct*" , $TSTARTUPINFO , "struct*" , $TPROCESS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATERECTRGN ( $ILEFTRECT , $ITOPRECT , $IRIGHTRECT , $IBOTTOMRECT )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateRectRgn" , "int" , $ILEFTRECT , "int" , $ITOPRECT , "int" , $IRIGHTRECT , "int" , $IBOTTOMRECT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEROUNDRECTRGN ( $ILEFTRECT , $ITOPRECT , $IRIGHTRECT , $IBOTTOMRECT , $IWIDTHELLIPSE , $IHEIGHTELLIPSE )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateRoundRectRgn" , "int" , $ILEFTRECT , "int" , $ITOPRECT , "int" , $IRIGHTRECT , "int" , $IBOTTOMRECT , "int" , $IWIDTHELLIPSE , "int" , $IHEIGHTELLIPSE )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATESOLIDBITMAP ( $HWND , $ICOLOR , $IWIDTH , $IHEIGHT , $BRGB = 1 )
	Local $HDC = _WINAPI_GETDC ( $HWND )
	Local $HDESTDC = _WINAPI_CREATECOMPATIBLEDC ( $HDC )
	Local $HBITMAP = _WINAPI_CREATECOMPATIBLEBITMAP ( $HDC , $IWIDTH , $IHEIGHT )
	Local $HOLD = _WINAPI_SELECTOBJECT ( $HDESTDC , $HBITMAP )
	Local $TRECT = DllStructCreate ( $TAGRECT )
	DllStructSetData ( $TRECT , 1 , 0 )
	DllStructSetData ( $TRECT , 2 , 0 )
	DllStructSetData ( $TRECT , 3 , $IWIDTH )
	DllStructSetData ( $TRECT , 4 , $IHEIGHT )
	If $BRGB Then
		$ICOLOR = BitOR ( BitAND ( $ICOLOR , 65280 ) , BitShift ( BitAND ( $ICOLOR , 255 ) , + 4294967280 ) , BitShift ( BitAND ( $ICOLOR , 16711680 ) , 16 ) )
	EndIf
	Local $HBRUSH = _WINAPI_CREATESOLIDBRUSH ( $ICOLOR )
	If Not _WINAPI_FILLRECT ( $HDESTDC , $TRECT , $HBRUSH ) Then
		_WINAPI_DELETEOBJECT ( $HBITMAP )
		$HBITMAP = 0
	EndIf
	_WINAPI_DELETEOBJECT ( $HBRUSH )
	_WINAPI_RELEASEDC ( $HWND , $HDC )
	_WINAPI_SELECTOBJECT ( $HDESTDC , $HOLD )
	_WINAPI_DELETEDC ( $HDESTDC )
	If Not $HBITMAP Then Return SetError ( 1 , 0 , 0 )
	Return $HBITMAP
EndFunc
Func _WINAPI_CREATESOLIDBRUSH ( $ICOLOR )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateSolidBrush" , "INT" , $ICOLOR )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEWINDOWEX ( $IEXSTYLE , $SCLASS , $SNAME , $ISTYLE , $IX , $IY , $IWIDTH , $IHEIGHT , $HPARENT , $HMENU = 0 , $HINSTANCE = 0 , $PPARAM = 0 )
	If $HINSTANCE = 0 Then $HINSTANCE = _WINAPI_GETMODULEHANDLE ( "" )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "CreateWindowExW" , "dword" , $IEXSTYLE , "wstr" , $SCLASS , "wstr" , $SNAME , "dword" , $ISTYLE , "int" , $IX , "int" , $IY , "int" , $IWIDTH , "int" , $IHEIGHT , "hwnd" , $HPARENT , "handle" , $HMENU , "handle" , $HINSTANCE , "struct*" , $PPARAM )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DEFWINDOWPROC ( $HWND , $IMSG , $WPARAM , $LPARAM )
	Local $ARESULT = DllCall ( "user32.dll" , "lresult" , "DefWindowProc" , "hwnd" , $HWND , "uint" , $IMSG , "wparam" , $WPARAM , "lparam" , $LPARAM )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DELETEDC ( $HDC )
	Local $ARESULT = DllCall ( "gdi32.dll" , "bool" , "DeleteDC" , "handle" , $HDC )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DELETEOBJECT ( $HOBJECT )
	Local $ARESULT = DllCall ( "gdi32.dll" , "bool" , "DeleteObject" , "handle" , $HOBJECT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DESTROYICON ( $HICON )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "DestroyIcon" , "handle" , $HICON )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DESTROYWINDOW ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "DestroyWindow" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DRAWEDGE ( $HDC , $TRECT , $IEDGETYPE , $IFLAGS )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "DrawEdge" , "handle" , $HDC , "struct*" , $TRECT , "uint" , $IEDGETYPE , "uint" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DRAWFRAMECONTROL ( $HDC , $TRECT , $ITYPE , $ISTATE )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "DrawFrameControl" , "handle" , $HDC , "struct*" , $TRECT , "uint" , $ITYPE , "uint" , $ISTATE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DRAWICON ( $HDC , $IX , $IY , $HICON )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "DrawIcon" , "handle" , $HDC , "int" , $IX , "int" , $IY , "handle" , $HICON )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DRAWICONEX ( $HDC , $IX , $IY , $HICON , $IWIDTH = 0 , $IHEIGHT = 0 , $ISTEP = 0 , $HBRUSH = 0 , $IFLAGS = 3 )
	Local $IOPTIONS
	Switch $IFLAGS
	Case 1
		$IOPTIONS = $DI_MASK
	Case 2
		$IOPTIONS = $DI_IMAGE
	Case 3
		$IOPTIONS = $DI_NORMAL
	Case 4
		$IOPTIONS = $DI_COMPAT
	Case 5
		$IOPTIONS = $DI_DEFAULTSIZE
Case Else
		$IOPTIONS = $DI_NOMIRROR
	EndSwitch
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "DrawIconEx" , "handle" , $HDC , "int" , $IX , "int" , $IY , "handle" , $HICON , "int" , $IWIDTH , "int" , $IHEIGHT , "uint" , $ISTEP , "handle" , $HBRUSH , "uint" , $IOPTIONS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DRAWLINE ( $HDC , $IX1 , $IY1 , $IX2 , $IY2 )
	_WINAPI_MOVETO ( $HDC , $IX1 , $IY1 )
	If @error Then Return SetError ( @error , @extended , False )
	_WINAPI_LINETO ( $HDC , $IX2 , $IY2 )
	If @error Then Return SetError ( @error + 10 , @extended , False )
	Return True
EndFunc
Func _WINAPI_DRAWTEXT ( $HDC , $STEXT , ByRef $TRECT , $IFLAGS )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "DrawTextW" , "handle" , $HDC , "wstr" , $STEXT , "int" , + 4294967295 , "struct*" , $TRECT , "uint" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DUPLICATEHANDLE ( $HSOURCEPROCESSHANDLE , $HSOURCEHANDLE , $HTARGETPROCESSHANDLE , $IDESIREDACCESS , $IINHERITHANDLE , $IOPTIONS )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "DuplicateHandle" , "handle" , $HSOURCEPROCESSHANDLE , "handle" , $HSOURCEHANDLE , "handle" , $HTARGETPROCESSHANDLE , "handle*" , 0 , "dword" , $IDESIREDACCESS , "bool" , $IINHERITHANDLE , "dword" , $IOPTIONS )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 4 ]
EndFunc
Func _WINAPI_ENABLEWINDOW ( $HWND , $BENABLE = True )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "EnableWindow" , "hwnd" , $HWND , "bool" , $BENABLE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_ENUMDISPLAYDEVICES ( $SDEVICE , $IDEVNUM )
	Local $TNAME = 0 , $IFLAGS = 0 , $ADEVICE [ 5 ]
	If $SDEVICE <> "" Then
		$TNAME = DllStructCreate ( "wchar Text[" & StringLen ( $SDEVICE ) + 1 & "]" )
		DllStructSetData ( $TNAME , "Text" , $SDEVICE )
	EndIf
	Local $TDEVICE = DllStructCreate ( $TAGDISPLAY_DEVICE )
	Local $IDEVICE = DllStructGetSize ( $TDEVICE )
	DllStructSetData ( $TDEVICE , "Size" , $IDEVICE )
	Local $ARET = DllCall ( "user32.dll" , "bool" , "EnumDisplayDevicesW" , "struct*" , $TNAME , "dword" , $IDEVNUM , "struct*" , $TDEVICE , "dword" , 1 )
	If @error Or Not $ARET [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Local $IN = DllStructGetData ( $TDEVICE , "Flags" )
	If BitAND ( $IN , $DISPLAY_DEVICE_ATTACHED_TO_DESKTOP ) <> 0 Then $IFLAGS = BitOR ( $IFLAGS , 1 )
	If BitAND ( $IN , $DISPLAY_DEVICE_PRIMARY_DEVICE ) <> 0 Then $IFLAGS = BitOR ( $IFLAGS , 2 )
	If BitAND ( $IN , $DISPLAY_DEVICE_MIRRORING_DRIVER ) <> 0 Then $IFLAGS = BitOR ( $IFLAGS , 4 )
	If BitAND ( $IN , $DISPLAY_DEVICE_VGA_COMPATIBLE ) <> 0 Then $IFLAGS = BitOR ( $IFLAGS , 8 )
	If BitAND ( $IN , $DISPLAY_DEVICE_REMOVABLE ) <> 0 Then $IFLAGS = BitOR ( $IFLAGS , 16 )
	If BitAND ( $IN , $DISPLAY_DEVICE_MODESPRUNED ) <> 0 Then $IFLAGS = BitOR ( $IFLAGS , 32 )
	$ADEVICE [ 0 ] = True
	$ADEVICE [ 1 ] = DllStructGetData ( $TDEVICE , "Name" )
	$ADEVICE [ 2 ] = DllStructGetData ( $TDEVICE , "String" )
	$ADEVICE [ 3 ] = $IFLAGS
	$ADEVICE [ 4 ] = DllStructGetData ( $TDEVICE , "ID" )
	Return $ADEVICE
EndFunc
Func _WINAPI_ENUMWINDOWS ( $BVISIBLE = True , $HWND = Default )
	__WINAPI_ENUMWINDOWSINIT ( )
	If $HWND = Default Then $HWND = _WINAPI_GETDESKTOPWINDOW ( )
	__WINAPI_ENUMWINDOWSCHILD ( $HWND , $BVISIBLE )
	Return $__G_AWINLIST_WINAPI
EndFunc
Func __WINAPI_ENUMWINDOWSADD ( $HWND , $SCLASS = "" )
	If $SCLASS = "" Then $SCLASS = _WINAPI_GETCLASSNAME ( $HWND )
	$__G_AWINLIST_WINAPI [ 0 ] [ 0 ] += 1
	Local $ICOUNT = $__G_AWINLIST_WINAPI [ 0 ] [ 0 ]
	If $ICOUNT >= $__G_AWINLIST_WINAPI [ 0 ] [ 1 ] Then
		ReDim $__G_AWINLIST_WINAPI [ $ICOUNT + 64 ] [ 2 ]
		$__G_AWINLIST_WINAPI [ 0 ] [ 1 ] += 64
	EndIf
	$__G_AWINLIST_WINAPI [ $ICOUNT ] [ 0 ] = $HWND
	$__G_AWINLIST_WINAPI [ $ICOUNT ] [ 1 ] = $SCLASS
EndFunc
Func __WINAPI_ENUMWINDOWSCHILD ( $HWND , $BVISIBLE = True )
	$HWND = _WINAPI_GETWINDOW ( $HWND , $GW_CHILD )
	While $HWND <> 0
		If ( Not $BVISIBLE ) Or _WINAPI_ISWINDOWVISIBLE ( $HWND ) Then
			__WINAPI_ENUMWINDOWSADD ( $HWND )
			__WINAPI_ENUMWINDOWSCHILD ( $HWND , $BVISIBLE )
		EndIf
		$HWND = _WINAPI_GETWINDOW ( $HWND , $GW_HWNDNEXT )
	WEnd
EndFunc
Func __WINAPI_ENUMWINDOWSINIT ( )
	ReDim $__G_AWINLIST_WINAPI [ 64 ] [ 2 ]
	$__G_AWINLIST_WINAPI [ 0 ] [ 0 ] = 0
	$__G_AWINLIST_WINAPI [ 0 ] [ 1 ] = 64
EndFunc
Func _WINAPI_ENUMWINDOWSPOPUP ( )
	__WINAPI_ENUMWINDOWSINIT ( )
	Local $HWND = _WINAPI_GETWINDOW ( _WINAPI_GETDESKTOPWINDOW ( ) , $GW_CHILD )
	Local $SCLASS
	While $HWND <> 0
		If _WINAPI_ISWINDOWVISIBLE ( $HWND ) Then
			$SCLASS = _WINAPI_GETCLASSNAME ( $HWND )
			If $SCLASS = "#32768" Then
				__WINAPI_ENUMWINDOWSADD ( $HWND )
			ElseIf $SCLASS = "ToolbarWindow32" Then
				__WINAPI_ENUMWINDOWSADD ( $HWND )
			ElseIf $SCLASS = "ToolTips_Class32" Then
				__WINAPI_ENUMWINDOWSADD ( $HWND )
			ElseIf $SCLASS = "BaseBar" Then
				__WINAPI_ENUMWINDOWSCHILD ( $HWND )
			EndIf
		EndIf
		$HWND = _WINAPI_GETWINDOW ( $HWND , $GW_HWNDNEXT )
	WEnd
	Return $__G_AWINLIST_WINAPI
EndFunc
Func _WINAPI_ENUMWINDOWSTOP ( )
	__WINAPI_ENUMWINDOWSINIT ( )
	Local $HWND = _WINAPI_GETWINDOW ( _WINAPI_GETDESKTOPWINDOW ( ) , $GW_CHILD )
	While $HWND <> 0
		If _WINAPI_ISWINDOWVISIBLE ( $HWND ) Then __WINAPI_ENUMWINDOWSADD ( $HWND )
		$HWND = _WINAPI_GETWINDOW ( $HWND , $GW_HWNDNEXT )
	WEnd
	Return $__G_AWINLIST_WINAPI
EndFunc
Func _WINAPI_EXPANDENVIRONMENTSTRINGS ( $SSTRING )
	Local $ARESULT = DllCall ( "kernel32.dll" , "dword" , "ExpandEnvironmentStringsW" , "wstr" , $SSTRING , "wstr" , "" , "dword" , 4096 )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error + 10 , @extended , "" )
	Return $ARESULT [ 2 ]
EndFunc
Func _WINAPI_EXTRACTICONEX ( $SFILEPATH , $IINDEX , $PALARGE , $PASMALL , $IICONS )
	Local $ARESULT = DllCall ( "shell32.dll" , "uint" , "ExtractIconExW" , "wstr" , $SFILEPATH , "int" , $IINDEX , "struct*" , $PALARGE , "struct*" , $PASMALL , "uint" , $IICONS )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FATALAPPEXIT ( $SMESSAGE )
	DllCall ( "kernel32.dll" , "none" , "FatalAppExitW" , "uint" , 0 , "wstr" , $SMESSAGE )
	If @error Then Return SetError ( @error , @extended )
EndFunc
Func _WINAPI_FILLRECT ( $HDC , $TRECT , $HBRUSH )
	Local $ARESULT
	If IsPtr ( $HBRUSH ) Then
		$ARESULT = DllCall ( "user32.dll" , "int" , "FillRect" , "handle" , $HDC , "struct*" , $TRECT , "handle" , $HBRUSH )
	Else
		$ARESULT = DllCall ( "user32.dll" , "int" , "FillRect" , "handle" , $HDC , "struct*" , $TRECT , "dword_ptr" , $HBRUSH )
	EndIf
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FINDEXECUTABLE ( $SFILENAME , $SDIRECTORY = "" )
	Local $ARESULT = DllCall ( "shell32.dll" , "INT" , "FindExecutableW" , "wstr" , $SFILENAME , "wstr" , $SDIRECTORY , "wstr" , "" )
	If @error Then Return SetError ( @error , @extended , "" )
	If $ARESULT [ 0 ] <= 32 Then Return SetError ( 10 , $ARESULT [ 0 ] , "" )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 3 ] )
EndFunc
Func _WINAPI_FINDWINDOW ( $SCLASSNAME , $SWINDOWNAME )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "FindWindowW" , "wstr" , $SCLASSNAME , "wstr" , $SWINDOWNAME )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FLASHWINDOW ( $HWND , $BINVERT = True )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "FlashWindow" , "hwnd" , $HWND , "bool" , $BINVERT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FLASHWINDOWEX ( $HWND , $IFLAGS = 3 , $ICOUNT = 3 , $ITIMEOUT = 0 )
	Local $TFLASH = DllStructCreate ( $TAGFLASHWINFO )
	Local $IFLASH = DllStructGetSize ( $TFLASH )
	Local $IMODE = 0
	If BitAND ( $IFLAGS , 1 ) <> 0 Then $IMODE = BitOR ( $IMODE , $FLASHW_CAPTION )
	If BitAND ( $IFLAGS , 2 ) <> 0 Then $IMODE = BitOR ( $IMODE , $FLASHW_TRAY )
	If BitAND ( $IFLAGS , 4 ) <> 0 Then $IMODE = BitOR ( $IMODE , $FLASHW_TIMER )
	If BitAND ( $IFLAGS , 8 ) <> 0 Then $IMODE = BitOR ( $IMODE , $FLASHW_TIMERNOFG )
	DllStructSetData ( $TFLASH , "Size" , $IFLASH )
	DllStructSetData ( $TFLASH , "hWnd" , $HWND )
	DllStructSetData ( $TFLASH , "Flags" , $IMODE )
	DllStructSetData ( $TFLASH , "Count" , $ICOUNT )
	DllStructSetData ( $TFLASH , "Timeout" , $ITIMEOUT )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "FlashWindowEx" , "struct*" , $TFLASH )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FLOATTOINT ( $NFLOAT )
	Local $TFLOAT = DllStructCreate ( "float" )
	Local $TINT = DllStructCreate ( "int" , DllStructGetPtr ( $TFLOAT ) )
	DllStructSetData ( $TFLOAT , 1 , $NFLOAT )
	Return DllStructGetData ( $TINT , 1 )
EndFunc
Func _WINAPI_FLUSHFILEBUFFERS ( $HFILE )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "FlushFileBuffers" , "handle" , $HFILE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FORMATMESSAGE ( $IFLAGS , $PSOURCE , $IMESSAGEID , $ILANGUAGEID , ByRef $PBUFFER , $ISIZE , $VARGUMENTS )
	Local $SBUFFERTYPE = "struct*"
	If IsString ( $PBUFFER ) Then $SBUFFERTYPE = "wstr"
	Local $ARESULT = DllCall ( "kernel32.dll" , "dword" , "FormatMessageW" , "dword" , $IFLAGS , "struct*" , $PSOURCE , "dword" , $IMESSAGEID , "dword" , $ILANGUAGEID , $SBUFFERTYPE , $PBUFFER , "dword" , $ISIZE , "ptr" , $VARGUMENTS )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	If $SBUFFERTYPE = "wstr" Then $PBUFFER = $ARESULT [ 5 ]
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FRAMERECT ( $HDC , $TRECT , $HBRUSH )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "FrameRect" , "handle" , $HDC , "struct*" , $TRECT , "handle" , $HBRUSH )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FREELIBRARY ( $HMODULE )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "FreeLibrary" , "handle" , $HMODULE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETANCESTOR ( $HWND , $IFLAGS = 1 )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "GetAncestor" , "hwnd" , $HWND , "uint" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETASYNCKEYSTATE ( $IKEY )
	Local $ARESULT = DllCall ( "user32.dll" , "short" , "GetAsyncKeyState" , "int" , $IKEY )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETBKMODE ( $HDC )
	Local $ARESULT = DllCall ( "gdi32.dll" , "int" , "GetBkMode" , "handle" , $HDC )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETCLASSNAME ( $HWND )
	If Not IsHWnd ( $HWND ) Then $HWND = GUICtrlGetHandle ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "GetClassNameW" , "hwnd" , $HWND , "wstr" , "" , "int" , 4096 )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error , @extended , "" )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _WINAPI_GETCLIENTHEIGHT ( $HWND )
	Local $TRECT = _WINAPI_GETCLIENTRECT ( $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return DllStructGetData ( $TRECT , "Bottom" ) - DllStructGetData ( $TRECT , "Top" )
EndFunc
Func _WINAPI_GETCLIENTWIDTH ( $HWND )
	Local $TRECT = _WINAPI_GETCLIENTRECT ( $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return DllStructGetData ( $TRECT , "Right" ) - DllStructGetData ( $TRECT , "Left" )
EndFunc
Func _WINAPI_GETCLIENTRECT ( $HWND )
	Local $TRECT = DllStructCreate ( $TAGRECT )
	Local $ARET = DllCall ( "user32.dll" , "bool" , "GetClientRect" , "hwnd" , $HWND , "struct*" , $TRECT )
	If @error Or Not $ARET [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Return $TRECT
EndFunc
Func _WINAPI_GETCURRENTPROCESS ( )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "GetCurrentProcess" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETCURRENTPROCESSID ( )
	Local $ARESULT = DllCall ( "kernel32.dll" , "dword" , "GetCurrentProcessId" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETCURRENTTHREAD ( )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "GetCurrentThread" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETCURRENTTHREADID ( )
	Local $ARESULT = DllCall ( "kernel32.dll" , "dword" , "GetCurrentThreadId" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETCURSORINFO ( )
	Local $TCURSOR = DllStructCreate ( $TAGCURSORINFO )
	Local $ICURSOR = DllStructGetSize ( $TCURSOR )
	DllStructSetData ( $TCURSOR , "Size" , $ICURSOR )
	Local $ARET = DllCall ( "user32.dll" , "bool" , "GetCursorInfo" , "struct*" , $TCURSOR )
	If @error Or Not $ARET [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Local $ACURSOR [ 5 ]
	$ACURSOR [ 0 ] = True
	$ACURSOR [ 1 ] = DllStructGetData ( $TCURSOR , "Flags" ) <> 0
	$ACURSOR [ 2 ] = DllStructGetData ( $TCURSOR , "hCursor" )
	$ACURSOR [ 3 ] = DllStructGetData ( $TCURSOR , "X" )
	$ACURSOR [ 4 ] = DllStructGetData ( $TCURSOR , "Y" )
	Return $ACURSOR
EndFunc
Func _WINAPI_GETDC ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "handle" , "GetDC" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETDESKTOPWINDOW ( )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "GetDesktopWindow" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETDEVICECAPS ( $HDC , $IINDEX )
	Local $ARESULT = DllCall ( "gdi32.dll" , "int" , "GetDeviceCaps" , "handle" , $HDC , "int" , $IINDEX )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETDIBITS ( $HDC , $HBITMAP , $ISTARTSCAN , $ISCANLINES , $PBITS , $TBI , $IUSAGE )
	Local $ARESULT = DllCall ( "gdi32.dll" , "int" , "GetDIBits" , "handle" , $HDC , "handle" , $HBITMAP , "uint" , $ISTARTSCAN , "uint" , $ISCANLINES , "struct*" , $PBITS , "struct*" , $TBI , "uint" , $IUSAGE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETDLGCTRLID ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "GetDlgCtrlID" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETDLGITEM ( $HWND , $IITEMID )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "GetDlgItem" , "hwnd" , $HWND , "int" , $IITEMID )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETFILESIZEEX ( $HFILE )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "GetFileSizeEx" , "handle" , $HFILE , "int64*" , 0 )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error , @extended , + 4294967295 )
	Return $ARESULT [ 2 ]
EndFunc
Func _WINAPI_GETFOCUS ( )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "GetFocus" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETFOREGROUNDWINDOW ( )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "GetForegroundWindow" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETGUIRESOURCES ( $IFLAG = 0 , $HPROCESS = + 4294967295 )
	If $HPROCESS = + 4294967295 Then $HPROCESS = _WINAPI_GETCURRENTPROCESS ( )
	Local $ARESULT = DllCall ( "user32.dll" , "dword" , "GetGuiResources" , "handle" , $HPROCESS , "dword" , $IFLAG )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETICONINFO ( $HICON )
	Local $TINFO = DllStructCreate ( $TAGICONINFO )
	Local $ARET = DllCall ( "user32.dll" , "bool" , "GetIconInfo" , "handle" , $HICON , "struct*" , $TINFO )
	If @error Or Not $ARET [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Local $AICON [ 6 ]
	$AICON [ 0 ] = True
	$AICON [ 1 ] = DllStructGetData ( $TINFO , "Icon" ) <> 0
	$AICON [ 2 ] = DllStructGetData ( $TINFO , "XHotSpot" )
	$AICON [ 3 ] = DllStructGetData ( $TINFO , "YHotSpot" )
	$AICON [ 4 ] = DllStructGetData ( $TINFO , "hMask" )
	$AICON [ 5 ] = DllStructGetData ( $TINFO , "hColor" )
	Return $AICON
EndFunc
Func _WINAPI_GETLASTERRORMESSAGE ( )
	Local $ILASTERROR = _WINAPI_GETLASTERROR ( )
	Local $TBUFFERPTR = DllStructCreate ( "ptr" )
	Local $NCOUNT = _WINAPI_FORMATMESSAGE ( BitOR ( $FORMAT_MESSAGE_ALLOCATE_BUFFER , $FORMAT_MESSAGE_FROM_SYSTEM ) , 0 , $ILASTERROR , 0 , $TBUFFERPTR , 0 , 0 )
	If @error Then Return SetError ( @error , 0 , "" )
	Local $STEXT = ""
	Local $PBUFFER = DllStructGetData ( $TBUFFERPTR , 1 )
	If $PBUFFER Then
		If $NCOUNT > 0 Then
			Local $TBUFFER = DllStructCreate ( "wchar[" & ( $NCOUNT + 1 ) & "]" , $PBUFFER )
			$STEXT = DllStructGetData ( $TBUFFER , 1 )
			If StringRight ( $STEXT , 2 ) = @CRLF Then $STEXT = StringTrimRight ( $STEXT , 2 )
		EndIf
		_WINAPI_LOCALFREE ( $PBUFFER )
	EndIf
	Return $STEXT
EndFunc
Func _WINAPI_GETLAYEREDWINDOWATTRIBUTES ( $HWND , ByRef $ITRANSCOLOR , ByRef $ITRANSGUI , $BCOLORREF = False )
	$ITRANSCOLOR = + 4294967295
	$ITRANSGUI = + 4294967295
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "GetLayeredWindowAttributes" , "hwnd" , $HWND , "INT*" , $ITRANSCOLOR , "byte*" , $ITRANSGUI , "dword*" , 0 )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error , @extended , 0 )
	If Not $BCOLORREF Then
		$ARESULT [ 2 ] = Int ( BinaryMid ( $ARESULT [ 2 ] , 3 , 1 ) & BinaryMid ( $ARESULT [ 2 ] , 2 , 1 ) & BinaryMid ( $ARESULT [ 2 ] , 1 , 1 ) )
	EndIf
	$ITRANSCOLOR = $ARESULT [ 2 ]
	$ITRANSGUI = $ARESULT [ 3 ]
	Return $ARESULT [ 4 ]
EndFunc
Func _WINAPI_GETMODULEHANDLE ( $SMODULENAME )
	Local $SMODULENAMETYPE = "wstr"
	If $SMODULENAME = "" Then
		$SMODULENAME = 0
		$SMODULENAMETYPE = "ptr"
	EndIf
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "GetModuleHandleW" , $SMODULENAMETYPE , $SMODULENAME )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETMOUSEPOS ( $BTOCLIENT = False , $HWND = 0 )
	Local $IMODE = Opt ( "MouseCoordMode" , 1 )
	Local $APOS = MouseGetPos ( )
	Opt ( "MouseCoordMode" , $IMODE )
	Local $TPOINT = DllStructCreate ( $TAGPOINT )
	DllStructSetData ( $TPOINT , "X" , $APOS [ 0 ] )
	DllStructSetData ( $TPOINT , "Y" , $APOS [ 1 ] )
	If $BTOCLIENT And Not _WINAPI_SCREENTOCLIENT ( $HWND , $TPOINT ) Then Return SetError ( @error + 20 , @extended , 0 )
	Return $TPOINT
EndFunc
Func _WINAPI_GETMOUSEPOSX ( $BTOCLIENT = False , $HWND = 0 )
	Local $TPOINT = _WINAPI_GETMOUSEPOS ( $BTOCLIENT , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return DllStructGetData ( $TPOINT , "X" )
EndFunc
Func _WINAPI_GETMOUSEPOSY ( $BTOCLIENT = False , $HWND = 0 )
	Local $TPOINT = _WINAPI_GETMOUSEPOS ( $BTOCLIENT , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return DllStructGetData ( $TPOINT , "Y" )
EndFunc
Func _WINAPI_GETOBJECT ( $HOBJECT , $ISIZE , $POBJECT )
	Local $ARESULT = DllCall ( "gdi32.dll" , "int" , "GetObjectW" , "handle" , $HOBJECT , "int" , $ISIZE , "struct*" , $POBJECT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETOPENFILENAME ( $STITLE = "" , $SFILTER = "All files (*.*)" , $SINITALDIR = "." , $SDEFAULTFILE = "" , $SDEFAULTEXT = "" , $IFILTERINDEX = 1 , $IFLAGS = 0 , $IFLAGSEX = 0 , $HWNDOWNER = 0 )
	Local $IPATHLEN = 4096
	Local $INULLS = 0
	Local $TOFN = DllStructCreate ( $TAGOPENFILENAME )
	Local $AFILES [ 1 ] = [ 0 ]
	Local $IFLAG = $IFLAGS
	Local $ASFLINES = StringSplit ( $SFILTER , "|" )
	Local $ASFILTER [ $ASFLINES [ 0 ] * 2 + 1 ]
	Local $ISTART , $IFINAL , $TAGFILTER
	$ASFILTER [ 0 ] = $ASFLINES [ 0 ] * 2
	For $I = 1 To $ASFLINES [ 0 ]
		$ISTART = StringInStr ( $ASFLINES [ $I ] , "(" , 0 , 1 )
		$IFINAL = StringInStr ( $ASFLINES [ $I ] , ")" , 0 , + 4294967295 )
		$ASFILTER [ $I * 2 + 4294967295 ] = StringStripWS ( StringLeft ( $ASFLINES [ $I ] , $ISTART + 4294967295 ) , $STR_STRIPLEADING + $STR_STRIPTRAILING )
		$ASFILTER [ $I * 2 ] = StringStripWS ( StringTrimRight ( StringTrimLeft ( $ASFLINES [ $I ] , $ISTART ) , StringLen ( $ASFLINES [ $I ] ) - $IFINAL + 1 ) , $STR_STRIPLEADING + $STR_STRIPTRAILING )
		$TAGFILTER &= "wchar[" & StringLen ( $ASFILTER [ $I * 2 + 4294967295 ] ) + 1 & "];wchar[" & StringLen ( $ASFILTER [ $I * 2 ] ) + 1 & "];"
	Next
	Local $TTITLE = DllStructCreate ( "wchar Title[" & StringLen ( $STITLE ) + 1 & "]" )
	Local $TINITIALDIR = DllStructCreate ( "wchar InitDir[" & StringLen ( $SINITALDIR ) + 1 & "]" )
	Local $TFILTER = DllStructCreate ( $TAGFILTER & "wchar" )
	Local $TPATH = DllStructCreate ( "wchar Path[" & $IPATHLEN & "]" )
	Local $TEXTN = DllStructCreate ( "wchar Extension[" & StringLen ( $SDEFAULTEXT ) + 1 & "]" )
	For $I = 1 To $ASFILTER [ 0 ]
		DllStructSetData ( $TFILTER , $I , $ASFILTER [ $I ] )
	Next
	DllStructSetData ( $TTITLE , "Title" , $STITLE )
	DllStructSetData ( $TINITIALDIR , "InitDir" , $SINITALDIR )
	DllStructSetData ( $TPATH , "Path" , $SDEFAULTFILE )
	DllStructSetData ( $TEXTN , "Extension" , $SDEFAULTEXT )
	DllStructSetData ( $TOFN , "StructSize" , DllStructGetSize ( $TOFN ) )
	DllStructSetData ( $TOFN , "hwndOwner" , $HWNDOWNER )
	DllStructSetData ( $TOFN , "lpstrFilter" , DllStructGetPtr ( $TFILTER ) )
	DllStructSetData ( $TOFN , "nFilterIndex" , $IFILTERINDEX )
	DllStructSetData ( $TOFN , "lpstrFile" , DllStructGetPtr ( $TPATH ) )
	DllStructSetData ( $TOFN , "nMaxFile" , $IPATHLEN )
	DllStructSetData ( $TOFN , "lpstrInitialDir" , DllStructGetPtr ( $TINITIALDIR ) )
	DllStructSetData ( $TOFN , "lpstrTitle" , DllStructGetPtr ( $TTITLE ) )
	DllStructSetData ( $TOFN , "Flags" , $IFLAG )
	DllStructSetData ( $TOFN , "lpstrDefExt" , DllStructGetPtr ( $TEXTN ) )
	DllStructSetData ( $TOFN , "FlagsEx" , $IFLAGSEX )
	Local $ARES = DllCall ( "comdlg32.dll" , "bool" , "GetOpenFileNameW" , "struct*" , $TOFN )
	If @error Or Not $ARES [ 0 ] Then Return SetError ( @error + 10 , @extended , $AFILES )
	If BitAND ( $IFLAGS , $OFN_ALLOWMULTISELECT ) = $OFN_ALLOWMULTISELECT And BitAND ( $IFLAGS , $OFN_EXPLORER ) = $OFN_EXPLORER Then
		For $X = 1 To $IPATHLEN
			If DllStructGetData ( $TPATH , "Path" , $X ) = Chr ( 0 ) Then
				DllStructSetData ( $TPATH , "Path" , "|" , $X )
				$INULLS += 1
			Else
				$INULLS = 0
			EndIf
			If $INULLS = 2 Then ExitLoop
		Next
		DllStructSetData ( $TPATH , "Path" , Chr ( 0 ) , $X + 4294967295 )
		$AFILES = StringSplit ( DllStructGetData ( $TPATH , "Path" ) , "|" )
		If $AFILES [ 0 ] = 1 Then Return __WINAPI_PARSEFILEDIALOGPATH ( DllStructGetData ( $TPATH , "Path" ) )
		Return StringSplit ( DllStructGetData ( $TPATH , "Path" ) , "|" )
	ElseIf BitAND ( $IFLAGS , $OFN_ALLOWMULTISELECT ) = $OFN_ALLOWMULTISELECT Then
		$AFILES = StringSplit ( DllStructGetData ( $TPATH , "Path" ) , " " )
		If $AFILES [ 0 ] = 1 Then Return __WINAPI_PARSEFILEDIALOGPATH ( DllStructGetData ( $TPATH , "Path" ) )
		Return StringSplit ( StringReplace ( DllStructGetData ( $TPATH , "Path" ) , " " , "|" ) , "|" )
	Else
		Return __WINAPI_PARSEFILEDIALOGPATH ( DllStructGetData ( $TPATH , "Path" ) )
	EndIf
EndFunc
Func _WINAPI_GETOVERLAPPEDRESULT ( $HFILE , $TOVERLAPPED , ByRef $IBYTES , $BWAIT = False )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "GetOverlappedResult" , "handle" , $HFILE , "struct*" , $TOVERLAPPED , "dword*" , 0 , "bool" , $BWAIT )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error , @extended , False )
	$IBYTES = $ARESULT [ 3 ]
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETPARENT ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "GetParent" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETPROCADDRESS ( $HMODULE , $VNAME )
	Local $STYPE = "str"
	If IsNumber ( $VNAME ) Then $STYPE = "word"
	Local $ARESULT = DllCall ( "kernel32.dll" , "ptr" , "GetProcAddress" , "handle" , $HMODULE , $STYPE , $VNAME )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETPROCESSAFFINITYMASK ( $HPROCESS )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "GetProcessAffinityMask" , "handle" , $HPROCESS , "dword_ptr*" , 0 , "dword_ptr*" , 0 )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Local $AMASK [ 3 ]
	$AMASK [ 0 ] = True
	$AMASK [ 1 ] = $ARESULT [ 2 ]
	$AMASK [ 2 ] = $ARESULT [ 3 ]
	Return $AMASK
EndFunc
Func _WINAPI_GETSAVEFILENAME ( $STITLE = "" , $SFILTER = "All files (*.*)" , $SINITALDIR = "." , $SDEFAULTFILE = "" , $SDEFAULTEXT = "" , $IFILTERINDEX = 1 , $IFLAGS = 0 , $IFLAGSEX = 0 , $HWNDOWNER = 0 )
	Local $IPATHLEN = 4096
	Local $TOFN = DllStructCreate ( $TAGOPENFILENAME )
	Local $AFILES [ 1 ] = [ 0 ]
	Local $IFLAG = $IFLAGS
	Local $ASFLINES = StringSplit ( $SFILTER , "|" )
	Local $ASFILTER [ $ASFLINES [ 0 ] * 2 + 1 ]
	Local $ISTART , $IFINAL , $TAGFILTER
	$ASFILTER [ 0 ] = $ASFLINES [ 0 ] * 2
	For $I = 1 To $ASFLINES [ 0 ]
		$ISTART = StringInStr ( $ASFLINES [ $I ] , "(" , 0 , 1 )
		$IFINAL = StringInStr ( $ASFLINES [ $I ] , ")" , 0 , + 4294967295 )
		$ASFILTER [ $I * 2 + 4294967295 ] = StringStripWS ( StringLeft ( $ASFLINES [ $I ] , $ISTART + 4294967295 ) , $STR_STRIPLEADING + $STR_STRIPTRAILING )
		$ASFILTER [ $I * 2 ] = StringStripWS ( StringTrimRight ( StringTrimLeft ( $ASFLINES [ $I ] , $ISTART ) , StringLen ( $ASFLINES [ $I ] ) - $IFINAL + 1 ) , $STR_STRIPLEADING + $STR_STRIPTRAILING )
		$TAGFILTER &= "wchar[" & StringLen ( $ASFILTER [ $I * 2 + 4294967295 ] ) + 1 & "];wchar[" & StringLen ( $ASFILTER [ $I * 2 ] ) + 1 & "];"
	Next
	Local $TTITLE = DllStructCreate ( "wchar Title[" & StringLen ( $STITLE ) + 1 & "]" )
	Local $TINITIALDIR = DllStructCreate ( "wchar InitDir[" & StringLen ( $SINITALDIR ) + 1 & "]" )
	Local $TFILTER = DllStructCreate ( $TAGFILTER & "wchar" )
	Local $TPATH = DllStructCreate ( "wchar Path[" & $IPATHLEN & "]" )
	Local $TEXTN = DllStructCreate ( "wchar Extension[" & StringLen ( $SDEFAULTEXT ) + 1 & "]" )
	For $I = 1 To $ASFILTER [ 0 ]
		DllStructSetData ( $TFILTER , $I , $ASFILTER [ $I ] )
	Next
	DllStructSetData ( $TTITLE , "Title" , $STITLE )
	DllStructSetData ( $TINITIALDIR , "InitDir" , $SINITALDIR )
	DllStructSetData ( $TPATH , "Path" , $SDEFAULTFILE )
	DllStructSetData ( $TEXTN , "Extension" , $SDEFAULTEXT )
	DllStructSetData ( $TOFN , "StructSize" , DllStructGetSize ( $TOFN ) )
	DllStructSetData ( $TOFN , "hwndOwner" , $HWNDOWNER )
	DllStructSetData ( $TOFN , "lpstrFilter" , DllStructGetPtr ( $TFILTER ) )
	DllStructSetData ( $TOFN , "nFilterIndex" , $IFILTERINDEX )
	DllStructSetData ( $TOFN , "lpstrFile" , DllStructGetPtr ( $TPATH ) )
	DllStructSetData ( $TOFN , "nMaxFile" , $IPATHLEN )
	DllStructSetData ( $TOFN , "lpstrInitialDir" , DllStructGetPtr ( $TINITIALDIR ) )
	DllStructSetData ( $TOFN , "lpstrTitle" , DllStructGetPtr ( $TTITLE ) )
	DllStructSetData ( $TOFN , "Flags" , $IFLAG )
	DllStructSetData ( $TOFN , "lpstrDefExt" , DllStructGetPtr ( $TEXTN ) )
	DllStructSetData ( $TOFN , "FlagsEx" , $IFLAGSEX )
	Local $ARES = DllCall ( "comdlg32.dll" , "bool" , "GetSaveFileNameW" , "struct*" , $TOFN )
	If @error Or Not $ARES [ 0 ] Then Return SetError ( @error + 10 , @extended , $AFILES )
	Return __WINAPI_PARSEFILEDIALOGPATH ( DllStructGetData ( $TPATH , "Path" ) )
EndFunc
Func _WINAPI_GETSTOCKOBJECT ( $IOBJECT )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "GetStockObject" , "int" , $IOBJECT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETSTDHANDLE ( $ISTDHANDLE )
	If $ISTDHANDLE < 0 Or $ISTDHANDLE > 2 Then Return SetError ( 2 , 0 , + 4294967295 )
	Local Const $AHANDLE [ 3 ] = [ + 4294967286 , + 4294967285 , + 4294967284 ]
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "GetStdHandle" , "dword" , $AHANDLE [ $ISTDHANDLE ] )
	If @error Then Return SetError ( @error , @extended , + 4294967295 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETSYSCOLOR ( $IINDEX )
	Local $ARESULT = DllCall ( "user32.dll" , "INT" , "GetSysColor" , "int" , $IINDEX )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETSYSCOLORBRUSH ( $IINDEX )
	Local $ARESULT = DllCall ( "user32.dll" , "handle" , "GetSysColorBrush" , "int" , $IINDEX )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETSYSTEMMETRICS ( $IINDEX )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "GetSystemMetrics" , "int" , $IINDEX )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETTEXTEXTENTPOINT32 ( $HDC , $STEXT )
	Local $TSIZE = DllStructCreate ( $TAGSIZE )
	Local $ISIZE = StringLen ( $STEXT )
	Local $ARET = DllCall ( "gdi32.dll" , "bool" , "GetTextExtentPoint32W" , "handle" , $HDC , "wstr" , $STEXT , "int" , $ISIZE , "struct*" , $TSIZE )
	If @error Or Not $ARET [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Return $TSIZE
EndFunc
Func _WINAPI_GETTEXTMETRICS ( $HDC )
	Local $TTEXTMETRIC = DllStructCreate ( $TAGTEXTMETRIC )
	Local $ARET = DllCall ( "gdi32.dll" , "bool" , "GetTextMetricsW" , "handle" , $HDC , "struct*" , $TTEXTMETRIC )
	If @error Or Not $ARET [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Return $TTEXTMETRIC
EndFunc
Func _WINAPI_GETWINDOW ( $HWND , $ICMD )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "GetWindow" , "hwnd" , $HWND , "uint" , $ICMD )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETWINDOWDC ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "handle" , "GetWindowDC" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETWINDOWHEIGHT ( $HWND )
	Local $TRECT = _WINAPI_GETWINDOWRECT ( $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return DllStructGetData ( $TRECT , "Bottom" ) - DllStructGetData ( $TRECT , "Top" )
EndFunc
Func _WINAPI_GETWINDOWLONG ( $HWND , $IINDEX )
	Local $SFUNCNAME = "GetWindowLongW"
	If @AutoItX64 Then $SFUNCNAME = "GetWindowLongPtrW"
	Local $ARESULT = DllCall ( "user32.dll" , "long_ptr" , $SFUNCNAME , "hwnd" , $HWND , "int" , $IINDEX )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETWINDOWPLACEMENT ( $HWND )
	Local $TWINDOWPLACEMENT = DllStructCreate ( $TAGWINDOWPLACEMENT )
	DllStructSetData ( $TWINDOWPLACEMENT , "length" , DllStructGetSize ( $TWINDOWPLACEMENT ) )
	Local $ARET = DllCall ( "user32.dll" , "bool" , "GetWindowPlacement" , "hwnd" , $HWND , "struct*" , $TWINDOWPLACEMENT )
	If @error Or Not $ARET [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Return $TWINDOWPLACEMENT
EndFunc
Func _WINAPI_GETWINDOWRECT ( $HWND )
	Local $TRECT = DllStructCreate ( $TAGRECT )
	Local $ARET = DllCall ( "user32.dll" , "bool" , "GetWindowRect" , "hwnd" , $HWND , "struct*" , $TRECT )
	If @error Or Not $ARET [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Return $TRECT
EndFunc
Func _WINAPI_GETWINDOWRGN ( $HWND , $HRGN )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "GetWindowRgn" , "hwnd" , $HWND , "handle" , $HRGN )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETWINDOWTEXT ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "GetWindowTextW" , "hwnd" , $HWND , "wstr" , "" , "int" , 4096 )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error + 10 , @extended , "" )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _WINAPI_GETWINDOWTHREADPROCESSID ( $HWND , ByRef $IPID )
	Local $ARESULT = DllCall ( "user32.dll" , "dword" , "GetWindowThreadProcessId" , "hwnd" , $HWND , "dword*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	$IPID = $ARESULT [ 2 ]
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETWINDOWWIDTH ( $HWND )
	Local $TRECT = _WINAPI_GETWINDOWRECT ( $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return DllStructGetData ( $TRECT , "Right" ) - DllStructGetData ( $TRECT , "Left" )
EndFunc
Func _WINAPI_GETXYFROMPOINT ( ByRef $TPOINT , ByRef $IX , ByRef $IY )
	$IX = DllStructGetData ( $TPOINT , "X" )
	$IY = DllStructGetData ( $TPOINT , "Y" )
EndFunc
Func _WINAPI_GLOBALMEMORYSTATUS ( )
	Local $TMEM = DllStructCreate ( $TAGMEMORYSTATUSEX )
	DllStructSetData ( $TMEM , 1 , DllStructGetSize ( $TMEM ) )
	Local $ARET = DllCall ( "kernel32.dll" , "bool" , "GlobalMemoryStatusEx" , "struct*" , $TMEM )
	If @error Or Not $ARET [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Local $AMEM [ 7 ]
	$AMEM [ 0 ] = DllStructGetData ( $TMEM , 2 )
	$AMEM [ 1 ] = DllStructGetData ( $TMEM , 3 )
	$AMEM [ 2 ] = DllStructGetData ( $TMEM , 4 )
	$AMEM [ 3 ] = DllStructGetData ( $TMEM , 5 )
	$AMEM [ 4 ] = DllStructGetData ( $TMEM , 6 )
	$AMEM [ 5 ] = DllStructGetData ( $TMEM , 7 )
	$AMEM [ 6 ] = DllStructGetData ( $TMEM , 8 )
	Return $AMEM
EndFunc
Func _WINAPI_GUIDFROMSTRING ( $SGUID )
	Local $TGUID = DllStructCreate ( $TAGGUID )
	_WINAPI_GUIDFROMSTRINGEX ( $SGUID , $TGUID )
	If @error Then Return SetError ( @error + 10 , @extended , 0 )
	Return $TGUID
EndFunc
Func _WINAPI_GUIDFROMSTRINGEX ( $SGUID , $TGUID )
	Local $ARESULT = DllCall ( "ole32.dll" , "long" , "CLSIDFromString" , "wstr" , $SGUID , "struct*" , $TGUID )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_HIWORD ( $ILONG )
	Return BitShift ( $ILONG , 16 )
EndFunc
Func _WINAPI_INPROCESS ( $HWND , ByRef $HLASTWND )
	If $HWND = $HLASTWND Then Return True
	For $II = $__G_AINPROCESS_WINAPI [ 0 ] [ 0 ] To 1 Step + 4294967295
		If $HWND = $__G_AINPROCESS_WINAPI [ $II ] [ 0 ] Then
			If $__G_AINPROCESS_WINAPI [ $II ] [ 1 ] Then
				$HLASTWND = $HWND
				Return True
			Else
				Return False
			EndIf
		EndIf
	Next
	Local $IPID
	_WINAPI_GETWINDOWTHREADPROCESSID ( $HWND , $IPID )
	Local $ICOUNT = $__G_AINPROCESS_WINAPI [ 0 ] [ 0 ] + 1
	If $ICOUNT >= 64 Then $ICOUNT = 1
	$__G_AINPROCESS_WINAPI [ 0 ] [ 0 ] = $ICOUNT
	$__G_AINPROCESS_WINAPI [ $ICOUNT ] [ 0 ] = $HWND
	$__G_AINPROCESS_WINAPI [ $ICOUNT ] [ 1 ] = ( $IPID = @AutoItPID )
	Return $__G_AINPROCESS_WINAPI [ $ICOUNT ] [ 1 ]
EndFunc
Func _WINAPI_INTTOFLOAT ( $IINT )
	Local $TINT = DllStructCreate ( "int" )
	Local $TFLOAT = DllStructCreate ( "float" , DllStructGetPtr ( $TINT ) )
	DllStructSetData ( $TINT , 1 , $IINT )
	Return DllStructGetData ( $TFLOAT , 1 )
EndFunc
Func _WINAPI_ISCLASSNAME ( $HWND , $SCLASSNAME )
	Local $SSEPARATOR = Opt ( "GUIDataSeparatorChar" )
	Local $ACLASSNAME = StringSplit ( $SCLASSNAME , $SSEPARATOR )
	If Not IsHWnd ( $HWND ) Then $HWND = GUICtrlGetHandle ( $HWND )
	Local $SCLASSCHECK = _WINAPI_GETCLASSNAME ( $HWND )
	For $X = 1 To UBound ( $ACLASSNAME ) + 4294967295
		If StringUpper ( StringMid ( $SCLASSCHECK , 1 , StringLen ( $ACLASSNAME [ $X ] ) ) ) = StringUpper ( $ACLASSNAME [ $X ] ) Then Return True
	Next
	Return False
EndFunc
Func _WINAPI_ISWINDOW ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "IsWindow" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_ISWINDOWVISIBLE ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "IsWindowVisible" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_INVALIDATERECT ( $HWND , $TRECT = 0 , $BERASE = True )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "InvalidateRect" , "hwnd" , $HWND , "struct*" , $TRECT , "bool" , $BERASE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_LINETO ( $HDC , $IX , $IY )
	Local $ARESULT = DllCall ( "gdi32.dll" , "bool" , "LineTo" , "handle" , $HDC , "int" , $IX , "int" , $IY )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_LOADBITMAP ( $HINSTANCE , $SBITMAP )
	Local $SBITMAPTYPE = "int"
	If IsString ( $SBITMAP ) Then $SBITMAPTYPE = "wstr"
	Local $ARESULT = DllCall ( "user32.dll" , "handle" , "LoadBitmapW" , "handle" , $HINSTANCE , $SBITMAPTYPE , $SBITMAP )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_LOADIMAGE ( $HINSTANCE , $SIMAGE , $ITYPE , $IXDESIRED , $IYDESIRED , $ILOAD )
	Local $ARESULT , $SIMAGETYPE = "int"
	If IsString ( $SIMAGE ) Then $SIMAGETYPE = "wstr"
	$ARESULT = DllCall ( "user32.dll" , "handle" , "LoadImageW" , "handle" , $HINSTANCE , $SIMAGETYPE , $SIMAGE , "uint" , $ITYPE , "int" , $IXDESIRED , "int" , $IYDESIRED , "uint" , $ILOAD )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_LOADLIBRARY ( $SFILENAME )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "LoadLibraryW" , "wstr" , $SFILENAME )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_LOADLIBRARYEX ( $SFILENAME , $IFLAGS = 0 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "LoadLibraryExW" , "wstr" , $SFILENAME , "ptr" , 0 , "dword" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_LOADSHELL32ICON ( $IICONID )
	Local $TICONS = DllStructCreate ( "ptr Data" )
	Local $IICONS = _WINAPI_EXTRACTICONEX ( "shell32.dll" , $IICONID , 0 , $TICONS , 1 )
	If @error Then Return SetError ( @error , @extended , 0 )
	If $IICONS <= 0 Then Return SetError ( 10 , 0 , 0 )
	Return DllStructGetData ( $TICONS , "Data" )
EndFunc
Func _WINAPI_LOADSTRING ( $HINSTANCE , $ISTRINGID )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "LoadStringW" , "handle" , $HINSTANCE , "uint" , $ISTRINGID , "wstr" , "" , "int" , 4096 )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error + 10 , @extended , "" )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 3 ] )
EndFunc
Func _WINAPI_LOCALFREE ( $HMEMORY )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "LocalFree" , "handle" , $HMEMORY )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_LOWORD ( $ILONG )
	Return BitAND ( $ILONG , 65535 )
EndFunc
Func _WINAPI_MAKELANGID ( $ILNGIDPRIMARY , $ILNGIDSUB )
	Return BitOR ( BitShift ( $ILNGIDSUB , + 4294967286 ) , $ILNGIDPRIMARY )
EndFunc
Func _WINAPI_MAKELCID ( $ILNGID , $ISORTID )
	Return BitOR ( BitShift ( $ISORTID , + 4294967280 ) , $ILNGID )
EndFunc
Func _WINAPI_MAKELONG ( $ILO , $IHI )
	Return BitOR ( BitShift ( $IHI , + 4294967280 ) , BitAND ( $ILO , 65535 ) )
EndFunc
Func _WINAPI_MAKEQWORD ( $ILODWORD , $IHIDWORD )
	Local $TINT64 = DllStructCreate ( "uint64" )
	Local $TDWORDS = DllStructCreate ( "dword;dword" , DllStructGetPtr ( $TINT64 ) )
	DllStructSetData ( $TDWORDS , 1 , $ILODWORD )
	DllStructSetData ( $TDWORDS , 2 , $IHIDWORD )
	Return DllStructGetData ( $TINT64 , 1 )
EndFunc
Func _WINAPI_MESSAGEBEEP ( $ITYPE = 1 )
	Local $ISOUND
	Switch $ITYPE
	Case 1
		$ISOUND = 0
	Case 2
		$ISOUND = 16
	Case 3
		$ISOUND = 32
	Case 4
		$ISOUND = 48
	Case 5
		$ISOUND = 64
Case Else
		$ISOUND = + 4294967295
	EndSwitch
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "MessageBeep" , "uint" , $ISOUND )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_MSGBOX ( $IFLAGS , $STITLE , $STEXT )
	BlockInput ( 0 )
	MsgBox ( $IFLAGS , $STITLE , $STEXT & "      " )
EndFunc
Func _WINAPI_MOUSE_EVENT ( $IFLAGS , $IX = 0 , $IY = 0 , $IDATA = 0 , $IEXTRAINFO = 0 )
	DllCall ( "user32.dll" , "none" , "mouse_event" , "dword" , $IFLAGS , "dword" , $IX , "dword" , $IY , "dword" , $IDATA , "ulong_ptr" , $IEXTRAINFO )
	If @error Then Return SetError ( @error , @extended )
EndFunc
Func _WINAPI_MOVETO ( $HDC , $IX , $IY )
	Local $ARESULT = DllCall ( "gdi32.dll" , "bool" , "MoveToEx" , "handle" , $HDC , "int" , $IX , "int" , $IY , "ptr" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_MOVEWINDOW ( $HWND , $IX , $IY , $IWIDTH , $IHEIGHT , $BREPAINT = True )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "MoveWindow" , "hwnd" , $HWND , "int" , $IX , "int" , $IY , "int" , $IWIDTH , "int" , $IHEIGHT , "bool" , $BREPAINT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_MULDIV ( $INUMBER , $INUMERATOR , $IDENOMINATOR )
	Local $ARESULT = DllCall ( "kernel32.dll" , "int" , "MulDiv" , "int" , $INUMBER , "int" , $INUMERATOR , "int" , $IDENOMINATOR )
	If @error Then Return SetError ( @error , @extended , + 4294967295 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_MULTIBYTETOWIDECHAR ( $VTEXT , $ICODEPAGE = 0 , $IFLAGS = 0 , $BRETSTRING = False )
	Local $STEXTTYPE = "str"
	If Not IsString ( $VTEXT ) Then $STEXTTYPE = "struct*"
	Local $ARESULT = DllCall ( "kernel32.dll" , "int" , "MultiByteToWideChar" , "uint" , $ICODEPAGE , "dword" , $IFLAGS , $STEXTTYPE , $VTEXT , "int" , + 4294967295 , "ptr" , 0 , "int" , 0 )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error + 10 , @extended , 0 )
	Local $IOUT = $ARESULT [ 0 ]
	Local $TOUT = DllStructCreate ( "wchar[" & $IOUT & "]" )
	$ARESULT = DllCall ( "kernel32.dll" , "int" , "MultiByteToWideChar" , "uint" , $ICODEPAGE , "dword" , $IFLAGS , $STEXTTYPE , $VTEXT , "int" , + 4294967295 , "struct*" , $TOUT , "int" , $IOUT )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error + 20 , @extended , 0 )
	If $BRETSTRING Then Return DllStructGetData ( $TOUT , 1 )
	Return $TOUT
EndFunc
Func _WINAPI_MULTIBYTETOWIDECHAREX ( $STEXT , $PTEXT , $ICODEPAGE = 0 , $IFLAGS = 0 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "int" , "MultiByteToWideChar" , "uint" , $ICODEPAGE , "dword" , $IFLAGS , "STR" , $STEXT , "int" , + 4294967295 , "struct*" , $PTEXT , "int" , ( StringLen ( $STEXT ) + 1 ) * 2 )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_OPENPROCESS ( $IACCESS , $BINHERIT , $IPID , $BDEBUGPRIV = False )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "OpenProcess" , "dword" , $IACCESS , "bool" , $BINHERIT , "dword" , $IPID )
	If @error Then Return SetError ( @error , @extended , 0 )
	If $ARESULT [ 0 ] Then Return $ARESULT [ 0 ]
	If Not $BDEBUGPRIV Then Return SetError ( 100 , 0 , 0 )
	Local $HTOKEN = _SECURITY__OPENTHREADTOKENEX ( BitOR ( $TOKEN_ADJUST_PRIVILEGES , $TOKEN_QUERY ) )
	If @error Then Return SetError ( @error + 10 , @extended , 0 )
	_SECURITY__SETPRIVILEGE ( $HTOKEN , "SeDebugPrivilege" , True )
	Local $IERROR = @error
	Local $IEXTENDED = @extended
	Local $IRET = 0
	If Not @error Then
		$ARESULT = DllCall ( "kernel32.dll" , "handle" , "OpenProcess" , "dword" , $IACCESS , "bool" , $BINHERIT , "dword" , $IPID )
		$IERROR = @error
		$IEXTENDED = @extended
		If $ARESULT [ 0 ] Then $IRET = $ARESULT [ 0 ]
		_SECURITY__SETPRIVILEGE ( $HTOKEN , "SeDebugPrivilege" , False )
		If @error Then
			$IERROR = @error + 20
			$IEXTENDED = @extended
		EndIf
	Else
		$IERROR = @error + 30
	EndIf
	_WINAPI_CLOSEHANDLE ( $HTOKEN )
	Return SetError ( $IERROR , $IEXTENDED , $IRET )
EndFunc
Func __WINAPI_PARSEFILEDIALOGPATH ( $SPATH )
	Local $AFILES [ 3 ]
	$AFILES [ 0 ] = 2
	Local $STEMP = StringMid ( $SPATH , 1 , StringInStr ( $SPATH , "\" , 0 , + 4294967295 ) + 4294967295 )
	$AFILES [ 1 ] = $STEMP
	$AFILES [ 2 ] = StringMid ( $SPATH , StringInStr ( $SPATH , "\" , 0 , + 4294967295 ) + 1 )
	Return $AFILES
EndFunc
Func _WINAPI_PATHFINDONPATH ( Const $SFILEPATH , $AEXTRAPATHS = "" , Const $SPATHDELIMITER = @LF )
	Local $IEXTRACOUNT = 0
	If IsString ( $AEXTRAPATHS ) Then
		If StringLen ( $AEXTRAPATHS ) Then
			$AEXTRAPATHS = StringSplit ( $AEXTRAPATHS , $SPATHDELIMITER , $STR_ENTIRESPLIT + $STR_NOCOUNT )
			$IEXTRACOUNT = UBound ( $AEXTRAPATHS , $UBOUND_ROWS )
		EndIf
	ElseIf IsArray ( $AEXTRAPATHS ) Then
		$IEXTRACOUNT = UBound ( $AEXTRAPATHS )
	EndIf
	Local $TPATHS , $TPATHPTRS
	If $IEXTRACOUNT Then
		Local $TAGSTRUCT = ""
		For $PATH In $AEXTRAPATHS
			$TAGSTRUCT &= "wchar[" & StringLen ( $PATH ) + 1 & "];"
		Next
		$TPATHS = DllStructCreate ( $TAGSTRUCT )
		$TPATHPTRS = DllStructCreate ( "ptr[" & $IEXTRACOUNT + 1 & "]" )
		For $I = 1 To $IEXTRACOUNT
			DllStructSetData ( $TPATHS , $I , $AEXTRAPATHS [ $I + 4294967295 ] )
			DllStructSetData ( $TPATHPTRS , 1 , DllStructGetPtr ( $TPATHS , $I ) , $I )
		Next
		DllStructSetData ( $TPATHPTRS , 1 , Ptr ( 0 ) , $IEXTRACOUNT + 1 )
	EndIf
	Local $ARESULT = DllCall ( "shlwapi.dll" , "bool" , "PathFindOnPathW" , "wstr" , $SFILEPATH , "struct*" , $TPATHPTRS )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error + 10 , @extended , $SFILEPATH )
	Return $ARESULT [ 1 ]
EndFunc
Func _WINAPI_POINTFROMRECT ( ByRef $TRECT , $BCENTER = True )
	Local $IX1 = DllStructGetData ( $TRECT , "Left" )
	Local $IY1 = DllStructGetData ( $TRECT , "Top" )
	Local $IX2 = DllStructGetData ( $TRECT , "Right" )
	Local $IY2 = DllStructGetData ( $TRECT , "Bottom" )
	If $BCENTER Then
		$IX1 = $IX1 + ( ( $IX2 - $IX1 ) / 2 )
		$IY1 = $IY1 + ( ( $IY2 - $IY1 ) / 2 )
	EndIf
	Local $TPOINT = DllStructCreate ( $TAGPOINT )
	DllStructSetData ( $TPOINT , "X" , $IX1 )
	DllStructSetData ( $TPOINT , "Y" , $IY1 )
	Return $TPOINT
EndFunc
Func _WINAPI_POSTMESSAGE ( $HWND , $IMSG , $WPARAM , $LPARAM )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "PostMessage" , "hwnd" , $HWND , "uint" , $IMSG , "wparam" , $WPARAM , "lparam" , $LPARAM )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_PRIMARYLANGID ( $ILNGID )
	Return BitAND ( $ILNGID , 1023 )
EndFunc
Func _WINAPI_PTINRECT ( ByRef $TRECT , ByRef $TPOINT )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "PtInRect" , "struct*" , $TRECT , "struct" , $TPOINT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_READFILE ( $HFILE , $PBUFFER , $ITOREAD , ByRef $IREAD , $TOVERLAPPED = 0 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "ReadFile" , "handle" , $HFILE , "struct*" , $PBUFFER , "dword" , $ITOREAD , "dword*" , 0 , "struct*" , $TOVERLAPPED )
	If @error Then Return SetError ( @error , @extended , False )
	$IREAD = $ARESULT [ 4 ]
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_READPROCESSMEMORY ( $HPROCESS , $PBASEADDRESS , $PBUFFER , $ISIZE , ByRef $IREAD )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "ReadProcessMemory" , "handle" , $HPROCESS , "ptr" , $PBASEADDRESS , "struct*" , $PBUFFER , "ulong_ptr" , $ISIZE , "ulong_ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	$IREAD = $ARESULT [ 5 ]
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_RECTISEMPTY ( ByRef $TRECT )
	Return ( DllStructGetData ( $TRECT , "Left" ) = 0 ) And ( DllStructGetData ( $TRECT , "Top" ) = 0 ) And ( DllStructGetData ( $TRECT , "Right" ) = 0 ) And ( DllStructGetData ( $TRECT , "Bottom" ) = 0 )
EndFunc
Func _WINAPI_REDRAWWINDOW ( $HWND , $TRECT = 0 , $HREGION = 0 , $IFLAGS = 5 )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "RedrawWindow" , "hwnd" , $HWND , "struct*" , $TRECT , "handle" , $HREGION , "uint" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_REGISTERWINDOWMESSAGE ( $SMESSAGE )
	Local $ARESULT = DllCall ( "user32.dll" , "uint" , "RegisterWindowMessageW" , "wstr" , $SMESSAGE )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_RELEASECAPTURE ( )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "ReleaseCapture" )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_RELEASEDC ( $HWND , $HDC )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "ReleaseDC" , "hwnd" , $HWND , "handle" , $HDC )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SCREENTOCLIENT ( $HWND , ByRef $TPOINT )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "ScreenToClient" , "hwnd" , $HWND , "struct*" , $TPOINT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SELECTOBJECT ( $HDC , $HGDIOBJ )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "SelectObject" , "handle" , $HDC , "handle" , $HGDIOBJ )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETBKCOLOR ( $HDC , $ICOLOR )
	Local $ARESULT = DllCall ( "gdi32.dll" , "INT" , "SetBkColor" , "handle" , $HDC , "INT" , $ICOLOR )
	If @error Then Return SetError ( @error , @extended , + 4294967295 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETBKMODE ( $HDC , $IBKMODE )
	Local $ARESULT = DllCall ( "gdi32.dll" , "int" , "SetBkMode" , "handle" , $HDC , "int" , $IBKMODE )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETCAPTURE ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "SetCapture" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETCURSOR ( $HCURSOR )
	Local $ARESULT = DllCall ( "user32.dll" , "handle" , "SetCursor" , "handle" , $HCURSOR )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETDEFAULTPRINTER ( $SPRINTER )
	Local $ARESULT = DllCall ( "winspool.drv" , "bool" , "SetDefaultPrinterW" , "wstr" , $SPRINTER )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETDIBITS ( $HDC , $HBITMAP , $ISTARTSCAN , $ISCANLINES , $PBITS , $TBMI , $ICOLORUSE = 0 )
	Local $ARESULT = DllCall ( "gdi32.dll" , "int" , "SetDIBits" , "handle" , $HDC , "handle" , $HBITMAP , "uint" , $ISTARTSCAN , "uint" , $ISCANLINES , "struct*" , $PBITS , "struct*" , $TBMI , "INT" , $ICOLORUSE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETENDOFFILE ( $HFILE )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "SetEndOfFile" , "handle" , $HFILE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETEVENT ( $HEVENT )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "SetEvent" , "handle" , $HEVENT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETFILEPOINTER ( $HFILE , $IPOS , $IMETHOD = 0 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "INT" , "SetFilePointer" , "handle" , $HFILE , "long" , $IPOS , "ptr" , 0 , "long" , $IMETHOD )
	If @error Then Return SetError ( @error , @extended , + 4294967295 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETFOCUS ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "SetFocus" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETFONT ( $HWND , $HFONT , $BREDRAW = True )
	_SENDMESSAGE ( $HWND , $__WINAPICONSTANT_WM_SETFONT , $HFONT , $BREDRAW , 0 , "hwnd" )
EndFunc
Func _WINAPI_SETHANDLEINFORMATION ( $HOBJECT , $IMASK , $IFLAGS )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "SetHandleInformation" , "handle" , $HOBJECT , "dword" , $IMASK , "dword" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETLAYEREDWINDOWATTRIBUTES ( $HWND , $ITRANSCOLOR , $ITRANSGUI = 255 , $IFLAGS = 3 , $BCOLORREF = False )
	If $IFLAGS = Default Or $IFLAGS = "" Or $IFLAGS < 0 Then $IFLAGS = 3
	If Not $BCOLORREF Then
		$ITRANSCOLOR = Int ( BinaryMid ( $ITRANSCOLOR , 3 , 1 ) & BinaryMid ( $ITRANSCOLOR , 2 , 1 ) & BinaryMid ( $ITRANSCOLOR , 1 , 1 ) )
	EndIf
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "SetLayeredWindowAttributes" , "hwnd" , $HWND , "INT" , $ITRANSCOLOR , "byte" , $ITRANSGUI , "dword" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETPARENT ( $HWNDCHILD , $HWNDPARENT )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "SetParent" , "hwnd" , $HWNDCHILD , "hwnd" , $HWNDPARENT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETPROCESSAFFINITYMASK ( $HPROCESS , $IMASK )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "SetProcessAffinityMask" , "handle" , $HPROCESS , "ulong_ptr" , $IMASK )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETSYSCOLORS ( $VELEMENTS , $VCOLORS )
	Local $BISEARRAY = IsArray ( $VELEMENTS ) , $BISCARRAY = IsArray ( $VCOLORS )
	Local $IELEMENTNUM
	If Not $BISCARRAY And Not $BISEARRAY Then
		$IELEMENTNUM = 1
	ElseIf $BISCARRAY Or $BISEARRAY Then
		If Not $BISCARRAY Or Not $BISEARRAY Then Return SetError ( + 4294967295 , + 4294967295 , False )
		If UBound ( $VELEMENTS ) <> UBound ( $VCOLORS ) Then Return SetError ( + 4294967295 , + 4294967295 , False )
		$IELEMENTNUM = UBound ( $VELEMENTS )
	EndIf
	Local $TELEMENTS = DllStructCreate ( "int Element[" & $IELEMENTNUM & "]" )
	Local $TCOLORS = DllStructCreate ( "INT NewColor[" & $IELEMENTNUM & "]" )
	If Not $BISEARRAY Then
		DllStructSetData ( $TELEMENTS , "Element" , $VELEMENTS , 1 )
	Else
		For $X = 0 To $IELEMENTNUM + 4294967295
			DllStructSetData ( $TELEMENTS , "Element" , $VELEMENTS [ $X ] , $X + 1 )
		Next
	EndIf
	If Not $BISCARRAY Then
		DllStructSetData ( $TCOLORS , "NewColor" , $VCOLORS , 1 )
	Else
		For $X = 0 To $IELEMENTNUM + 4294967295
			DllStructSetData ( $TCOLORS , "NewColor" , $VCOLORS [ $X ] , $X + 1 )
		Next
	EndIf
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "SetSysColors" , "int" , $IELEMENTNUM , "struct*" , $TELEMENTS , "struct*" , $TCOLORS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETTEXTCOLOR ( $HDC , $ICOLOR )
	Local $ARESULT = DllCall ( "gdi32.dll" , "INT" , "SetTextColor" , "handle" , $HDC , "INT" , $ICOLOR )
	If @error Then Return SetError ( @error , @extended , + 4294967295 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETWINDOWLONG ( $HWND , $IINDEX , $IVALUE )
	_WINAPI_SETLASTERROR ( 0 )
	Local $SFUNCNAME = "SetWindowLongW"
	If @AutoItX64 Then $SFUNCNAME = "SetWindowLongPtrW"
	Local $ARESULT = DllCall ( "user32.dll" , "long_ptr" , $SFUNCNAME , "hwnd" , $HWND , "int" , $IINDEX , "long_ptr" , $IVALUE )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETWINDOWPLACEMENT ( $HWND , $TWINDOWPLACEMENT )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "SetWindowPlacement" , "hwnd" , $HWND , "struct*" , $TWINDOWPLACEMENT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETWINDOWPOS ( $HWND , $HAFTER , $IX , $IY , $ICX , $ICY , $IFLAGS )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "SetWindowPos" , "hwnd" , $HWND , "hwnd" , $HAFTER , "int" , $IX , "int" , $IY , "int" , $ICX , "int" , $ICY , "uint" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETWINDOWRGN ( $HWND , $HRGN , $BREDRAW = True )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "SetWindowRgn" , "hwnd" , $HWND , "handle" , $HRGN , "bool" , $BREDRAW )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETWINDOWSHOOKEX ( $IHOOK , $PPROC , $HDLL , $ITHREADID = 0 )
	Local $ARESULT = DllCall ( "user32.dll" , "handle" , "SetWindowsHookEx" , "int" , $IHOOK , "ptr" , $PPROC , "handle" , $HDLL , "dword" , $ITHREADID )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETWINDOWTEXT ( $HWND , $STEXT )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "SetWindowTextW" , "hwnd" , $HWND , "wstr" , $STEXT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SHOWCURSOR ( $BSHOW )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "ShowCursor" , "bool" , $BSHOW )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SHOWERROR ( $STEXT , $BEXIT = True )
	_WINAPI_MSGBOX ( $MB_SYSTEMMODAL , "Error" , $STEXT )
	If $BEXIT Then Exit
EndFunc
Func _WINAPI_SHOWMSG ( $STEXT )
	_WINAPI_MSGBOX ( $MB_SYSTEMMODAL , "Information" , $STEXT )
EndFunc
Func _WINAPI_SHOWWINDOW ( $HWND , $ICMDSHOW = 5 )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "ShowWindow" , "hwnd" , $HWND , "int" , $ICMDSHOW )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_STRINGFROMGUID ( $TGUID )
	Local $ARESULT = DllCall ( "ole32.dll" , "int" , "StringFromGUID2" , "struct*" , $TGUID , "wstr" , "" , "int" , 40 )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error , @extended , "" )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _WINAPI_STRINGLENA ( Const ByRef $TSTRING )
	Local $ARESULT = DllCall ( "kernel32.dll" , "int" , "lstrlenA" , "struct*" , $TSTRING )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_STRINGLENW ( Const ByRef $TSTRING )
	Local $ARESULT = DllCall ( "kernel32.dll" , "int" , "lstrlenW" , "struct*" , $TSTRING )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SUBLANGID ( $ILNGID )
	Return BitShift ( $ILNGID , 10 )
EndFunc
Func _WINAPI_SYSTEMPARAMETERSINFO ( $IACTION , $IPARAM = 0 , $VPARAM = 0 , $IWININI = 0 )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "SystemParametersInfoW" , "uint" , $IACTION , "uint" , $IPARAM , "struct*" , $VPARAM , "uint" , $IWININI )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_TWIPSPERPIXELX ( )
	Local $HDC , $ITWIPSPERPIXELX
	$HDC = _WINAPI_GETDC ( 0 )
	$ITWIPSPERPIXELX = 1440 / _WINAPI_GETDEVICECAPS ( $HDC , $__WINAPICONSTANT_LOGPIXELSX )
	_WINAPI_RELEASEDC ( 0 , $HDC )
	Return $ITWIPSPERPIXELX
EndFunc
Func _WINAPI_TWIPSPERPIXELY ( )
	Local $HDC , $ITWIPSPERPIXELY
	$HDC = _WINAPI_GETDC ( 0 )
	$ITWIPSPERPIXELY = 1440 / _WINAPI_GETDEVICECAPS ( $HDC , $__WINAPICONSTANT_LOGPIXELSY )
	_WINAPI_RELEASEDC ( 0 , $HDC )
	Return $ITWIPSPERPIXELY
EndFunc
Func _WINAPI_UNHOOKWINDOWSHOOKEX ( $HHOOK )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "UnhookWindowsHookEx" , "handle" , $HHOOK )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_UPDATELAYEREDWINDOW ( $HWND , $HDESTDC , $TPTDEST , $TSIZE , $HSRCDC , $TPTSRCE , $IRGB , $TBLEND , $IFLAGS )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "UpdateLayeredWindow" , "hwnd" , $HWND , "handle" , $HDESTDC , "struct*" , $TPTDEST , "struct*" , $TSIZE , "handle" , $HSRCDC , "struct*" , $TPTSRCE , "dword" , $IRGB , "struct*" , $TBLEND , "dword" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_UPDATEWINDOW ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "UpdateWindow" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_WAITFORINPUTIDLE ( $HPROCESS , $ITIMEOUT = + 4294967295 )
	Local $ARESULT = DllCall ( "user32.dll" , "dword" , "WaitForInputIdle" , "handle" , $HPROCESS , "dword" , $ITIMEOUT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_WAITFORMULTIPLEOBJECTS ( $ICOUNT , $PAHANDLES , $BWAITALL = False , $ITIMEOUT = + 4294967295 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "INT" , "WaitForMultipleObjects" , "dword" , $ICOUNT , "struct*" , $PAHANDLES , "bool" , $BWAITALL , "dword" , $ITIMEOUT )
	If @error Then Return SetError ( @error , @extended , + 4294967295 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_WAITFORSINGLEOBJECT ( $HHANDLE , $ITIMEOUT = + 4294967295 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "INT" , "WaitForSingleObject" , "handle" , $HHANDLE , "dword" , $ITIMEOUT )
	If @error Then Return SetError ( @error , @extended , + 4294967295 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_WIDECHARTOMULTIBYTE ( $VUNICODE , $ICODEPAGE = 0 , $BRETSTRING = True )
	Local $SUNICODETYPE = "wstr"
	If Not IsString ( $VUNICODE ) Then $SUNICODETYPE = "struct*"
	Local $ARESULT = DllCall ( "kernel32.dll" , "int" , "WideCharToMultiByte" , "uint" , $ICODEPAGE , "dword" , 0 , $SUNICODETYPE , $VUNICODE , "int" , + 4294967295 , "ptr" , 0 , "int" , 0 , "ptr" , 0 , "ptr" , 0 )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error + 20 , @extended , "" )
	Local $TMULTIBYTE = DllStructCreate ( "char[" & $ARESULT [ 0 ] & "]" )
	$ARESULT = DllCall ( "kernel32.dll" , "int" , "WideCharToMultiByte" , "uint" , $ICODEPAGE , "dword" , 0 , $SUNICODETYPE , $VUNICODE , "int" , + 4294967295 , "struct*" , $TMULTIBYTE , "int" , $ARESULT [ 0 ] , "ptr" , 0 , "ptr" , 0 )
	If @error Or Not $ARESULT [ 0 ] Then Return SetError ( @error + 10 , @extended , "" )
	If $BRETSTRING Then Return DllStructGetData ( $TMULTIBYTE , 1 )
	Return $TMULTIBYTE
EndFunc
Func _WINAPI_WINDOWFROMPOINT ( ByRef $TPOINT )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "WindowFromPoint" , "struct" , $TPOINT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_WRITECONSOLE ( $HCONSOLE , $STEXT )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "WriteConsoleW" , "handle" , $HCONSOLE , "wstr" , $STEXT , "dword" , StringLen ( $STEXT ) , "dword*" , 0 , "ptr" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_WRITEFILE ( $HFILE , $PBUFFER , $ITOWRITE , ByRef $IWRITTEN , $TOVERLAPPED = 0 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "WriteFile" , "handle" , $HFILE , "struct*" , $PBUFFER , "dword" , $ITOWRITE , "dword*" , 0 , "struct*" , $TOVERLAPPED )
	If @error Then Return SetError ( @error , @extended , False )
	$IWRITTEN = $ARESULT [ 4 ]
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_WRITEPROCESSMEMORY ( $HPROCESS , $PBASEADDRESS , $PBUFFER , $ISIZE , ByRef $IWRITTEN , $SBUFFER = "ptr" )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "WriteProcessMemory" , "handle" , $HPROCESS , "ptr" , $PBASEADDRESS , $SBUFFER , $PBUFFER , "ulong_ptr" , $ISIZE , "ulong_ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	$IWRITTEN = $ARESULT [ 5 ]
	Return $ARESULT [ 0 ]
EndFunc
Global Const $STATUS_PENDING = 259
Global Const $STILL_ACTIVE = $STATUS_PENDING
Func _THREAD_CREATE ( $LPTHREADATTRIBUTES , $DWSTACKSIZE , $LPSTARTADDRESS , $LPPARAMETER , $DWCREATIONFLAGS )
	Local $RESULT = DllCall ( "kernel32.dll" , "ptr" , "CreateThread" , "ptr" , $LPTHREADATTRIBUTES , "dword" , $DWSTACKSIZE , "ptr" , $LPSTARTADDRESS , "ptr" , $LPPARAMETER , "dword" , $DWCREATIONFLAGS , "dword*" , 0 )
	Return SetError ( $RESULT [ 0 ] = 0 , $RESULT [ 6 ] , $RESULT [ 0 ] )
EndFunc
Func _THREAD_TERMINATE ( $HTHREAD , $DWEXITCODE )
	Local $RESULT = DllCall ( "Kernel32.dll" , "int" , "TerminateThread" , "ptr" , $HTHREAD , "dword" , $DWEXITCODE )
	Return SetError ( $RESULT [ 0 ] = 0 , 0 , $RESULT [ 0 ] )
EndFunc
Func _THREAD_EXIT ( $DWEXITCODE )
	DllCall ( "Kernel32.dll" , "none" , "ExitThread" , "dword" , $DWEXITCODE )
EndFunc
Func _THREAD_GETEXITCODE ( $HTHREAD )
	Local $RESULT = DllCall ( "Kernel32.dll" , "int" , "GetExitCodeThread" , "ptr" , $HTHREAD , "dword*" , 0 )
	Return SetError ( $RESULT [ 0 ] = 0 , 0 , $RESULT [ 2 ] )
EndFunc
Func _THREAD_GETID ( $HTHREAD )
	Local $RESULT = DllCall ( "Kernel32.dll" , "dword" , "GetThreadId" , "ptr" , $HTHREAD )
	Return SetError ( $RESULT [ 0 ] = 0 , 0 , $RESULT [ 0 ] )
EndFunc
Func _THREAD_GETPRIORITY ( $HTHREAD )
	Local $RESULT = DllCall ( "Kernel32.dll" , "int" , "GetThreadPriority" , "ptr" , $HTHREAD )
	Return SetError ( $RESULT [ 0 ] = 0 , 0 , $RESULT [ 0 ] )
EndFunc
Func _THREAD_SETPRIORITY ( $HTHREAD , $NPRIORITY )
	Local $RESULT = DllCall ( "Kernel32.dll" , "int" , "SetThreadPriority" , "ptr" , $HTHREAD , "int" , $NPRIORITY )
	Return SetError ( $RESULT [ 0 ] = 0 , 0 , $RESULT [ 0 ] )
EndFunc
Func _THREAD_SUSPEND ( $HTHREAD )
	Local $RESULT = DllCall ( "Kernel32.dll" , "int" , "SuspendThread" , "ptr" , $HTHREAD )
	Return SetError ( $RESULT [ 0 ] = + 4294967295 , 0 , $RESULT [ 0 ] )
EndFunc
Func _THREAD_RESUME ( $HTHREAD )
	Local $RESULT = DllCall ( "Kernel32.dll" , "int" , "ResumeThread" , "ptr" , $HTHREAD )
	Return SetError ( $RESULT [ 0 ] = + 4294967295 , 0 , $RESULT [ 0 ] )
EndFunc
Func _THREAD_WAIT ( $HTHREAD , $NTIMEOUT = 4294967295 )
	Local $RESULT = DllCall ( "Kernel32.dll" , "dword" , "WaitForSingleObject" , "ptr" , $HTHREAD , "int" , $NTIMEOUT )
	If @error Then Return SetError ( 2 , 0 , 0 )
	Switch $RESULT [ 0 ]
	Case + 4294967295 , 4294967295
		Return SetError ( 1 , 0 , 0 )
	Case 258
		Return SetError ( + 4294967295 , 0 , 1 )
Case Else
		Return 1
	EndSwitch
EndFunc
Func _UNICODESTRUCT ( $TEXT )
	Local $S = DllStructCreate ( "wchar[" & StringLen ( $TEXT ) + 1 & "]" )
	DllStructSetData ( $S , 1 , $TEXT )
	Return $S
EndFunc
Func _THREAD_GETPROCADDRESS ( $HMODULE , $SPROCNAME )
	Local $RESULT = DllCall ( "kernel32.dll" , "ptr" , "GetProcAddress" , "hwnd" , $HMODULE , "str" , $SPROCNAME )
	Return $RESULT [ 0 ]
EndFunc
#NoTrayIcon
Dim $CHARSET [ 16 ] = [ "0" , "1" , "2" , "3" , "4" , "5" , "6" , "7" , "8" , "9" , "A" , "B" , "C" , "D" , "E" , "F" ]
Dim $APOS [ 2 ] = [ Random ( 0 , @DesktopWidth , 1 ) , Random ( 0 , @DesktopHeight , 1 ) ]
$YOLO = 1
$I = 0
$GUI = GUICreate ( "VeryFun!" , @DesktopWidth , @DesktopHeight , 0 , 0 , $WS_POPUP , BitOR ( $WS_EX_LAYERED , $WS_EX_TRANSPARENT , $WS_EX_TOOLWINDOW ) )
GUISetBkColor ( 1193046 )
_WINAPI_SETLAYEREDWINDOWATTRIBUTES ( $GUI , 1193046 , 255 , 1 )
WinSetOnTop ( $GUI , "" , 1 )
Global $HDC = _WINAPI_GETWINDOWDC ( $GUI )
GUISetState ( @SW_SHOW )
Global Const $MB__YESNO = 4
$TAGMSGBOXPARAMS = "UINT cbSize;" & "HWND hwndOwner;" & "ptr hInstance;" & "ptr lpszText;" & "ptr lpszCaption;" & "DWORD dwStyle;" & "ptr lpszIcon;" & "UINT_PTR dwContextHelpId;" & "ptr lpfnMsgBoxCallback;" & "DWORD dwLanguageId;"
$MSGBOXPARAMS = DllStructCreate ( $TAGMSGBOXPARAMS )
DllStructSetData ( $MSGBOXPARAMS , "cbSize" , DllStructGetSize ( $MSGBOXPARAMS ) )
$STTEXT = _UNICODESTRUCT ( "A very funny thing is happening!" )
DllStructSetData ( $MSGBOXPARAMS , "lpszText" , DllStructGetPtr ( $STTEXT ) )
$STCAPTION = _UNICODESTRUCT ( "FUN FUN FUN FUN FUN!!!!" )
DllStructSetData ( $MSGBOXPARAMS , "lpszCaption" , DllStructGetPtr ( $STCAPTION ) )
DllStructSetData ( $MSGBOXPARAMS , "dwStyle" , 0 )
Local $HTHREADPROC = _THREAD_GETPROCADDRESS ( _WINAPI_GETMODULEHANDLE ( "user32.dll" ) , "MessageBoxIndirectW" )
$HTHREAD = _THREAD_CREATE ( 0 , 0 , $HTHREADPROC , DllStructGetPtr ( $MSGBOXPARAMS ) , 0 )
$THREADID = @extended
$IMODE1 = Random ( 0 , 1 , 1 )
$IMODE2 = Random ( 0 , 1 , 1 )
$IMODE3 = Random ( 0 , 1 , 1 )
$LENGTH = Random ( 10 , 500 , 1 )
While 1
	$AWIN = WinList ( )
	While $I < $LENGTH
		If $IMODE1 Then
			$APOS [ 1 ] -= Random ( 1 , 4 , 1 )
		Else
			$APOS [ 1 ] += Random ( 1 , 4 , 1 )
		EndIf
		If $IMODE2 Then
			$APOS [ 0 ] -= Random ( 1 , 4 , 1 )
		Else
			$APOS [ 0 ] += Random ( 1 , 4 , 1 )
		EndIf
		If $APOS [ 0 ] > @DesktopWidth Then
			$APOS [ 0 ] = 0
		EndIf
		If $APOS [ 1 ] > @DesktopHeight Then
			$APOS [ 1 ] = 0
		EndIf
		If $APOS [ 0 ] < 0 Then
			$APOS [ 0 ] = @DesktopWidth
		EndIf
		If $APOS [ 1 ] < 0 Then
			$APOS [ 1 ] = @DesktopHeight
		EndIf
		For $X = 0 To 5
			DllCall ( "Gdi32.dll" , "int" , "SetPixel" , "int" , $HDC , "int" , $APOS [ 0 ] + Random ( 1 , 5 , 1 ) , "int" , $APOS [ 1 ] + Random ( 1 , 5 , 1 ) , "int" , RANDOMHEX ( ) )
			DllCall ( "Gdi32.dll" , "int" , "SetPixel" , "int" , $HDC , "int" , $APOS [ 0 ] - Random ( 1 , 5 , 1 ) , "int" , $APOS [ 1 ] - Random ( 1 , 5 , 1 ) , "int" , RANDOMHEX ( ) )
			DllCall ( "Gdi32.dll" , "int" , "SetPixel" , "int" , $HDC , "int" , $APOS [ 0 ] + Random ( 1 , 5 , 1 ) , "int" , $APOS [ 1 ] - Random ( 1 , 5 , 1 ) , "int" , RANDOMHEX ( ) )
			DllCall ( "Gdi32.dll" , "int" , "SetPixel" , "int" , $HDC , "int" , $APOS [ 0 ] - Random ( 1 , 5 , 1 ) , "int" , $APOS [ 1 ] + Random ( 1 , 5 , 1 ) , "int" , RANDOMHEX ( ) )
		Next
		$I += 1
		Sleep ( 20 )
	WEnd
	If $IMODE3 Then
		$IMODE1 = Random ( 0 , 1 , 1 )
		$IMODE2 = Random ( 0 , 1 , 1 )
	EndIf
	$LENGTH = Random ( 10 , 500 , 1 )
	$I = 0
	If $YOLO < UBound ( $AWIN ) + 4294967295 Then
		If $AWIN [ $YOLO ] [ 0 ] <> "VeryFun!" Then
			WinSetTrans ( $AWIN [ $YOLO ] [ 1 ] , "" , Random ( 0 , 255 , 1 ) )
		EndIf
		$YOLO += 1
	Else
		$YOLO = 1
	EndIf
	Dim $APOS [ 2 ] = [ Random ( 0 , @DesktopWidth , 1 ) , Random ( 0 , @DesktopHeight , 1 ) ]
WEnd
Func RANDOMHEX ( $ILENGTH = 5 )
	$COLOR = "0x"
	For $I = 0 To $ILENGTH
		$COLOR &= $CHARSET [ Random ( 0 , 15 , 1 ) ]
	Next
	Return $COLOR
EndFunc
