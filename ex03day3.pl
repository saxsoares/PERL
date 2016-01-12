#!/usr/local/bin/perl -w

$input = '';
$temp = '';
while(){
	print "Enter a string: ";
	chomp( $temp = <STDIN>);
	if( $temp eq ' '){
		last;
	}
	else{
		$input .= $temp;
	}
}

print $input;

