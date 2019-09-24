#!/usr/bin/perl

use strict;
use warnings;

my $file = 'input.csv';
my ($field1,$field2,$field3,$field4);

open (F, $file) || die ("Could not open $file!");

while (my $line = <F>)
{
  ($field1,$field2,$field3,$field4) = split ',', $line;
  print "$field1 : $field2 : $field3 : $field4";
  write_to_file($field1);
}

close (F); 

sub write_to_file{ 
 
	my $filename = 'input_wrote.txt';
	my ($field1) = @_;
	chomp $field1; 
	open(my $fh, '>>', $filename) or die "Could not open file '$filename' $!";
	print $fh "$field1\n";
	close $fh;
	print "written to file \n";
}