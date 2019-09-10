use 5.010;

use Net::Ping;
use IO::Socket;
use IO::Select;


sub check_alive {
	my $site_name = $_[0];
	my $p = Net::Ping->new();
	if ($p->ping($site_name)) {
		say 'alive';
	}
	else {
		print 'Not Reachable';
	}
	return 0;
}

#check_alive ('perlmaven.com');
#check_alive ('google.com');

my @sites = ('perlmaven.com','google.com','www.perlmonks.org');

foreach my $a (@sites) {
	print "$a : ";
	my $rlt = check_alive($a);
	if ($rlt = 'Not Reachable'){
		print "\n";
		print "\n";
		}
	#print "\n";
}