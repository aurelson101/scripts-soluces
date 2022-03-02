#this script for send email with attachement from powershell

## Add sender email
$FROM = "senderemail@yourdomain.com"
## Add email destination
$RECEVEID = "destinationemail@yourdomain.com"
## Add your SMTP Intranet (you need to add SSL option and 587 port for office,gmail or other)
$SMTP = 'smtp.home.lan'
## Add subject message
$SUBJECT = "This a subject test"
## Add your test message
$BODY = "Hello,
This a body message
"
## This add file if need to send file
$Attachement = "C:\Scripts\file.pdf"
Send-MailMessage -From $FROM -To $RECEVEID  -Subject $SUBJECT -Body $BODY -Attachments $Attachement -Encoding UTF8 -SmtpServer $SMTP -Port 25

write-host "Send email for $RECEVEID"
