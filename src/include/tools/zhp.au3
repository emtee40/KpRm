
Func LoadCommonZHP()
	Dim $KPRemoveAppDataLocalList
	Dim $KPRemoveSoftwareKeyList

	Local $ToolExistCpt = "zhp"
	Local Const $val[1][2] = [[$ToolExistCpt, "(?i)^ZHP$"]]
	Local Const $val2[1][5] = [[$ToolExistCpt, 'folder', Null, "(?i)^ZHP$", True]]

	_ArrayAdd($KPRemoveAppDataLocalList, $val2)
	_ArrayAdd($KPRemoveSoftwareKeyList, $val)
EndFunc   ;==>CommonZHP

LoadCommonZHP()