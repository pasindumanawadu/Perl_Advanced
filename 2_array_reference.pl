#!/usr/bin/perl

## simple data structure

# A stack

print "Making a Stack\n";
@stack = qw (awk bash chmod);
print "Initial stack:\n  @stack \n";
push (@stack,"diff");
print "Push item on stack:\n  @stack \n";
$item = "Emacs";
push (@stack,$item);
print "Push item on stack:\n  @stack \n";
$top = pop @stack;
print "Popping top of stack:\n  $top \n";
print "Final stack:\n  @stack \n\n";
print "--------------------------------------------------\n";
# a queue
print "\n";
print "Making a \"First in First out\" Queue\n";
@queue = qw (lpr mcopy ps);
print "Initial queue: \n @queue\n";
unshift(@queue, "kill");
print "Add item to queue: \n @queue \n";
$item = "df";
unshift (@queue,$item);
print "Add item to queue: \n @queue \n";
$fifo = pop @queue;
print "Remove FIFO item: \n $fifo \n";
print "Final queue:\n @queue \n\n";
print "----------------------------------------------------\n";

# Method #2 Reference variables  or pointers

print "\n";
print "using pointers\n";

@links = qw (2 Null 1);
@nodes = qw (finger:Null whois:Null who:Null);

print "@nodes\n\n";

for ($i=0; $i<=$#nodes; $i++) {
	$ptr = \$nodes[$i];
	@data = split(/:/, $$ptr);
	print "Before: $ptr @data";
	$data[1] = $links[$i];
	print "-> @data \n";
	$$ptr = join ',' , @data;
	}

print "\n\n";
print "-------------------------------------------------------\n";




















 





