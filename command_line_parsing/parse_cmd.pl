#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

# These will default to undef
my $name;
my $age;
my $help;


# Parse options
GetOptions(
    'name=s' => \$name,
    'age=i'  => \$age,
    'help|h'   => \$help,  
) or usage();

usage() if $help;

sub usage {
    print <<"USAGE";
Usage: $0 [options]

    --name STRING    set the user’s name
    --age  INT       set the user’s age
    --help, -h       show this help message
USAGE
    exit;
}

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
