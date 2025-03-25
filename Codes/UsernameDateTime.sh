#!/bin/bash 
#print username , date , time and no of user 
echo "username :   $USER"
echo -e "Today's date and time is \c";date
echo -e "No of User \c"; who | wc -l 
cal 
exit 0
