#!/usr/bin/perl

$string = "Cats go Catatonic\nWhen given Catrip";
($start) = ($string =~ /\A(.*?)/);
@lines = $string =~ /^(.*?)/gm;
print "First word:$start\n"."Line starts:@lines\n";

$string1 = "The time is : 12:31:02 on 4/12/00";

$string1 =~ /:\s+/g;
($time) = ($string1 =~ /\G(\d+:\d+:\d+)/);
$string =~ /.+\s+/g;
($date) = ($string1 =~ m{\G(\d+/\d+/\d+)});

print "Time:$time, Date:$date\n"; 