!/bin/bash
read apache< <(ps -ef | grep -v grep | grep apache2 | wc -l)
if [[ $apache = 0 ]];
then
service apache 2 start
if
