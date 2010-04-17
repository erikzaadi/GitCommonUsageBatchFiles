@ECHO OFF
SET Message=%1

IF (%Message%)==() GOTO ERROR

ECHO Git Committing..
call git commit -a -m %Message%
GOTO END

:ERROR
@ECHO *********************************************
@ECHO Git commit Usage : 
@ECHO gitc "Message enclosed in doublequotes"
@ECHO *********************************************


:END