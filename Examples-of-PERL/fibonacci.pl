#!/usr/bin/perl -w
use strict;


print "How many fibs do you need? ";

my $until =<>;
my $index =2;
my $fib;
my @list;

$list[0]=0;
$list[1]=1;

while($index <= $until){
$fib = ($list[$index-1] + $list[$index-2]);
push(@list,$fib);
$index ++;
}



foreach (@list){
	print $_ ." ";
};
print "\n";
