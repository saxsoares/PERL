#!/usr/local/bin/perl -w

$one = 0;
$two = 0;
@array = ();

while(){
	print "Enter with a first number: ";
	chomp( $one = <STDIN> );
	print "Enter with a second number: ";
	chomp( $two = <STDIN> );

	if( $one eq '' or $two eq '' ){
		print "A number has been lost.\n";
		next;
	}

	if( $one =~ /\D/ or $two =~ /\D/ ){
		print "Only numbers, please.\n";
		next;
	}

	last;
}
	
if( $one >= $two ) { 
	@array = ($two..$one); 
}
else { 
	@array = ($one..$two); 
}

print "@array";
