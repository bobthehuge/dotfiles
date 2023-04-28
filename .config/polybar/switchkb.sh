query=$(setxkbmap -query | grep "fr")

if [ -n "$query" ];
then
    setxkbmap us
else
    setxkbmap fr
fi
