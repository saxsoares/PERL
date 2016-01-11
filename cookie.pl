#!/usr/local/bin/perl -w
#
# Cookie Monster

$cookie = "";

while ( $cookie ne 'cookie') {
	print 'Give me a cookie: ';
	chop($cookie = <STDIN>);
}

print "Mmmmm. Cookie.\n";


