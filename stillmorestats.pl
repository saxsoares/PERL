#!/usr/local/bin/perl -w

$input = ''; 	# temporary input
@nums = (); 	# array of numbers;
%freq = (); 	# hash of number frequencies
					#$count = 0; 	# count of numbers
$sum = 0; 	# sum of numbers
$avg = 0; 	# average
$med = 0; 	# median
$maxspace = 0;	# max space for histogram

while(){
	print "Enter a number: ";
	chomp( $input = <STDIN> );
	if( $input eq '' ) { last; }

	if( $input =~ /\D/ ){
		print "Only numbers.\n";
		next;
	}

	push @nums, $input;
	$freq{ $input}++;
					#$count++;
	$sum += $input;
}

@nums = sort { $a <=> $b } @nums;
$avg = $sum / scalar @nums;			#$count
$med = $nums[scalar @nums / 2];

print "\nTotal count of numbers: $#nums\n";
print "Total sum of numbers: $sum\n";
print "Minimum number: $nums[0]\n";
print "Maximum number: $nums[$#nums]\n";
printf("Average (mean): %.2f\n", $avg);
print "Median: $med\n\n";
print "Frequency of Values:\n";

$maxspace = (length $nums[$#nums]) + 1;
foreach $key (sort { $a <=> $b } keys %freq) {
	print $key;
	print ' ' x ($maxspace - length $key);
	print '| ', '*' x $freq{$key}, "\n";
}
