{
	# Initialize the counter
	count = 0

	# Store each line of the given file into an array
	# The index variable is the sequential record number as the file is read (NR)
	lines [NR] = $0
}
# Once all the lines are read we enter the END block
END {
	## Below 2 lines of code is to support user interaction. For non-interactive usage comment the below two lines
	 print ("Enter the string to search")
	 getline stri < "/dev/tty"

	## For non-interactive usage uncomment the below line.
 #	getline stri < "string_to_search"   # The string to be searched is updated in a flat file called string_to_search

	for (i = 0; i <= NR; i++) # Loop through each line of the file
	   {
		split (lines[i], strings)  # Split the words in each line and make an array
		for (string in strings)      # Traverse the array of words for every line
		{
	 	if (tolower(strings[string]) ~ tolower(stri))  # use tolower to search case insensitively
		 {
			count++;
	 	 }
		}
	   }
	print (stri " occurred " count " times")    # print the result
 }
