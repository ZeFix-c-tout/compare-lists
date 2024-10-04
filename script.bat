@echo off
chcp 65001

::Creation fichier liste1 et liste2 si pas existant
if exist "liste1.txt" (
    echo Création du fichiers liste1.txt
    mkdir liste1.txt
)

if exist "liste2.txt" (
    echo Création du fichiers liste2.txt
    mkdir liste2.txt


:: Vérification de l'existence des fichiers
if exist "log.txt" (
    echo Suppression de l'ancien fichier.
    erase /q /f "log.txt"
)
if not exist "liste1.txt" (
    echo Le fichier liste1.txt n'existe pas.
    exit /b 1
)
if not exist "liste2.txt" (
    echo Le fichier liste2.txt n'existe pas.
    exit /b 1
)

:: Initialisation du fichier de différences
echo Differences: > log.txt

:: Initialisation du compteur d'erreurs
set /a t1=0
set /a t2=0
set /a tt=0
:: Comparaison des fichiers ligne par ligne
for /f "delims=" %%a in (liste1.txt) do (
    echo "%%a"
    findstr /x /c:"%%a" liste2.txt >nul
    if errorlevel 1 (
        echo erreur trouvée
        echo %%a >> log.txt
        set /a t1+=1
        set /a tt+=1
    )
)
echo "Erreur trouvé: %t1%"

:: Comparaison des fichiers ligne par ligne
for /f "delims=" %%a in (liste2.txt) do (
    echo "%%a"
    findstr /x /c:"%%a" liste1.txt >nul
    if errorlevel 1 (
        echo erreur trouvée
        echo %%a >> log.txt
        set /a t2+=1
        set /a tt+=1
    )
)

echo "Erreur trouvé: %t2%"

echo Comparaison terminée
echo Le nombre d'erreurs totale trouvées est de : %tt%
pause
exit