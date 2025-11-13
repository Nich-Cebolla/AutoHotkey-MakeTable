
#include C:\Users\Shared\001_Repos\AutoHotkey-LibV2\MakeTable.ahk

path := A_Temp '\MakeTable-output.md'
f := fileopen(path, 'w')
f.Write(MakeTable(

    ; generic tab separated table
    ; , {
    ;     AddHeaderSeparator: true
    ;   , ColumnPadding: '`s`s'
    ;   , InputColumnSeparator: '`t'
    ;   , InputRowSeparator: '\R'
    ;   , LinePrefix: '|  '
    ;   , LineSuffix: '  |'
    ;   , MaxWidths: ''
    ;   , OutputColumnSeparator: '|'
    ;   , OutputLineBetweenRows: 0
    ;   , OutputRowSeparator: '`n'
    ;   , TrimCharacters: '`s'
    ; }

    ; generic comma separated table
    , {
        AddHeaderSeparator: true
      , ColumnPadding: '`s`s'
      , InputColumnSeparator: ','
      , InputRowSeparator: '\R'
      , LinePrefix: '|  '
      , LineSuffix: '  |'
      , MaxWidths: ''
      , OutputColumnSeparator: '|'
      , OutputLineBetweenRows: 0
      , OutputRowSeparator: '`n'
      , TrimCharacters: '`s'
    }

    ; generic tab separated table with max row length
    ; , {
    ;     AddHeaderSeparator: true
    ;   , ColumnPadding: '`s`s'
    ;   , InputColumnSeparator: '`t'
    ;   , InputRowSeparator: '\R'
    ;   , LinePrefix: '     * |  '
    ;   , LineSuffix: '  |'
    ;   , MaxWidths: 60
    ;   , OutputColumnSeparator: ''
    ;   , OutputLineBetweenRows: 0
    ;   , OutputRowSeparator: '`n'
    ;   , TrimCharacters: '`s'
    ; }

    ; constant definition with description at end
;   , {
;         AddHeaderSeparator: false
;       , ColumnPadding: '`s'
;       , InputColumnSeparator: '`t'
;       , InputRowSeparator: '\R'
;       , LinePrefix: '    '
;       , LineSuffix: ''
;       , MaxWidths: [100, 100, 60]
;       , OutputColumnPrefix: ['', ':= ', '; ']
;       , OutputColumnPrefixSkipFirstRow: false
;       , OutputColumnSeparator: ''
;       , OutputLineBetweenRows: false
;       , OutputRowSeparator: '`n'
;       , TrimCharacters: ''
;     }

    ; constant definitions
    ; , {
    ;     AddHeaderSeparator: false
    ;   , ColumnPadding: '`s`s'
    ;   , InputColumnSeparator: '`t'
    ;   , InputRowSeparator: '\R'
    ;   , LinePrefix: ''
    ;   , LineSuffix: ''
    ;   , MaxWidths: ''
    ;   , OutputColumnSeparator: '`s'
    ;   , OutputLineBetweenRows: 0
    ;   , OutputRowSeparator: '`n'
    ;   , TrimCharacters: '`s'
    ; }

  ;  outlook class properties
    ; , {
    ;     AddHeaderSeparator: false
    ;   , ColumnPadding: '`s`s'
    ;   , InputColumnSeparator: ';'
    ;   , InputRowSeparator: '\R'
    ;   , LinePrefix: ''
    ;   , LineSuffix: ''
    ;   , MaxWidths: ''
    ;   , OutputColumnSeparator: ''
    ;   , OutputLineBetweenRows: false
    ;   , OutputRowSeparator: '`n'
    ;   , TrimCharacters: '`s'
    ; }

    ; outlook constants
    ; , {
    ;     AddHeaderSeparator: false
    ;   , ColumnPadding: '`s`s'
    ;   , InputColumnSeparator: '`t'
    ;   , InputRowSeparator: '\R'
    ;   , LinePrefix: ''
    ;   , LineSuffix: ''
    ;   , MaxWidths: ''
    ;   , OutputColumnSeparator: ''
    ;   , OutputLineBetweenRows: false
    ;   , OutputRowSeparator: '`n'
    ;   , TrimCharacters: '`s'
    ; }

    ; learn.microsoft.com table
    ; , {
    ;     AddHeaderSeparator: true
    ;   , ColumnPadding: '`s`s'
    ;   , InputColumnSeparator: '</td>\R<td>'
    ;   , InputRowSeparator: '</td>\R</tr>\R<tr>\R<td>'
    ;   , LinePrefix: '|  '
    ;   , LineSuffix: '  |'
    ;   , MaxWidths: ''
    ;   , OutputColumnSeparator: '|'
    ;   , OutputLineBetweenRows: 0
    ;   , OutputRowSeparator: '`n'
    ;   , TrimCharacters: '`s'
    ; }

    ; Table for including information in documentation.
    ; , {
    ;     AddHeaderSeparator: true
    ;   , ColumnPadding: '`s`s'
    ;   , InputColumnSeparator: ','
    ;   , InputRowSeparator: '\R'
    ;   , LinePrefix: '|  '
    ;   , LineSuffix: '  |'
    ;   , MaxWidths: '' ; [ 30, 20, 70 ]
    ;   , OutputColumnSeparator: '|'
    ;   , OutputLineBetweenRows: 0
    ;   , OutputRowSeparator: '`n'
    ;   , TrimCharacters: ''
    ; }

).Value)
f.Close()
; msgbox(1)
Run('explorer "' A_Temp '"')

