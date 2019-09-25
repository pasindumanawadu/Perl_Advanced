package Calculator1;

sub new1 {
	my ($class,$args) = @_;
	my $self = bless {	input_1 => $args->{input_1},
						input_2 => $args->{input_2},
						operator => $args->{operator}
					} , $class;
	}

sub divide {
	# Iniilliazing variables a & b
	my $self = shift;
	my $result = $self->{input_1} / $self->{input_2};
	return " Answer: $result\n";
	
}
  
1;
 	