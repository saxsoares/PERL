#!/usr/local/bin/perl


print("Enter the distance in miles:\n");

$distance = <STDIN> ;

chop ($distance);

$miles = $distance * 0.6214;
$kilometers = $distance * 1.609;

print($distance, " kilometers = ", $miles, " miles\n");
print($distance, " miles = ", $kilometers, " kilometers\n");
