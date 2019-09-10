use 5.0010;

use Net::Ping;
use IO::Socket;
use IO::Select;


sub check_alive {
	my $site_name = $_[0];
	my $p = Net::Ping->new();
	if ($p->ping($site_name)) {
	print 'alive';
	}
	return 0;

}

#check_alive ('perlmaven.com');
check_alive ('google.com');

my @sites = ('perlmaven.com','google.com','www.perlmonks.org');

foreach my $a (@sites) {
	print "$a : ";
	check_alive($a);
	print "\n";
}