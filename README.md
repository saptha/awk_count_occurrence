# awk_count_occurrence      
Use the AWK utility to count the number of occurrences of a string in a given file.      
## Usage:      
`awk -f Search_String.awk input_file.txt`      
There is another file called `string_to_search` that needs to be updated for non-interactive usage.      

## Example (Non-Interactive mode):      
`$ cat string_to_search`    
test    


`$ awk -f Search_String.awk input_file.txt`   
  test occurred 4 times      


## Example (Interactive mode):
`$ awk -f Search_String.awk`    
  Enter the string to search     
  sample     
  sample occurred 7 times    
