
package winforms

import "core:c"
//import "core:sys/win32"

//=================================== Types=======================================
c_char     :: c.char
c_uchar    :: c.uchar
c_int      :: c.int
c_uint     :: c.uint
c_long     :: c.long
c_longlong :: c.longlong
c_ulong    :: c.ulong
c_short    :: c.short
c_ushort   :: c.ushort
size_t     :: c.size_t
wchar_t    :: c.wchar_t


UINT:: c_uint
UINT_PTR :: uintptr
INT_PTR :: distinct int
LONG   :: distinct c_long
LONG_PTR :: distinct int
ULONG_PTR :: distinct c_ulong
ULONG:: distinct c_ulong

BOOL:: distinct b32
WCHAR :: wchar_t
wstring :: [^]WCHAR
LPCWSTR :: ^WCHAR


HANDLE    :: distinct rawptr
HWND      :: distinct HANDLE
HFONT 	  :: distinct HANDLE
HDC       :: distinct HANDLE
HPEN	  :: distinct HANDLE
HINSTANCE :: distinct HANDLE
HICON     :: distinct HANDLE
HCURSOR   :: distinct HANDLE
HMENU     :: distinct HANDLE
HBITMAP   :: distinct HANDLE
HBRUSH    :: distinct HANDLE
HGDIOBJ   :: distinct HANDLE
HMODULE   :: distinct HANDLE
Hmonitor  :: distinct HANDLE
Hrawinput :: distinct HANDLE
HRESULT   :: distinct i32
Hkl       :: distinct HANDLE
HRGN	  :: distinct HANDLE
HTHEME	  :: distinct HANDLE
WPARAM    :: distinct UINT_PTR
LPARAM    :: distinct LONG_PTR
LRESULT   :: distinct LONG_PTR
DWORD     :: c_ulong
DWORD_PTR  :: ^c_ulong
WORD      :: u16
COLORREF  :: distinct DWORD
HTREEITEM :: distinct HANDLE
HIMAGELIST :: distinct HANDLE



WNDPROC  :: distinct #type proc "std" (HWND, u32, WPARAM, LPARAM) -> LRESULT
SUBCLASSPROC :: distinct #type proc "std" (HWND, u32, WPARAM, LPARAM, UINT_PTR, DWORD_PTR) -> LRESULT

WNDCLASSEXW :: struct {
	cbSize,
	style : u32,
	lpfnWndProc: WNDPROC,
	cbClsExtra,
	cbWndExtra: i32,
	hInstance: HINSTANCE,
	hIcon: HICON,
	hCursor: HCURSOR,
	hbrBackground: HBRUSH,
	lpszMenuName,
	lpszClassName: wstring,
	hIconSm: HICON,
}

POINT :: struct { x, y: i32,}

MSG :: struct {hwnd: HWND, message: u32, wparam: WPARAM, lparam: LPARAM, time: u32, pt: POINT,}

TRACKMOUSEEVENT :: struct {
	cbSize : DWORD,
	dwFlags : DWORD,
	hwndTrack : HWND,
	dwHoverTime : DWORD,
}


RECT :: struct {
	left:   i32,
	top:    i32,
	right:  i32,
	bottom: i32,
}


NMHDR :: struct {
	hwndFrom : HWND,
	idFrom : u64,
	code : u64,
}

NMCUSTOMDRAW :: struct {
    hdr : NMHDR,
    dwDrawStage : DWORD,
    hdc : HDC,
    rc : RECT,
    dwItemSpec : DWORD_PTR,
    uItemState : u64,
    lItemParam : LPARAM,
}
LPNMCUSTOMDRAW :: ^NMCUSTOMDRAW

INITCOMMONCONTROLSEX :: struct {
	dwSize : DWORD,
	dwIcc : DWORD,
}

SIZE :: struct {width : i32, height : i32,}

DRAWITEMSTRUCT :: struct {
	ctlType : UINT,
	ctlID: UINT,
	itemID, itemAction, itemState : UINT,
	hwndItem : HWND,
	hDC : HDC,
	rcItem : RECT,
	itemData : DWORD_PTR,
}

PAINTSTRUCT :: struct {
	hdc : HDC,
	fErase : b32,
	rcPaint : RECT,
	fRestore : b32,
	fIncUpdate : b32,
	rgbReserved : [32]byte,
}

LOGFONT :: struct {
	lfHeight : LONG,
	lfWidth : LONG,
	lfEscapement : LONG,
	lfOrientation : LONG,
	lfWeight : LONG,
	lfItalic : byte,
	lfUnderline : byte,
	lfStrikeOut : byte,
	lfCharSet : byte,
	lfOutPrecision : byte,
	lfClipPrecision : byte,
	lfQuality : byte,
	lfPitchAndFamily : byte,
	lfFaceName : [^]WCHAR,
}


COMBOBOXINFO :: struct {
	cbSize : DWORD,
	rcItem,
	rcButton : RECT,
	stateButton : DWORD,
	hwndCombo,
	hwndItem,
	hwndList : HWND,
}

FILETIME :: struct {
	dwLowDateTime: DWORD,
	dwHighDateTime: DWORD,
}

SYSTEMTIME :: struct{
	wYear,
	wMonth,
	wDayOfWeek,
	wDay,
	wHour,
	wMinute,
	wSecond,
	wMilliseconds : WORD,
}

DTBGOPTS :: struct {
	dwSize : DWORD,
	dwFlags : DWORD,
	rcClip : RECT,
}

WINDOWPOS :: struct {
	hwnd : HWND,
	hwndInsertAfter : HWND,
	x, y : i32,
	cx, cy : i32,
	flags : u32,
}

