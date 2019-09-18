#!/usr/bin/perl

use strict;

my $file_name = "report.txt";
open (my $fh, '>>' , $file_name);
print $fh "My first report\n";
print $fh "My second report\n";
close $fh;
print "done\n";

# read the file
open(DATA,"<$file_name") or die "$!";
while (<DATA>) {
	print "$_";
}