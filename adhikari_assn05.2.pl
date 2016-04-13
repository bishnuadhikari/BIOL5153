#! /usr/bin/perl

# Extracting subsequences

$DNA = 'ATTGGCCCAATCGATCCAAGTACGATCGAATTGCATACGATA';
$start_co = 5;
$end_co = 5;
$feature = forward;

print $DNA, "\n";

#Extracting the start and end cordinate subsequences

$start_co = substr( $DNA, 0, 5);
$end_co = substr( $DNA, 37, 42);
print "The start coordinate: $start_co\n";
print "The end coordinate: $end_co\n";

# New DNA Sequences
$newDNA = $start_co . $end_co;
print "The new DNA: $newDNA\n";

# Calculating the reverse complement
if ($feature = forward)
     {
$revcom = reverse $newDNA;
$revcom =~ tr/ACGT/TGCA/;
     }
print "The reverse compliment of new DNA: $revcom\n";
exit;
