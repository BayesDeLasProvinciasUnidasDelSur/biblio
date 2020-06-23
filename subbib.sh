echo "" > $1.bib
cat $1 | while read line
do	
	echo "" >> $1.bib
	sed -n "/$line/,/^}/p" biblio.bib | xargs -0 echo >> $1.bib 
done
