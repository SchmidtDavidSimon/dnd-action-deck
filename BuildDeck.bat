batch=BuildDeck.bat

del Cards\Backs\*.png
del Cards\Fronts\*.png

start /min "" "..\nandeck.exe" /exec ActionDeck_Cover_Back.txt
start /min "" "..\nandeck.exe" /exec ActionDeck_Cover_Front.txt
start /min "" "..\nandeck.exe" /exec ActionDeck_Backs.txt
start /min /wait "" "..\nandeck.exe" /exec ActionDeck_Fronts.txt
start /min "" "..\nandeck.exe" /exec ActionDeck_Builder.txt