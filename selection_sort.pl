use warnings;
use 5.010;

use Data::Dumper qw (Dumper);

sub selectionSort {
	my @list = @_;
	for my $i (0 .. $#list - 1 ) {
		my $min = $i;
		for my $j($i .. $#list) {
			if ($list [$j] < $list[$min]) {
				$min = $j;
			}
		}
		if ($i != $min) {
			@list[$i, $min] = @list[$min, $i];
			
		}
	}
	return @list;
}

my $start_run = time();

my @unsorted = reverse(1 .. 1000);
say Dumper \@unsorted;
#print "@unsorted\n";
my @sorted = selectionSort(@unsorted);
say Dumper \@sorted;
#print "@sorted\n";

my $end_run = time();
my $run_time = $end_run - $start_run;
print "Job took $run_time seconds\n";


