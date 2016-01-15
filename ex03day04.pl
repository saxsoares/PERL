#!/usr/local/bin/perl -w

@array = ("foo", 1, undef, 45, undef, undef, "atlas", undef, 101, undef);
$count = 0;

foreach $x (@array){
	if( !defined $x){
		$array[$count] = "zooo";
	}
	$count++;
}

print "@array";
