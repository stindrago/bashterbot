#!/bin/bash

while getopts ":tap " opt; do
  case $opt in
      t)
	echo "Hai scelto: -t Ora invio il testo" >&2
	;;
      a)
        echo "Hai scelto: -a Ora invio l'audio" >&2
      ;;
      p)
        echo "Hai scelto: -t Ora invio l'immagine" >&2
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done
