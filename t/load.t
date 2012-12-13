#!/usr/bin/perl
use warnings;
use strict;
use Test::More;

use_ok( $_ ) for qw( LWP::UserAgent JSON Service::GFM );

done_testing;