/*

{
    AddHeaderSeparator: true
  , ColumnPadding: '`s`s'
  , InputColumnSeparator: '`t'
  , InputRowSeparator: '\R'
  , LinePrefix: ''
  , LineSuffix: ''
  , MaxWidths: ''
  , OutputColumnPrefix: ''
  , OutputColumnPrefixSkipFirstRow: false
  , OutputColumnSeparator: ''
  , OutputLineBetweenRows: false
  , OutputRowSeparator: '`n'
  , TrimCharacters: '`s'
}

tab char:  "	"

#define statements to AHK vars:
#define (\w+)( +)(.+)
        $1$2   := $3


Converting a learn.microsoft.com table
^(\w+)\n(0x\w+)\n(.+)
$1	$2	$3

Selecting all the methods and properties from a class
^(?:    |    static )(\w+)(?=\(| \{| =>)




examples

    ; Options used by the first example if the `MakeTable` description
    ; , {
    ;     LinePrefix: '|  '
    ;   , LineSuffix: '  |'
    ;   , OutputColumnSeparator: '|'
    ;   , AddHeaderSeparator: true
    ;   , ColumnPadding: '`s`s'
    ;   , MaxWidths: ''
    ;   , InputRowSeparator: '\R'
    ;   , InputColumnSeparator: '`t'
    ; }

    ; Options used by the second example if the `MakeTable` description
    ; , {
    ;     MaxWidths: [20,20,22,20,25] ; Defines the maximum widths for each column
    ;   , AddHeaderSeparator: true    ; Adds the markdown-style header separator (default)
    ;   , ColumnPadding: "`s`s"       ; Adds two space characters on the left and right side of each column (default)
    ;   , InputRowSeparator: "\R"     ; Rows are separated by line break characters (default)
    ;   , InputColumnSeparator: "`t"  ; Columns are separated by tab characters in the input text (default)
    ; }

    ; Test OutputColumnPrefix - Options used by the first example if the `MakeTable` description
    ; , {
    ;     LinePrefix: '|  '
    ;   , LineSuffix: '  |'
    ;   , OutputColumnSeparator: '|'
    ;   , AddHeaderSeparator: true
    ;   , ColumnPadding: '`s`s'
    ;   , MaxWidths: ''
    ;   , InputRowSeparator: '\R'
    ;   , InputColumnSeparator: '`t'
    ;   , OutputColumnPrefix: ["", "123 ", "4567 ", "", "; "]
    ;   , OutputColumnPrefixSkipFirstRow: true
    ; }

    ; Test OutputColumnPrefix - Options used by the second example if the `MakeTable` description
    ; , {
    ;     MaxWidths: [20,20,22,20,25]
    ;   , AddHeaderSeparator: true
    ;   , ColumnPadding: "`s`s"
    ;   , InputRowSeparator: "\R"
    ;   , InputColumnSeparator: "`t"
    ;   , OutputColumnPrefix: ["", "123 ", "4567 ", "", "; "]
    ;   , OutputColumnPrefixSkipFirstRow: true
    ; }

Hook Name	ID	Proc Type	lParam Points To	Use Case
WH_CALLWNDPROC	4	CallWndProc	CWPSTRUCT	Monitor before a message is processed
WH_CALLWNDPROCRET	12	CallWndRetProc	CWPRETSTRUCT	Monitor after a message is processed
WH_CBT	5	CBTProc	Varies by nCode	Window activation, creation, move, resize, etc.
WH_DEBUG	9	DebugProc	DEBUGHOOKINFO	Debugging other hook procedures
WH_FOREGROUNDIDLE	11	ForegroundIdleProc	lParam unused	Detect idle foreground thread
WH_GETMESSAGE	3	GetMsgProc	MSG	Intercept message queue on removal
WH_JOURNALPLAYBACK	1	JournalPlaybackProc	EVENTMSG	Replay input events (obsolete)
WH_JOURNALRECORD	0	JournalRecordProc	EVENTMSG	Record input events (obsolete)
WH_KEYBOARD	2	KeyboardProc	lParam = packed flags	Keyboard input (per-thread)
WH_KEYBOARD_LL	13	LowLevelKeyboardProc	KBDLLHOOKSTRUCT	Global keyboard input
WH_MOUSE	7	MouseProc	MOUSEHOOKSTRUCT	Mouse events (per-thread)
WH_MOUSE_LL	14	LowLevelMouseProc	MSLLHOOKSTRUCT	Global mouse input
WH_MSGFILTER	-1	MessageProc	MSG	Pre-translate messages in modal loops
WH_SHELL	10	ShellProc	Varies by nCode	Shell events (task switch, window create, etc.)
WH_SYSMSGFILTER	6	MessageProc	MSG	Like WH_MSGFILTER, but system-wide
