@ECHO OFF
SET Message=%1

IF (%Message%)==() GOTO ERROR

ECHO Git Adding files and committing..
call git add .
call git commit -a -m %Message%
GOTO END

:ERROR
@ECHO *********************************************
@ECHO Git add and commit Usage : 
@ECHO gitac "Message enclosed in doublequotes"
@ECHO *********************************************

:END