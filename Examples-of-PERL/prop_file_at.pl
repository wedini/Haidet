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



#this is the same as prop_file_mn.pl, but uses Config::Properties instead 

open my $fh, '<', @ARGV
  or die "unable to open configuration file";
 
my $properties = Config::Properties->new();
$properties->load($fh);

#automatically gets all the properties
my $ref = $properties->getProperties;

#example of how to access the value
print $ref->{"Haidet"}."\n";


