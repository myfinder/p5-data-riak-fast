use inc::Module::Install;
name 'Data-Riak-Fast';
all_from 'lib/Data/Riak/Fast.pm';

requires 'Digest::MD5';
requires 'Furl';
requires 'HTTP::Headers::ActionPack';
requires 'HTTP::Message';
requires 'JSON::XS';
requires 'Mouse';
requires 'Sub::Exporter';
requires 'Try::Tiny';
requires 'URI';
requires 'URL::Encode';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
test_requires 'Test::Fatal';
auto_set_repository;
auto_include;
WriteAll;
