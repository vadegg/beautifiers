#!/usr/local/bin/bash

ALLINFO=$(pass breakq/db)
IFS=$'\n'
arrInfo=($ALLINFO)
unset IFS

echo ${arrInfo[0]}
echo ${arrInfo[1]}
echo ${arrInfo[2]}
echo ${arrInfo[3]}

mysql --host=${arrInfo[0]} --user=${arrInfo[1]} --password=${arrInfo[2]} ${arrInfo[3]}

