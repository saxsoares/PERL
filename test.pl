#!/usr/local/bin/perl -w 

#@array1 = (12,23,34,45,56);
@a = (44,55,66,undef,234);

if (exists $a[3]){
	print "True exists\nvalue - $a[3]\n";
}
else {
	print "No exists";
}

if (defined $a[3]){
	print "True defined\nvalue - $a[3]\n";
}
else {
	print "No defined\n";
}

delete $a[3];

if (exists $a[3]){
	print "True exists\nvaluej - $a[3]\n";
}
else {
	print "No exists\n";
}

if (defined $a[3]){
	print "True defined\nvalue - $a[3]\n";
}
else {
	print "No defined\n";
}
