#!/usr/local/bin/perl -w

$guess = "";
$num = 0;
$top = 0;
$count = 0;
$done = "";

while(){
	print "Enter a number: ";
	chomp( $top = <STDIN> );

	if( $top =~ /\D/){
		if( $top =~ /-\d+/){
			print "Only positive numbers\n";
		}
		else{
			print "Digits only.\n";
		}
		next;
	}
	elsif( $top <=1 ){
		print "Only numbers greater than 1.\n";
		next;
	}
	
	last;
}

srand;
$num = int(rand $top) + 1;

while(!$done){
	print "Enter a number between 1 and $top: ";
	chomp( $guess = <STDIN> );

	if( $guess =~ /\D/){
		if( $guess =~ /-\d+/){
			print "Only positive numbers\n";
		}
		else{
			print "Digits only.\n";
		}
		next;
	} elsif( $guess == 0 ){
		print "Only numbers greater than 1.\n";
	} elsif( $guess < $num){
		print "Too low!\n";
		$count++;
	} elsif( $guess > $num){
		print "Too high!\n";
		$count++;
	} else {
		print "\a\aCorrect! \n";
		$count++;
		$done = 1;
	}
}
print "It took $count guesses";

	

