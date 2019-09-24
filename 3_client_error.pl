# !/usr/bin/perl -w
# Filename : client.pl

use strict;
use Socket;
use Try::Tiny;

# initiate host and port
my $host = shift || 'localhost';
my $port = shift || 7890;
my $server = "localhost"; # host ip running on the server
#my connection ==1;

sub connectivity {
# create the socket, connect to the port
socket(SOCKET, PF_INET,SOCK_STREAM,(getprotobyname('tcp'))[2]) 
	or die "Can't create a socket $!\n";
connect (SOCKET, pack_sockaddr_in ($port, inet_aton($server)))
	or die "Can't connect to the port $port!\n";
}

try {
	connectivity()
} catch {
	warn "$_ Please check the port\n";
	return 0;
};

try {
my $line;
	while ($line = <SOCKET>) {
		print "$line\n";
	}
	close SOCKET or die "close: $!";
} catch {
	warn "$_ \n";
}






