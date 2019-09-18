#!/usr/bin/perl

$key = getc(STDIN);
print "Entered value is $key\n";

rename ("/Users/User/pasindu/Perl_Advanced/report.txt","/Users/User/pasindu/Perl_Advanced/report1.txt");

unlink ("/Users/User/pasindu/Perl_Advanced/report.txt");

rename ("/Users/User/pasindu/Perl_Advanced/report1.txt","/Users/User/pasindu/Perl_Advanced/report.txt");


