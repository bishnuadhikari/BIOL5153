#! /usr/bin/perl



# conversion of phylip format to fasta format

my $usage = "$0 phylip-file\n";
$ARGV[0] or die $usage;


open ( PHY, $ARGV[0] ) || die "Cant open $ARGV[0]: $!\n";


while( $line = <PHY>) {

chomp $line;

if($line =~ /^(.*)\s+(\S+)\s*$/) {

next if(!$line || $line =~ /\d+\s+\d+/);

$name = $1;
$sequence = $2;
$sequence =~ s/\W//g;  #remove all non word character in the sequence like --, ?...
$name =~ s/_/ /g; #replace underscore with white space
$name =~ s/\s+$//;
print ">$name\n$sequence\n";

}

}

close PHY;

exit;
