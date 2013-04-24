#!/usr/bin/perl -w
use strict;
use Config::Properties;
use DBI;
use XML::Simple;
use Data::Dumper;


sub print_values
{
 my $ref = shift;
 foreach (keys $ref){
   my $value = $ref->{$_};
 if (ref($value) eq "HASH")
 {
     print_values($value);
 }
 elsif (ref($value) eq "ARRAY")
 {
     print "@$value \n\n";
 }
 else
 {
     print $value."\n";
 }
  }

}

open my $fhxml, '<','foo.xml'
  or die "unable to open given xml file";

my $xs = XML::Simple->new();
my $refxml = $xs->XMLin($fhxml);

print_values($refxml);
