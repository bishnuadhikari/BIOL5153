#! /usr/bin/perl

# Add up some odd numbers
$count = 1;
$sum = 0;
$increment = 10;
$max = 200;
while( $count < $max ){
  print $count, "\n";
  $sum += $count;
  $count += $increment;
}

print "The final count: $count\n";
print "The sum total was: $sum\n";

exit;

