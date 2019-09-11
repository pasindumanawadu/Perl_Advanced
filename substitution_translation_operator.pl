#!/usr/bin/perl

$string = "The cat sat on the mat";
$string =~ s/cat/dog/;

print "$string\n";

##########################################################

#!/usr/bin/perl

$string = "The cat sat on the mat";
$string =~ tr/a/o/;

print "$string\n";

###########################################################

#!/usr/bin/perl

$string = "The cat sat on the mat";
$string =~ tr/a-z/b/d;

print "$string\n";

