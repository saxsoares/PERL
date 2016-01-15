#!/usr/local/bin/perl -w

@array = ();
$input = '';
#$cont = 0;
$sum = 0;
$average = 0;
$median = 0;

while(){
	print "Enter a number: ";
	chomp( $input = <STDIN> );
	if ($input eq '') { last; }

	if( $input =~ /\D/ ) {
		print "Only numbers, please.\n";
		next;
	}

	push @array, $input;
	$sum += $input;
}
#$cont = @array;
@array = sort { $a <=> $b } @array;
$average = $sum / scalar(@array);				#$cont;
$median = $array[ scalar(@array) / 2];				#$cont /2];

print @array;
print "\n";
print "@array\n";
printf("Numeros de elementos: %d\n", scalar(@array));		#$cont\n";
print "Soma: $sum\n";
print "Minimo: $array[0]\n";
print "Maximo: $array[$#array]\n";
printf("Average: %.2f\n", $average);
print "Median: $median\n";
