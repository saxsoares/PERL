#!/usr/local/bin/perl -w

@array = ();
$input = '';

while(){
	chomp( $input = <STDIN> );
	if( $input eq '' ) { last; }
	if( $input =~ /\D/ ) {
		print "Only digits\n";
		next;
	}

	push @array, $input;
}

$, = "\n";

print @array;

