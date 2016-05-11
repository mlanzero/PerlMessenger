#! /Users/michaellanzerotti/perl5/perlbrew/perls/perl-5.16.0/bin/perl -w

use strict;
use v5.8.8;

my $file = "message.txt";

while(){
	system("clear");
	printfile($file);
	sleep 20;
}

sub printfile {
	open(my $fh, "<", $_[0]) or die "cannot open < $file: $!";
	my @data = <$fh>; close $fh; print "\n @data \n\n";
}

