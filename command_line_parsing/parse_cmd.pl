#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

# These will default to undef
my $name;
my $age;

# Parse options
GetOptions(
    'name=s' => \$name,
    'age=i'  => \$age,
) or die "Usage: $0 [--name STRING] [--age INT]\n";

# Optional behavior
if (defined $name) {
    print "Name: $name\n";
} else {
    print "Name not provided\n";
}

if (defined $age) {
    print "Age: $age\n";
} else {
    print "Age not provided\n";
}
