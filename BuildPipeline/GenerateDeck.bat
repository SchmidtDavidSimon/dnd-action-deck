set /p pageScheme=<pageScheme.txt
set /p carefulBuild=<carefulBuild.txt

IF %pageScheme%==Fronts (
	IF %carefulBuild%==OFF (
		(
		start /min GenerateCoverFront.bat
		start /min GenerateCardsFront.bat
		) | set /P "="
	)
	IF %carefulBuild%==ON (
		(
		start /min /wait GenerateCoverFront.bat
        	start /min /wait GenerateCardsFront.bat
		) | set /P "="
	)
)

IF %pageScheme%==Backs (
	IF %carefulBuild%==OFF (
		(
		start /min GenerateCoverBack.bat
		start /min GenerateCardsBack.bat
		start /min GenerateCardsFront.bat
		) | set /P "="
	)
	IF %carefulBuild%==ON (
		(
		start /min /wait GenerateCoverBack.bat
		start /min /wait GenerateCardsBack.bat
		start /min /wait GenerateCardsFront.bat
		) | set /P "="
	)
)

IF %pageScheme%==Both (
	IF %carefulBuild%==OFF (
		(
		start /min GenerateCoverBack.bat
		start /min GenerateCardsBack.bat
		start /min GenerateCoverFront.bat
		start /min GenerateCardsFront.bat
		) | set /P "="
	)
	IF %carefulBuild%==ON (
		(
		start /min /wait GenerateCoverBack.bat
		start /min /wait GenerateCardsBack.bat
		start /min /wait GenerateCoverFront.bat
		start /min /wait GenerateCardsFront.bat
		) | set /P "="
	)
)
exit