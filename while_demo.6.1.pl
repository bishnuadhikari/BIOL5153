#! /usr/bin/perl

#set the count variable
print "Enter the count variable";
$count = <>;
chomp $count;

#set the max variable
print "Enter the maximum value";
$max = <>;
chomp $max;

while( $count <= $max ){
  print "$count \n";
  $sum += $count;
  $count ++;  
  }

print "The final count: $count \n";
print "The sum total was: $sum\n";

exit;
