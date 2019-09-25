package Calculator1;

sub new {
	my ($class,$args) = @_;
	my $self = bless {	input_1 => $args->{input_1},
						input_2 => $args->{input_2},
						operator => $args->{operator}
					} , $class;
	}

#get the input_1	
sub get_input_1 {
	my $self = shift;
	return $self -> {input_1};
	}
#set the input_1
sub set_input_1 {
	my ($self,$new_input_1) = @_;
	$self -> {input_1} = $new_input_1;
	}
	
#get the input_2	
sub get_input_2 {
	my $self = shift;
	return $self -> {input_2};
	}
#set the input_2
sub set_input_2 {
	my ($self,$new_input_2) = @_;
	$self -> {input_2} = $new_input_2;
	}

sub divide {
	# Iniilliazing variables a & b
	$input_1 = $_[0];
	$input_2 = $_[1];
	
	# Performing the operation
	$a = $a/$b;
	
	# Function to print the results
	print "\n***Divide is $a";
}
  
1;
 	