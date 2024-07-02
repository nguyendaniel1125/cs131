./changestring.sh

#What this command does
It searches all text files in the directory that contains the old string and replaces it with the new string.
It then tells you all files that were changed.

#Why/When this command is useful
This command is useful when needed to changed string in documents in bulk.
Ex:
Changing the date for multiple documents
Spelling of a name is incorrect for multple documents

#How you can use this command
./changestring.sh
The script will prompt and ask for the string your want changed, what you want to change it to, and the directory.

#Examples
Enter the directory name
sample
Enter the string to search for
This
Enter the string to replace with
That
The following files were changed:
sample/text1.txt
sample/text2test.txt

