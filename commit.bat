@ECHO off

git status
ECHO ======================================

SET INPUT=
SET /P INPUT= press q to quit, m to skip and merge branches or any other key to continue commiting:

IF /I '%INPUT%'=='m' GOTO Merge
IF /I '%INPUT%'=='q' GOTO Quit

git add -A
git commit -m "replace me---"
ECHO ======================================
git push
git status
PAUSE

:Merge

git checkout gh-pages
git diff --color-words gh-pages..master
ECHO ======================================

SET INPUT=
SET /P INPUT= press q to quit or any other key to continue the merge:

IF /I '%INPUT%'=='q' GOTO Quit

git merge master
ECHO merged master into gh-pages

:Quit

EXIT