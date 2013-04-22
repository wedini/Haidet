#!/usr/bin/perl -w
use strict;
use List::Util 'max';

my %relatives = ( 'Lisa' => 'daughter',
		  'Bart' => 'son',
		  'Maggie' => 'daughter',
		  'Marge' => 'mother',
		  'Homer' => 'father',
		  'Santa' => 'dog' );



#fills this array with the keys (names)
my @characters = keys %relatives;

#prints all the key (names)
print "\nHomer Family Characters: \n";
foreach (@characters){
	print $_ ."\n";
};

#asks and prints the relationship of the name/character
print "\nwhose relationship would you like to know? \n";
my $user_choice =<>;
chomp($user_choice);
print $relatives{$user_choice}."\n";

#fills this array with the values (relationships)
@characters = values %relatives;

print "\nHomer Family Relationship: \n";
#prints all the values
foreach (@characters){
	print $_ ."\n";
};

#asks and prints the name/character of the relationship
print "\nwhose name would you like to know? \n";
$user_choice =<>;
chomp($user_choice);

# compares the value of the hash and prints out the key 
foreach (keys %relatives){
  if( ($relatives{$_}) eq ($user_choice)){
  	print $_."\n";
	exit;
  }
};





