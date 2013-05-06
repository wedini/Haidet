#!/usr/bin/perl -w
use strict;
use bytes;


my $index =2;
my $fib;
my @list;
my $bool = 0;
$list[0]=0;
$list[1]=1;

while($bool == 0){
$fib = ($list[$index-1] + $list[$index-2]);
push(@list,$fib);
$index ++;
check();
}

sub check{
	if ($fib > 100){
		print bytes::length($fib); 
		$bool = 1;	
	}
  $bool = 0;
}

