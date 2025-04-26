use strict;
use warnings;
use Cwd;
use File::Spec;
use File::Basename qw(dirname);
use File::Basename qw(basename);


# Get current filename
my $current_filename = basename($0);
print "Filename: $current_filename\n";

# Get current directory
my $current_dir = Cwd::getcwd();
print "Current Directory: $current_dir\n";

# Get root directory
my $root_dir = File::Spec->rootdir();
print "Root Directory: $root_dir\n";

my $script_dir = dirname(Cwd::abs_path($0)); # directory of script
my $parent_dir = dirname($script_dir);  # one level up

print "Current script directory: $script_dir\n";
print "Parent directory: $parent_dir\n";

# Join file paths
my $new_path = File::Spec->catfile($current_dir, 'subdir', 'file.txt');
print "Joined Path: $new_path\n";
