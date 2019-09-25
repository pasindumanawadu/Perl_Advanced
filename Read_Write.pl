# !/usr/bin/perl 
use strict;
use Socket;
use Try::Tiny;
my $filename; my $field;

#read from the file
sub read {
	my $file = "input.csv";
	open(F,$file) || die ("Could not open $file!");
}
sub write {
	open(my $fh, '>>', $filename) or die "Could not open file'$filename'$!";
	print $fh "$field!\n";
}

try {
	read()
	while (my $line = <F>) {
		my($field1,$field2,$field3,$field4) = split ',', $line;
		print "$field1 : $field2 : $field3 : $field4";
		write_to_file($field1);
	}
	close (F); 

}catch {
	warn "$_ Please check the file name\n";
	return 0;
};

try {
	my $filename = 'input_wrote.txt';
	my ($field1) = @_;
	chomp $field1; 
	write()
	close $fh;
	print "written to file \n";

}catch {
	warn "$_ Please check the file name\n";
	return 0;
};

