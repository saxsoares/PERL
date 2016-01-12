#!/usr/local/bin/perl -w

$num = ' ';
$sum = 0;
$cont = 0;
$media = 0;
while( ){
	print "Digite um numero:\n";
	chomp($num = <STDIN>);
	if( $num eq ' ') { last; }

	if( $num !~ /\D/){
		$cont++;
		$sum += $num;
	}
	else{
		print "Apenas numeros\n";
	}
}

$media = $sum / $cont ;
print "A soma é $sum , soma de $cont numeros\n";
printf("media = %.2f \n" , $media);


