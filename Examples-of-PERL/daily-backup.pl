#!/usr/bin/env perl
#
# Perform an incremental backup of a Subversion repository.
$svn_repos = "/home/svn/repos";
$backups_dir = "/home/svn/backups";
$backup_file = "incremental-backup." . `date +%Y%m%d%H%M%S`;
open(IN, "$backups_dir/last_backed_up");
$previous_youngest = <IN>;
chomp $previous_youngest;
close IN;
$youngest = `svnlook youngest $svn_repos`;
chomp $youngest;
if($youngest eq $previous_youngest) {
print "No new revisions to back up.\n";
exit 0;
}
# We need to backup from the last backed up revision
# to the latest (youngest) revision in the repository
$first_rev = $previous_youngest + 1;
$last_rev = $youngest;
print "Backing up revisions $first_rev to $last_rev...\n";
$svnadmin_cmd = "svnadmin dump --incremental " .
"--revision $first_rev:$last_rev " .
"$svn_repos > $backups_dir/$backup_file";
`$svnadmin_cmd`;
print "Compressing dump file...\n";
print `gzip -9 $backups_dir/$backup_file`;
open(LOG, ">$backups_dir/last_backed_up");
print LOG $last_rev;
close LOG;

