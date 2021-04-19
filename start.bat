@echo OFF
RMDIR /s /q "e:\Base-GDev\cache\files"

echo Appuyez sur une touche pour démarrer
pause > nul
CLS
cd e:\Base-GDev
cmd /k run.cmd +exec server.cfg