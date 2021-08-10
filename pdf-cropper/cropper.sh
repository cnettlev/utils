#!/bin/bash

if [ "$#" -lt 1 ]; then
  for FILE in ./*.pdf; do
    pdfcrop "${FILE}" "${FILE}" & 
  done
else
    if [ -d "$1" ]; then
        for FILE in $1/*.pdf; do
	    pdfcrop "${FILE}" "${FILE}" &
	done
    else
	pdfcrop "$1" "$1" &
    fi
fi

#echo
#echo "Finished"
#echo
