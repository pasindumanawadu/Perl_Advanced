#!/usr/bin/perl

use warnings;
use strict;
use 5.010;
use Data::Dumper qw(Dumper);

my $filename = shift || 'names_score.txt';
my %scores_of;

open my $fh, '<' , $filename or die;
while (my $line = <$fh>){
	chomp $line;
	my ($name,$scores_str) = split /:/, $line;
	my @scores = split /,/, $scores_str;
	$scores_of {$name} = \@scores;
	}
print Dumper \%scores_of;

say '-----------------------------------------------------';
my $name = 'Mary';
for my $score (@{$scores_of{$name}}) {
	say $score;
	}
	
	