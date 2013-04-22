#!/usr/bin/perl -w
use strict;

if(@ARGV != 1){
print "please enter >0 and < 1 argument!";
exit;
}

my $file = shift @ARGV;
open (FH, "< $file") ;

my @lines_from_file;
while (<FH>) {
push (@lines_from_file, $_);
}


foreach ( reverse(@lines_from_file) ) {
print $_."\n";
}


