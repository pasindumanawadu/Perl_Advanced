# !/usr/bin/perl

use strict;
use warnings;

use Calculator1;

my $calculation_1 = Product->new ({
							input_1 => 800,
							input_2 => 100,
							operator => "/"});
my $calculation_2 = Product -> new({input_1 => 400,
							input_2 => 50,
							operator => "/"});

print $calculation_1 -> divide();
print "-----------------------------\n";
print $calculation_2->divide();
print "------------------------------\n";
$calculation_1->set_name('Maths');
print $calculation_1->get_name();