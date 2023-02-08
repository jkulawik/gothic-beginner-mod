
if [[ $1 == "1" ]]
then
	echo "Full test"
	WINEPREFIX="/home/jacob/Games/Gothic II/wine_prefix" wine Gothic2.exe -GAME:aTestMod.ini -zReparse_Game -zReparse_OU -zReparse_Menu -nomenu
elif [[ $1 == "2" ]]
then
	echo "No menu reparse"
	WINEPREFIX="/home/jacob/Games/Gothic II/wine_prefix" wine Gothic2.exe -GAME:aTestMod.ini -zReparse_Game -zReparse_OU -nomenu
elif [[ $1 == "3" ]]
then
	echo "NPC and Item test (no dialogues)"
	WINEPREFIX="/home/jacob/Games/Gothic II/wine_prefix" wine Gothic2.exe -GAME:aTestMod.ini -zReparse_Game -nomenu
else
	echo "Enter argument 1. Options are: 1-3"
fi
