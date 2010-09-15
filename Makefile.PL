use inc::Module::Install;
name 'Plack-Middleware-NoCache';
all_from 'lib/Plack/Middleware/NoCache.pm';

# requires '';


readme_markdown_from 'lib/Plack/Middleware/NoCache.pm';
tests 't/*.t t/*/*.t t/*/*/*.t t/*/*/*/*.t';
test_requires 'Test::More';
test_requires 'YAML';
author_tests('xt');
# use_test_base;
auto_include;
WriteAll;
