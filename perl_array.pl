#!/usr/bin/perl -w
use strict;

#Create an array
my @students = ("Haidet", "Lila", "Nixon", "Darly", "Seth" );
#Print each item in the array
foreach (@students){
	print $_ ."\n";
};
#Add the frist element to the array
push(@students, $students[0]);
#Remove the first element from front of array
shift (@students);
print "Shift each element one move to the left \n";

foreach (@students){
	print $_ ."\n";
};

print "Which person in the array form 0 to 4 should i print for you? ";
#$user_choice waits for user input
my $user_choice =<>; 
#Removes the last character because it is a '\n'
chomp($user_choice);
#Print the selected user
print  $students[$user_choice]."\n";

