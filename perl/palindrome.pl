#!/usr/bin/perl

use strict;
use warnings;

sub simple_palindrome_qualifier {
	# max computitional complexity: O(n)

	chomp(my $input_str = (<>));
	my $reversed_str = reverse $input_str; 
	my $res;
	if ($input_str){
		$input_str eq $reversed_str ? return 1 : return 0;
	} else {
		return "The input string is empty\n";
	}
}

sub advanced_palindrome_qualifier {
	# max computitional complexity: 
		# for an even number of characters in the input line: O(n/2)
		# for an odd number of characters in the input line: O(n/2-1)
	
	chomp(my $input_str = (<>));
	my @arr = split //, $input_str;
	my $res;

#need check for odd/even 
	for (my $i=1; $i <= $#arr/2 ; $i++){
		if ($arr[$i] ne $arr[-$i]) {
			return 0} 
		else {
			$res=1; print $arr[$i]."\n"}
		}
	return 1	
}



# print(&simple_palindrome_qualifier);
print(&advanced_palindrome_qualifier);
