
Func LoadRogueKiller()
	Local Const $sToolExistCpt = "RogueKiller"
	Dim $aKPRemoveProcessList
	Dim $aKPRemoveScheduleTasksList
	Dim $aKPRemoveSearchRegistryKeyStringsList
	Dim $aKPRemoveProgramFilesList
	Dim $aKPRemoveAppDataCommonList
	Dim $aKPRemoveDesktopList
	Dim $aKPRemoveDesktopCommonList
	Dim $aKPRemoveAppDataCommonStartMenuFolderList
	Dim $aKPRemoveDownloadList

	Local $s64Bit = ""
	If @OSArch = "X64" Then $s64Bit = "64"

	Local Const $patternDescription = "(?i)^Adlice"
	Local Const $sReg1 = "(?i)^RogueKiller"
	Local Const $sReg2 = "(?i)^RogueKiller.*\.(exe|lnk|txt)$"
	Local Const $sReg3 = "(?i)^RogueKiller.*\.exe$"
	Local Const $sReg4 = "(?i)^RogueKiller_portable(32|64)\.exe$"

	Local Const $aArr1[1][3] = [[$sToolExistCpt, $sReg3, False]]
	Local Const $aArr2[1][2] = [[$sToolExistCpt, "RogueKiller Anti-Malware"]]
	Local Const $aArr3[1][4] = [[$sToolExistCpt, "HKLM" & $s64Bit & "\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall", $sReg1, "DisplayName"]]
	Local Const $aArr4[1][5] = [[$sToolExistCpt, 'file', $patternDescription, $sReg2, False]]
	Local Const $aArr5[1][5] = [[$sToolExistCpt, 'folder', Null, $sReg1, True]]
	Local Const $aArr6[1][5] = [[$sToolExistCpt, 'file', Null, $sReg4, False]]

	_ArrayAdd($aKPRemoveProcessList, $aArr1)
	_ArrayAdd($aKPRemoveScheduleTasksList, $aArr2)
	_ArrayAdd($aKPRemoveSearchRegistryKeyStringsList, $aArr3)
	_ArrayAdd($aKPRemoveProgramFilesList, $aArr5)
	_ArrayAdd($aKPRemoveAppDataCommonList, $aArr5)
	_ArrayAdd($aKPRemoveDesktopList, $aArr6)
	_ArrayAdd($aKPRemoveDesktopList, $aArr4)
	_ArrayAdd($aKPRemoveDesktopList, $aArr5)
	_ArrayAdd($aKPRemoveDownloadList, $aArr6)
	_ArrayAdd($aKPRemoveDownloadList, $aArr4)
	_ArrayAdd($aKPRemoveDownloadList, $aArr5)
	_ArrayAdd($aKPRemoveDesktopCommonList, $aArr4)
	_ArrayAdd($aKPRemoveAppDataCommonStartMenuFolderList, $aArr5)

EndFunc   ;==>LoadRogueKiller

LoadRogueKiller()

