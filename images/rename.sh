#! /bin/bash

files=`ls icons`

for i in $files; do
    size=`convert -print "%wx%h" ./icons/$i /dev/null`
    convert ./logo.png --resize $size ./icons/$i
done
