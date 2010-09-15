use strict;
use warnings;
use Plack::Test;
use Test::More;
use Plack::Builder;

test_psgi(
    app => builder {
        enable 'NoCache';
        sub {
            [
                200, [ 'Content-Length' => 2, 'Content-Type' => 'text/plain' ],
                ['OK']
            ];
          }
    },
    client => sub {
        my $cb  = shift;
        my $req = HTTP::Request->new( GET => 'http://localhost/' );
        my $res = $cb->($req);
        is $res->content, 'OK';
        is $res->header('Pragma'),        'no-cache';
        is $res->header('Cache-Control'), 'no-cache';
    }
);

done_testing;

