@ECHO OFF
SETLOCAL

if "%~1"=="" (
    ECHO "Usage: npm run send -- <message> <branch> [origin]"
    EXIT /b 1
)
if "%~2"=="" (
    ECHO "Usage: npm run send -- <message> <branch> [origin]"
    EXIT /b 1
)

SET MESSAGE=$~1
SET BRANCH=$~2
SET ORIGIN=$~3
IF "%ORIGIN%"=="" SET ORIGIN=origin

git add .
git commit -m "%MESSAGE%"
git push %ORIGIN% %BRANCH%