#!/usr/bin/perl
use warnings;
use strict;

my $n = 2;
my $counter = 0;
my @primes;

sub testprime{
	my $m = shift @_;
	my $i = 2;
	while ($i < $m){
		return 0 unless ($m % $i++);
	}
	return 1;
}


print "Enter the number of primes you want: \n";
chomp (my $want = <STDIN>);

while($counter<$want){
	my $FindPrime = testprime $n;
	if ( $FindPrime == 1){
	        push(@primes, $n);
		$n++;
		$counter++;
	}
	else{
		$n++;
	}
}


foreach (@primes){
	print $_ ." ";
};
print "\n";
