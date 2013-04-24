#!/usr/bin/perl -w
use strict;
use Config::Properties;
use DBI;
use XML::Simple;
use Data::Dumper;


open my $fh, '<', @ARGV
  or die "unable to open given file";
 
my $properties = Config::Properties->new();
  $properties->load($fh);

open my $fhxml, '<','query.xml'
  or die "unable to open given xml file";

my $xs = XML::Simple->new();
my $refxml = $xs->XMLin($fhxml);
print Dumper($refxml);


#automatically gets all the properties
my $ref = $properties->getProperties;
#use data from the hash to connect to the database using DBI
my $driver = $ref->{'driver'};
my $dsn = $ref->{'dsn'};
my $username = $ref->{'username'};
my $passwd = $ref->{'passwd'};
my $dbh = DBI->connect("dbi:$driver:$dsn", $username, $passwd, { AutoCommit => 1 });

my $sqlQuery = $refxml->{'queries'}->{'query'};
my $dbhXml = $dbh->selectall_hashref($sqlQuery, 'name') ;
print Dumper($dbhXml);
