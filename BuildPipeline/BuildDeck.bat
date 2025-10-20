del ..\Cards\Backs\*.png
del ..\Cards\Fronts\*.png

start /min /wait DownloadSettings.bat
start /min /wait GenerateDeck.bat
start /min /wait "" "..\..\nandeck.exe" /exec "..\nanDECKScripts\ActionDeck_Builder.txt

del ..\nanDECKScripts\*.html

start ..\ActionDeck.pdf