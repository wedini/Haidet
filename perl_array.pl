#!/usr/bin/perl -w
use strict;


my @students = ("Haidet", "Lila", "Nixon", "Darly", "Seth" );

foreach (@students){
	print $_ ."\n";
};

push(@students, $students[0]);
shift (@students);
print "Shift each element one move to the left \n";

foreach (@students){
	print $_ ."\n";
};

print "Which person in the array form 0 to 4 should i print for you? ";
my $user_choice =<>; 
chomp($user_choice);
print  $students[$user_choice]."\n";

