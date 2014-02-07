use strict;
use warnings;
use ExtUtils::MakeMaker;

my $pm = 'lib/Data/MATFile.pm';
my $pod = 'lib/Data/MATFile.pod';
my $repo = 'https://github.com/benkasminbullock/Data-MATFile';

WriteMakefile (
    NAME => 'Data::MATFile',
    VERSION_FROM => $pm,
    ABSTRACT_FROM => $pod,
    AUTHOR => 'Ben Bullock <bkb@cpan.org>',
    LICENSE => 'perl',
    PREREQ_PM => {
	# This is needed for MAT-Files which are compressed.
	'IO::Uncompress::Gunzip' => 0,
    },
    META_MERGE => {
        resources => {
            repository => $repo,
            bugtracker => "$repo/issues",
        },
    },
    EXE_FILES => [
        "script/mat2json",
    ],
    MIN_PERL_VERSION => '5.008001',
);
