#!/usr/bin/perl -w
use strict;

my $sumOsqr=0;
my $sqrOsum=0;
my $diff;

foreach(1..100){
	$sumOsqr = $sumOsqr +($_*$_);
	$sqrOsum = $sqrOsum + $_;
}

print $sqrOsum * $sqrOsum - $sumOsqr ."\n";
