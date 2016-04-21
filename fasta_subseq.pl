#! /usr/bin/perl

#set the file name to open
print "Type the filename of the DNA sequence data";
$input_file = <>;
chomp $input_file;

#set the start coordinate
print "Type the start coordinate";
$start_co = <>;
chomp $start_co;

#set the end coordinate
print "Type the end coordinate";
$end_co = <>;
chomp $end_co;

#set the feature of strand
print "Type the feature of strand";
$feature = <>;
chomp $feature;

# open the file
open( FASTA, $input_file ) || die "Can't open $input_file, \!n";

# read in the file
while( $line =  <FASTA> ){

# does the line start with a caret '>' character? if yes, it is the header
if( $line =~ /\A>/){
#do nothing its a sequence

}else{
if ( $feature eq forward ){
# Extracting sub sequences
$length = $end_co - $start_co;
$sub_seq = substr ( $line, $start_co, $length );
}
if ( $feature eq reverse ){
#Extracting sub sequences
$line = reverse $line;
$line =~ tr/ACGTacgt/TGCAtgca/;
$length = $end_co - $start_co;
$sub_seq = substr ( $line, $start_co, $length );
}
# printing extracted subsequencesto STDOUT in FASTA format
print ">$input_file","_$start_co","_$end_co","_$feature","\n";
print "$sub_seq\n";

 }
   }
# close the file
close FASTA;


exit;
