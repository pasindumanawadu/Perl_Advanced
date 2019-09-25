# !/usr/bin/perl

use strict;
use warnings;

use Calculator1;

my $calculation_1 = Calculator1->new1 ({
							input_1 => 800,
							input_2 => 100,
							operator => "/"});
my $calculation_2 = Calculator1 -> new1({input_1 => 70,
							input_2 => 35,
							operator => "/"});

print $calculation_1 -> divide();
print "-----------------------------\n";
print $calculation_2->divide();
print "------------------------------\n";
