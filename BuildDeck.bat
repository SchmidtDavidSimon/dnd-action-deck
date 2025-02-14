batch=BuildDeck.bat

del Cards\Backs\*.png
del Cards\Fronts\*.png

"..\nandeck.exe" /exec ActionDeck_Cover_Front.txt
"..\nandeck.exe" /exec ActionDeck_Cover_Back.txt
"..\nandeck.exe" /exec ActionDeck_Fronts.txt
"..\nandeck.exe" /exec ActionDeck_Backs.txt
"..\nandeck.exe" /exec ActionDeck_Builder.txt