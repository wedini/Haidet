#!/usr/bin/perl
use strict;
use warnings;


my $range = 9999999999;

my $file = 1;
	
unless(open FILE, '>'.$file.".txt") {
		# Die with error message 
		# if we can't open it.
		die "\nUnable to create $file\n";
	}
 utime(rand($range),rand($range),$file.".txt");
# close the file.
close FILE;


