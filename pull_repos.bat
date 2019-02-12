@echo off
for /F %%i in (repo_paths.txt) do call :pull_repo %%i
pause
exit

:pull_repo
echo Pulling %1
cd %1
git pull
echo.