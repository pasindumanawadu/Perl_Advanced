package T;

require Exporter;
@ISA = qw/Exporter/;
@EXPORT = qw/function/;

use Carp;

sub function {
	warn "Error in Module";
	#cluck "Error in Module";
}

function();
1;