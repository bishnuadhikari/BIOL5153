#!/usr/bin/perl

# conversion of fasta format to phylip format

my $usage = "$0 fasta-file\n"; #path to this script

$ARGV[0] or die $usage;

my $fasta_file = shift @ARGV;
my $header;
my %sequences; 
my $num_species = 0;
my $alignment_length = 0;

#open the fasta file

open( FASTA, $fasta_file ) || die "can't open $fasta_file, duh: $!\n";

while( my $line = <FASTA>){


chomp $line;

# check for FASTA header

if ( $line =~ /\A>(.*)/ ){
$header = $1;

$header =~ s/\s+/_/g; 
$num_species++


}else{ # if not a FASTA header, then it is DNA sequence


$sequences{$header} .= $line;
$length= length $sequences{$header};

if ($alignment_length<$length) 
	{
	$alignment_length=$length;
	} 

}




}
close FASTA;
print "$num_species $alignment_length\n";

foreach my $species ( keys %sequences ){
print $species, "\t", $sequences{$species}, "\n";
}

exit;
