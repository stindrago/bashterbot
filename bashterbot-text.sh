#!/bin/bash
#curl -F "chat_id=330059180" -F "photo=@/home/csdcostin/Downloads/PoXPz.jpg" https://api.telegram.org/bot697128580:AAHzf1X-pKQmMsPkyNvgnBRBD5d5rMb7Lus/sendphoto
TOKEN=697128580:AAHzf1X-pKQmMsPkyNvgnBRBD5d5rMb7Lus
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
TO="$1"
TEXT="$2"

if [ "$TO" = "Costin" ]
then
    CHAT_ID="330059180"
fi

if [ "$TO" = "Tommaso" ]
then
    CHAT_ID="459374362"
fi

if [ "$TO" = "Riccardo3d" ]
then
    CHAT_ID="102260259"
fi

if [ "$TO" = "Luca" ]
then
    CHAT_ID="146866965"
fi

if [ "$TO" = "Valerio" ]
then
    CHAT_ID="162104524"
fi

MESSAGE=$(echo $TEXT | sed 's/ /%20/g')

#log
echo "Hai scritto $TEXT"
echo "Invece io invio $MESSAGE"

curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE"
