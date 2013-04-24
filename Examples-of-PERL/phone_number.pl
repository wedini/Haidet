#!/usr/bin/perl -w
use strict;


my $number = '(301)-942-8265';

if( $number =~ m/((\(\d{3}\))|(^\d{3}))(-\d{3}-\d{4})/){

 	$number=~ s/[^0-9]//g  ;
	print "$number\n";
} 
