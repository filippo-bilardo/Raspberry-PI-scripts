#!/bin/bash
#######################################################################
#
# Filename: launch_kodi.sh
# Date:     10/01/2015
# Version:  1.0
# Author:   Filippo Bilardo
#
# Se il processo non è già in esecuzione viene lanciato il programma
#
# Revision history:
# <data>      <version>   <change log>
# 10/01/2015  1.0.0       Versione Iniziale
#
########################################################################
PROGRAM_NAME="kodi"

isRunning=$(ps -aux | grep -c $PROGRAM_NAME)
echo
if [ $isRunning -eq 1 ]
then
  echo "Esecuzione di $PROGRAM_NAME..."
  $PROGRAM_NAME
else
  echo "$PROGRAM_NAME e' gia' in esecuzione"
fi
 