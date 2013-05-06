#!/usr/bin/env perl
#
# Perform a full backup of a Subversion repository.

$svn_repos = "/home/svn/repos";
$backups_dir = "/home/svn/backups";

$backup_file = "full-backup." . `date +%Y%m%d%H%M%S`;
$youngest = `svnlook youngest $svn_repos`;
chomp $youngest;

print "Backing up to revision $youngest\n";
$svnadmin_cmd = "svnadmin dump --revision 0:$youngest " .
"$svn_repos > $backups_dir/$backup_file";
`$svnadmin_cmd`;
print "Compressing dump file...\n";
print `gzip -9 $backups_dir/$backup_file`;
open(LOG, ">$backups_dir/last_backed_up");
print LOG $youngest;
close LOG;

