set /p pageScheme=<..\settings.txt

IF /i %pageScheme%==Fronts (
(
start /min "" "..\..\nandeck.exe" /exec ..\nanDECKScripts\ActionDeck_Cover_Front.txt
start /min "" "..\..\nandeck.exe" /exec ..\nanDECKScripts\ActionDeck_Fronts.txt
) | set /P "="
exit
)

IF /i %pageScheme%==Backs (
(
start /min "" "..\..\nandeck.exe" /exec ..\nanDECKScripts\ActionDeck_Cover_Back.txt
start /min "" "..\..\nandeck.exe" /exec ..\nanDECKScripts\ActionDeck_Backs.txt
) | set /P "="
exit
)

IF /i %pageScheme%==Both (
(
start /min "" "..\..\nandeck.exe" /exec ..\nanDECKScripts\ActionDeck_Cover_Back.txt
start /min "" "..\..\nandeck.exe" /exec ..\nanDECKScripts\ActionDeck_Backs.txt
start /min "" "..\..\nandeck.exe" /exec ..\nanDECKScripts\ActionDeck_Cover_Front.txt
start /min "" "..\..\nandeck.exe" /exec ..\nanDECKScripts\ActionDeck_Fronts.txt
) | set /P "="
exit
)