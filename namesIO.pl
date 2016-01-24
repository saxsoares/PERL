#!/usr/local/bin/perl -w

$in = '';
$fn = '';
$ln = '';
%mapname = ();

while(defined( $in = <> )){
	chomp( $in );
	($fn, $ln) = split( " ", $in);
	if( $fn eq 'Fernando'){
		next;
	}
	$mapname{ $ln } = $fn;
} continue {
	($fn, $ln) = ('UmNomeMuitoComprido', 'OutroNomeQuenaoQueroEscrever');
	$mapname{ $ln } = $fn;
}

foreach $name (sort keys %mapname){
	print "$name, $mapname{ $name }\n";
}
