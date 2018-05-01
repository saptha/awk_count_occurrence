{
	count = 0
	strings [NR] = $0
}
END {
	print ("Enter the string to search")
	#getline stri < "/dev/tty"
	getline stri < "string_to_search"
	for (i = 0; i <= NR; i++)
	   {
		split (strings[i], str)
		for (string in str)
		{
	 	if (tolower(str[string]) ~ tolower(stri))
		 {
			count++;
	 	 }
		}
	   }
	print (stri " occurred " count " times")
 }
