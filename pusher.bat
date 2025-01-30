@ECHO OFF
SETLOCAL

IF "%~1" EQU "" (
    ECHO "Utilisation: npm run send -- <message> <branch> [origin -> "origin"]"
    EXIT /b 1
)

IF "%~2" EQU "" (
    ECHO "Utilisation: npm run send -- <message> <branch> [origin -> "origin"]"
    EXIT /b 1
)

SET MESSAGE=%~1
SET BRANCH=%~2
SET ORIGIN=%~3

IF "%ORIGIN%" EQU "" SET "ORIGIN=origin"

git add .
git commit -m "%MESSAGE%"
git push %ORIGIN% %BRANCH%
CLS