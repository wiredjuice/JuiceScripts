Set objShell = CreateObject("Shell.Application")

Set colArgs = WScript.Arguments.Named
strPath = colArgs.Item("path")

Set objFolder = objShell.Namespace(strPath)
Set objFolderItem = objFolder.ParseName("casbdcn.ttf")
objFolderItem.InvokeVerb("Install")
Set objFolderItem = objFolder.ParseName("caslonfbboldconditalic.ttf")
objFolderItem.InvokeVerb("Install")
Set objFolderItem = objFolder.ParseName("caslonfbboldconditalic_0.ttf")
objFolderItem.InvokeVerb("Install")
Set objFolderItem = objFolder.ParseName("caslonfbregularcondensed.ttf")
objFolderItem.InvokeVerb("Install")
Set objFolderItem = objFolder.ParseName("caslonfbregularcondensed_0.ttf")
objFolderItem.InvokeVerb("Install")
Set objFolderItem = objFolder.ParseName("caslonfbregularconditalic.ttf")
objFolderItem.InvokeVerb("Install")
Set objFolderItem = objFolder.ParseName("caslonfbregularconditalic_0.ttf")
objFolderItem.InvokeVerb("Install")