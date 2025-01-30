@ECHO OFF
SETLOCAL

ECHO "%~1"
ECHO "%~2"
ECHO "%~3"

IF "%~1" EQU "" (
    ECHO "Usage: npm run send -- <message> <branch> [origin -> 'origin']"
    EXIT /b 1
)

IF "%~2" EQU "" (
    ECHO "Usage: npm run send -- <message> <branch> [origin -> 'origin']"
    EXIT /b 1
)

SET MESSAGE=%~1
SET BRANCH=%~2
SET ORIGIN=%~3

ECHO "%MESSAGE%"
ECHO "%BRANCH%"
ECHO "%ORIGIN%"

IF "%ORIGIN%" EQU "" SET "ORIGIN=origin"

git add .
git commit -m "%MESSAGE%"
git push %ORIGIN% %BRANCH%