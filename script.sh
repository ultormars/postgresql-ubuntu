#!/bin/bash
directory="/home/ultormars/bsm/test"
while true; do
 for file in $directory/*;do
  if [[$file -nt $last_check]]; then
   last_check=$file
   psql -c "INSERT INTO test (Tarih,DosyaAdi)VALUES(current_timestamp, '$file');"
   fi
   done
   sleep 60
   done
