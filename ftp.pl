#!/usr/bin/perl
use strict;
use warnings;
use Net::FTP;




sub ftpconn{
                my $conn=shift;
                my $ftp=Net::FTP->new($conn->{'ip_address'}, Debug=>0)
                or die"Can't connect to remote server;$@ ";
                $ftp->login($conn->{'user_name'},$conn->{'user_password'})
                or die"can't Login",$ftp->message;

        return $ftp;
}


sub chwrk{
                my $path=shift;
                my $ftp=shift;
                $ftp->cwd($path)
                or die"Can't change the directory",$ftp->message;

}


sub makedirectory{
                my $dir=shift;
                my $ftp=shift;
                $ftp->mkdir($dir)
                or die"Can't create the directory",$ftp->message;

}

sub dwldfile{
                my $file=shift;
                my $ftp=shift;
                $ftp->get($file)
                or die"Can't download the file",$ftp->message;


}


sub quitftp{
        my $ftp=shift;
        $ftp->quit;
}

my $ftp =ftpconn({'ip_address'=>'192.168.4.100','user_name' =>'haidet','user_password'=>'HBGhbg123'});
#makedirectory("datdir", $ftp);
#chwrk("adir",$ftp);
dwldfile("teq1.txt", $ftp);
#upldfile("xml.pl",$ftp);
#quitftp($ftp);
  
