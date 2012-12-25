use inc::Module::Install;
name 'Data-Riak-Fast';
all_from 'lib/Data/Riak/Fast.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
