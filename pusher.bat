@ECHO OFF
SETLOCAL

SET arg1="%~1"
SET arg2="%~2"

ECHO Argument 1: %arg1%
ECHO Argument 2: %arg2%

IF "%~1" EQU "" (
    ECHO "Usage: npm run send -- <message> <branch> [origin :: 'origin']"
    EXIT /b 1
)
IF "%~2" EQU "" (
    ECHO "Usage: npm run send -- <message> <branch> [origin :: 'origin']"
    EXIT /b 1
)

SET "MESSAGE=$~1"
SET "BRANCH=$~2"
SET "ORIGIN=$~3"

IF "%ORIGIN%" EQU "" SET ORIGIN=origin

git add .
git commit -m "%MESSAGE%"
git push %ORIGIN% %BRANCH%