package PicoHttpParser::XS;

use 5.024000;
use strict;
use warnings;

use parent 'Exporter';
our %EXPORT_TAGS = ( 'all' => [ qw(
    parse_request
    parse_response
    HEADERS_NONE
    HEADERS_AS_HASHREF
    HEADERS_AS_ARRAYREF
) ] );
our @EXPORT_OK   = ( @{ $EXPORT_TAGS{'all'} } );

our $VERSION = '0.1.0';

# header format for parse_http_response()
use constant {
     # don't parse headers. It's fastest. if you want only special headers, also fastest.
    HEADERS_NONE        => 0,
    # HTTP::Headers compatible HashRef, { header_name => "header_value" or ["val1", "val2"] }
    HEADERS_AS_HASHREF  => 1,
    # Ordered ArrayRef : [ name, value, name2, value2 ... ]
    HEADERS_AS_ARRAYREF => 2,
};

require XSLoader;
XSLoader::load('PicoHttpParser::XS', $VERSION);

1;

__END__

=encoding UTF-8

=head1 NAME

PicoHttpParser::XS - ...

=head1 DESCRIPTION

PicoHttpParser::XS - ...

=head1 AUTHOR

Peter P. Neuromantic <p.brovchenko@protonmail.com>

=head1 SYNOPSIS

  use PicoHttpParser::XS qw(parse_response HEADERS_AS_HASHREF);

  my ($ret, $minor_version, $status, $msg, $headers) = parse_response($http_buf, HEADERS_AS_HASHREF);

=head1 FUNCTIONS

=head2 parse_request($;$)

...

=cut

=head2 parse_response($;$)

...

=over 20

=item $_[0]->{width}  - destination width

=item $_[0]->{height} - destination height

=item $_[0]->{src}    - path to the source image

=item $_[0]->{dst}    - path to the destionation result image

=back

=head1 LICENSE AND COPYRIGHT

BSD 3-Clause License

Copyright (c) 2018-2020 Peter P. Neuromantic E<lt>p.brovchenko@protonmail.comE<gt>
All rights reserved.

See LICENSE file for more information.

=cut
