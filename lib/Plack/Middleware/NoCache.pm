package Plack::Middleware::NoCache;
use strict;
use warnings;
use 5.00800;
our $VERSION = '0.01';
use parent qw/Plack::Middleware/;

sub call {
    my ( $self, $env ) = @_;

    my $res = $self->app->($env);
    push @{$res->[1]}, 'Cache-Control' => 'no-cache', 'Pragma' => 'no-cache';

    return $res;
}

1;
__END__

=encoding utf8

=head1 NAME

Plack::Middleware::NoCache - add no-cache header to HTTP response

=head1 SYNOPSIS

    enable 'Plack::Middleware::NoCache';

=head1 DESCRIPTION

Plack::Middleware::NoCache adds "Cache-Control: no-cache" and "Pragma: no-cache" header to HTTP response.

=head1 AUTHOR

Tokuhiro Matsuno E<lt>tokuhirom AAJKLFJEF GMAIL COME<gt>

=head1 SEE ALSO

L<Sledge::Plugin::NoCache>

=head1 LICENSE

Copyright (C) Tokuhiro Matsuno

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
