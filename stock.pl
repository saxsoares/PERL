#!/usr/local/bin/perl -w

$start = 0;
$end = 0;
$return = 0;

while(){
	print "Enter the purchase price: ";
	chomp( $start = <STDIN>);

	print "Enter the current price: ";
	chomp( $end = <STDIN>);

	if( $start eq '' or $end eq ''){
		print "Either the purchase or current price is missing.\n";
	}

	if($start =~ /\D/ or $end =~ /\D/) {
		if($start =~ /\// or $end =~ /\//) {
			print "please enter prices as decimal numbers. \n";
			next;
		} else {
			print "Digits only, please.\n";
		}
	}

	last;
}

$return = ($end - $start) / $start * 100;

if ($start > $end) {
	print "Yourr investment has lost money.\n";
} elsif ($start < $end ) {
	print "Your investment has made money.\n";
} else {
	print "Your investment has broken even.\n";
}

print "Your return on investment is ";
printf("%.2f%%\n", $return);
