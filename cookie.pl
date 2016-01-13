#!/usr/local/bin/perl -w
#
# Cookie Monster

$cookie = "";

while ( $cookie !~ m/cookie/i) {
	print 'Give me a cookie: ';
	chop($cookie = <STDIN>);
}

print "Mmmmm. Cookie.\n";


