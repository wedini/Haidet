#!/usr/bin/perl -w
use strict;
use Config::Properties;
use DBI;

#This file will recieve an input such as config.props and use Config::Properties to get the hash of the necessary data, and then use the data from the hash to connect to the database such as haidet_1stDB using DBI.

open my $fh, '<', @ARGV
  or die "unable to open configuration file";
 
my $properties = Config::Properties->new();
  $properties->load($fh);

#automatically gets all the properties
my $ref = $properties->getProperties;

my $driver = $ref->{'driver'};
my $dsn = $ref->{'dsn'};
my $username = $ref->{'username'};
my $passwd = $ref->{'passwd'};
my $dbh = DBI->connect("dbi:$driver:$dsn", $username, $passwd, { AutoCommit => 1 });



