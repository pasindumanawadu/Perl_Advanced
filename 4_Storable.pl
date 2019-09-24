use Storable;

$a = [100,200, {'foo' => 'bar'}];

eval {
	store ($a, 'test.dat');
}

print "Error writing to a file : $@" if $@;

$a = retrieve ('test.dat');
print $a=> {'foo'};
