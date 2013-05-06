#!/usr/bin/perl -w
use strict;




my $until =4000000;
my $index =2;
my $fib;
my @list;
my $sum;

$list[0]=0;
$list[1]=1;

while($fib < $until){
	$fib = ($list[$index-1] + $list[$index-2]);
	push(@list,$fib);
	if($fib % 2 == 0){
		$sum = $sum+$fib;
	}
	$index ++;
}
print $sum."\n";
