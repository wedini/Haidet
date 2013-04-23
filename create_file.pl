#!/usr/bin/perl
use strict;
use warnings; 


#This will create 100 files in the current directory and naming them 1.txt - 100.txt.
#It will also give the files a random creation and modification times instead of the Auto
#assigned current time.

# Put the file name in a string variable
# so we can use it both to open the file
# and to refer to in an error message
# if needed.

my $file = 1;
my $range = 9999999999;

while($file <= 100){

	# Use the open() function to create the file.
	unless(open FILE, '>'.$file.".txt") {
		# Die with error message 
		# if we can't open it.
		die "\nUnable to create $file\n";
	}
	#Updating the times to random
	utime(rand($range),rand($range),$file.".txt");
	# close the file.
	close FILE;
	$file++;
}




	

