use strict;
use warnings;

#Create a strict containing Perl code
my $code = q|
	my $text = "Hello";
	print "$text\n";
	
	#Intentional error
	##hfjid
|;

my $result = eval($code);

# If there is a problem eval' ing the code, eval() returns
#under and error is found in $@.

unless($result) {
	print $@;
}
	


