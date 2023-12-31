
Func LoadToolsDiag()
	Local Const $sToolExistCpt = "ToolsDiag"
	Dim $aKPRemoveProcessList
	Dim $aKPRemoveDesktopList
	Dim $aKPRemoveDownloadList
	Dim $aKPRemoveHomeDriveList

	Local Const $sReg1 = "(?i)^toolsdiag.*\.exe$"
	Local Const $sReg2 = "(?i)^ToolsDiag$"

	Local Const $aArr1[1][5] = [[$sToolExistCpt, 'folder', Null, $sReg2, False]]
	Local Const $aArr2[1][5] = [[$sToolExistCpt, 'file', Null, $sReg1, False]]
	Local Const $aArr3[1][3] = [[$sToolExistCpt, $sReg1, False]]

	_ArrayAdd($aKPRemoveProcessList, $aArr3)
	_ArrayAdd($aKPRemoveDesktopList, $aArr2)
	_ArrayAdd($aKPRemoveDownloadList, $aArr2)
	_ArrayAdd($aKPRemoveHomeDriveList, $aArr1)

EndFunc   ;==>LoadToolsDiag

LoadToolsDiag()
