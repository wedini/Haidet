#!/usr/bin/perl -w
use strict;
use Config::Properties;
use DBI;
use XML::Simple;
use Data::Dumper;


my $VAR1 = {
          'debugfile' => '/tmp/foo.debug',
          'server' => {
                      'kalahari' => {
                                    'osversion' => '2.0.34',
                                    'osname' => 'linux',
                                    'address' => [
                                                 '10.0.0.103',
                                                 '10.0.1.103'
                                               ]
                                  },
                      'sahara' => {
                                  'osversion' => '2.6',
                                  'osname' => 'solaris',
                                  'address' => [
                                               '10.0.0.101',
                                               '10.0.1.101'
                                             ]
                                },
                      'gobi' => {
                                'osversion' => '6.5',
                                'osname' => 'irix',
                                'address' => '10.0.0.102'
                              }
                    },
          'logdir' => '/var/log/foo/'
        };

print $VAR1;
