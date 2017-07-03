###Pop up box code

$WshShell = New-Object -ComObject wscript.shell


$Message ="Test for $Env:computername at: "
$PopUp = $WshShell.popup("$Message",0,"Task Scheduler Pop-up",6)

###the numeral given in popUp bracket can be changed according to our requirement
#1...gives OK & CANCEL
#2...gives ABORT & RETRY & IGNORE
#3...gives YES & NO & CANCEL
#4...gives YES & NO
#5...gives RETRY & CANCEL
#6...gives CANCEL & TRY AGAIN & CONTINUE