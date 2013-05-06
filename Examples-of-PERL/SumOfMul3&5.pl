#!/usr/bin/perl -w
use strict;

my $sum = 0;

foreach(1 .. 999){ #Using 9 and not 10 because we want to exclude 10
	if(($_ % 3 == 0)|($_ % 5 == 0)){
print $_."\n";
		$sum = $sum + $_;
	}
}

print $sum ."\n";
