
TEMPDIR=/tmp
QUONAME=fortunewallpapertempqoutefile.txt
DESKDIR=/home/ali/Pictures/Wallpapers/background.png
#bgcolor="#222222"
bgcolor="#000000"
fgcolor="#dcdccc"

        fortune | expand > $TEMPDIR/$QUONAME
       # echo -e "\n\n\n" | cat - $TEMPDIR/quote.txt > temp && mv temp $TEMPDIR/quote.txt
        
        convert -background $bgcolor -fill $fgcolor  -bordercolor black -border 300 \
        -font Kid-Kosmic \
        -pointsize 25 -size 1920x1080 label:@$TEMPDIR/$QUONAME \
        $DESKDIR


