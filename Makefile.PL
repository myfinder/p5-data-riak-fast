use strict;
use warnings;

BEGIN {
    my @devmods = qw(
        Module::Install::AuthorTests
        Module::Install::ReadmeFromPod
        Module::Install::Repository
    );
    my @not_available;

    {
        $|=1;
        local *STDOUT;
        eval qq{use inc::Module::Install; 1;} or push @not_available, 'inc::Module::Install';
    }

    for my $mod (@devmods) {
        eval qq{require $mod} or push @not_available, $mod;
    }
    if (@not_available) {
        print qq{# The following modules are not available.\n};
        print qq{# `$^X $0 | cpanm` will install them:\n};
        print $_, "\n" for @not_available;
        print "\n";
        exit -1;
    }
}

use inc::Module::Install;
$Module::Install::AUTHOR = 0 if $ENV{TRAVIS};

name 'Data-Riak-Fast';
all_from 'lib/Data/Riak/Fast.pm';

requires 'Digest::MD5';
requires 'Furl';
requires 'Net::DNS::Lite';
requires 'Cache::LRU';
requires 'HTTP::Headers::ActionPack';
requires 'HTTP::Message';
requires 'JSON::XS';
requires 'Mouse';
requires 'Sub::Exporter';
requires 'Try::Tiny';
requires 'URI';
requires 'URL::Encode';

tests_recursive;
author_tests 'xt';

test_requires 'Test::More';
test_requires 'Test::Fatal';
test_requires 'Test::Memory::Cycle';
auto_set_repository;
auto_include;
WriteAll;
