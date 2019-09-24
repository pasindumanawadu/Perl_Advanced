#!/usr/bin/perl

use warnings;
use strict;

my $bar = "This is foo and again foo";
if ($bar =~ /foo/) {
	print "First time is matching\n";
}	else {
	print "First time not matching\n";
}

$bar = "foo";
if ($bar=~ /foo/) {
	print "Second time is matching\n";
}	else {
	print "Second time not matching\n";
}