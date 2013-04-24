#!/usr/bin/perl
use strict;
use warnings; 
use Cwd;


#This File will rename all the .txt  files to .log files whie preserving the original time stamp.


# Get the current directory
my $dir = cwd();

#As long as there are files
if (chdir "$dir") {
    opendir (DIR, $dir);
    #The file in the directory is added to @filelist
    my @fileList = readdir DIR;
    foreach my $oldname (@fileList) {
        next if -d $oldname;
	#Save the original time stamp
	my @timestamp = ( stat($oldname)) [8,9];
	#Rename the oldfile from .txt to .log
        my $newname = $oldname;
        $newname =~ s/.txt/.log/;
        rename $oldname, $newname;
	#Give the file its old time stamp back 
	utime @timestamp, $newname;
    }
}
else {
    print "Error - Please check that $dir exists and is accessible.\n";
}



