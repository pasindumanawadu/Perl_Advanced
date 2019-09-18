#!/usr/bin/perl

open(FILE,"names_groups.txt") || die "Enable to open test file";
$char = getc(FILE);
print "First character is $char\n";
$char = getc(FILE);
print "Second character is $char\n";

#Now check the position of read printer
$position = tell(FILE);
print "Position with in the file $position\n";
close(FILE);
