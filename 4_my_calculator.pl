# /usr/bin/perl
use strict;
use warnings;

use Calculator;
use Try::Tiny;

# Defining values to the variables
$a = 10;
$b = 0;

# Subroutine call
#Calculator::addition($a,$b)

try {
	Calculator::divide($a,$b);
} catch {
	warn "\n--------------ERROR------------";
	warn "\n $_";
}
finally {
	if (@_) {
		print "\n Divide died with : @_\n ";
	} else {
		print "\n Divide executed without error\n ";
	}
};