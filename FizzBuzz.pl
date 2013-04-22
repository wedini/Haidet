#!/usr/bin/perl -w
use strict;


foreach(1..100){
	if(($_ % 3 == 0)&($_ % 5 == 0)){
		print "FizzBuzz \n";
	}
	elsif($_ % 3 == 0){
		print "Fizz \n";
	}
	elsif($_ % 5 == 0){
		print "Buzz \n";
	}else{
		print $_ ."\n";
	}
}
