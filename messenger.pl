#! /Users/michaellanzerotti/perl5/perlbrew/perls/perl-5.16.0/bin/perl -w

use strict;
use v5.8.8;

my $file = "message.txt";

while(){
	my $input = <STDIN>;
	chomp $input;
	addline($file, "$input" );
	sleep 5;
}


sub addline{
	my($file, $line) = @_ ;
	open(my $fh, "<", $file) or die "cannot open < $file: $!";
	my @data = <$fh>; close $fh;

	push @data, "$line\n";
	shift @data if ($#data > 20 );

	open($fh, ">", $file) or die "cannot open > $file: $!";
	print $fh @data; close $fh;
	print "\n @data \n\n";
}

