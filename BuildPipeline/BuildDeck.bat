del ..\Cards\Backs\*.png
del ..\Cards\Fronts\*.png

start /min /wait GenerateCards.bat
start /min /wait "" "..\..\nandeck.exe" /exec "..\nanDECKScripts\ActionDeck_Builder.txt

del ..\nanDECKScripts\*.html