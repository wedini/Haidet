#!/usr/bin/perl -w
use strict;


my $minimum=0;
my $range=100;
my $random_number = int(rand($range)) + $minimum;

print "Can you guess what number I am thinking of between 0 and 100? ";
my $user_guess =<>; 

while($user_guess != $random_number){
print "Nope guess again: ";
$user_guess =<>;
}
print "GOOD JOB!\n";
