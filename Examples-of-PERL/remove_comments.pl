#!/usr/bin/perl -w
use strict;

if(@ARGV != 1){
	print "please enter >0 and < 1 argument!";
	exit;
}

my $file = shift @ARGV;
#Opend the file using file handler
open (FH, "< $file") ;

my @lines_from_file;
while (<FH>) {
   $_ =~ s/#//g  ;
   print $_;
}



