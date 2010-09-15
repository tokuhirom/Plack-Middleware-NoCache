use inc::Module::Install;
name 'Plack-Middleware-NoCache';
all_from 'lib/Plack/Middleware/NoCache.pm';

requires 'Plack' =>  0.9949;

readme_markdown_from 'lib/Plack/Middleware/NoCache.pm';
tests 't/*.t t/*/*.t t/*/*/*.t t/*/*/*/*.t';
test_requires 'Test::More' => 0.96;
author_tests('xt');
WriteAll;
