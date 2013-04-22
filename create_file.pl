#!/usr/bin/perl
use strict;
use warnings; 

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
	utime(rand($range),rand($range),$file.".txt");
	# close the file.
	close FILE;
	$file++;
}




	

