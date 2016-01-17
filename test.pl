#!/usr/local/bin/perl -w 

%hash = ();
$input = '';
$x = '';
$y = '';

while(){
	print "\nEnter something: ";
	chomp( $input = <STDIN> );

	if( $input eq '' ) { last; }
	
	($x, $y) = split( ' ', $input );
	$hash{ $x } = $y;
}
$, = ' ';

print each %hash;

