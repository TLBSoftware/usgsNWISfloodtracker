for datafiles in "$@"
do

	#Creation of a file if one does not already exist
	file="flooddata.txt"
	if [ ! -f "$file" ] ; then
	touch $file
	fi
	
	
	#Submit data lines, sort by value (contained in 4th spot)...
	#retrieve greatest value then retrieve only date and value...
	#then write to file
	echo "$datafiles" >> "$file"
	grep "^USGS" "$datafiles" | 
	sort -nk 4 | 
	tail -n 1 |
	cut -f3,4 >> "$file"
	
	#Create line to seperate entries
	echo " " >> "$file"
	
	
	
done
