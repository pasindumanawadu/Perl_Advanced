package Calculator;

sub divide {
	# Iniilliazing variables a & b
	$a = $_[0];
	$b = $_[1];
	
	# Performing the operation
	$a = $a/$b;
	
	# Function to print the results
	print "\n***Divide is $a";
}
  
1;
 	