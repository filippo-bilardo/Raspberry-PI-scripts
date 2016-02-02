#!/bin/bash
#######################################################################
#
# Filename: mount_hd.sh
# Date:     10/01/2015
# Version:  1.0
# Author:   Filippo Bilardo
#
# Script per il montaggio dell'harddisk
#
# Revision history:
# <data>      <version>   <change log>
# 10/01/2015  1.0.0       Versione Iniziale
#
########################################################################
NAMEHD="MYHD"

# Verifico se il disco è collegato
vfdsik=$(fdisk -l | grep -c sda1)
if [ $vfdsik -eq 0 ]
then
  echo
  echo "Nessun disco collegato"
  exit 1
fi

#Verifico se è già stata creata la cartella per il montaggio del disco
echo
if ls /media/$NAMEHD > /dev/null 2>&1
then
  echo "Cartella /media/$NAMEHD gia' esistente"
else
  echo "creata la cartella: /media/$NAMEHD"
  mkdir /media/$NAMEHD  
fi

#Monto il disco
ismounted=$(mount | grep -c sda1)
echo
if [ $ismounted -eq 1 ]
then
  echo "Disco gia' montato: /media/$NAMEHD"
else
  mount -t vfat /dev/sda1  /media/$NAMEHD
  echo "Disco montato: /media/$NAMEHD"
fi
ls /media/$NAMEHD
 

