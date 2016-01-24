#!/usr/local/bin/perl -w

$input = '';
$name = '';
$lastn = '';
%map = ();

while(){
	print "Enter a name (first and last): ";
	$input = <STDIN> ;
	chomp( $input );

	if( $input eq ''){ last; }

	($name, $lastn) = split( ' ', $input);
	$map{ $lastn } = $name;
}

foreach $key (sort keys %map) {
	print $key.', '.$map{ $key }."\n";
}
