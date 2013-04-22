#!/usr/bin/perl -w
use strict;
use Config::Properties;

#########################################
# Use text file with the following format
#
#Haidet=1
#Lila=2
#Nixon=3
#Darly=4
#
##########################################

# This func is expecting an input file, so this if statement checks for one input file.
if(@ARGV != 1){
print "please enter >0 and < 1 argument!";
exit;
}

# $file is assigned to the input file and shift accesses the first thing in the file.
my $file = shift @ARGV;
#Opend the file using file handler
open (FH, "< $file") ;


my %hash;
# Goes through the text file and splits each line at the '=' and turns it into hash as value and key.
while (<FH>) {
  my @arr =  split('=', $_);
  $hash{$arr[0]} = $arr[1];
}


foreach (keys %hash)  {
  print "Key : $_       Value : ".$hash{$_}."\n";
}

