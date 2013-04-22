#!/usr/bin/perl -w
use strict;
use warnings;
use XML::Simple;

my $h_ref = {
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


my $xs  = XML::Simple->new(ForceArray => 1, KeepRoot => 1, XMLDecl => +1);
my $xml = $xs->XMLout($h_ref, RootName => 'config');
print "XML is:\n$xml\n";

 

