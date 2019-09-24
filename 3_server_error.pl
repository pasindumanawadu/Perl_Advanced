# !/usr/bin/perl -w
# Filename : server.pl

use strict;
use Socket;

# use port 7890 as default
my $port = shift || 7890;
my $proto = getprotobyname('tcp');
my $server = "localhost"; # Host IP running the server

# create a socket, make it reusable
socket (SOCKET, PF_INET, SOCK_STREAM, $proto)
	or die "Can't open socket option to SO_REUSEADDR $!\n";
setsockopt (SOCKET, SOL_SOCKET, SO_REUSEADDR, 1)
	or die "Can't open socket option to SO_REUSEADDR $!\n";

# bind to a port, then listen
bind (SOCKET, pack_sockaddr_in ($port, inet_aton($server)))
	or die "Can't bind to port $port\n";
	
listen (SOCKET, 5) or die "listen: $!";
print "SERVER started on port $port\n";

# accepting a connection
my $client_addr;
while ($client_addr = accept(NEW_SOCKET, SOCKET)) {
	#send them a message , close connection
	#my $name = gvethostbyaddr (client_addr, AF_INET)
	my $name = "Client";
	print NEW_SOCKET "Hello $name";
	print "Connection received from $name\n";
	close NEW_SOCKET;
}