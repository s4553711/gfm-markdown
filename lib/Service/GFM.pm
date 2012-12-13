#!/usr/bin/perl
package Service::GFM;
use strict;
use warnings;
use utf8;
use LWP::UserAgent 6;
use HTTP::Request;
use JSON qw( decode_json encode_json );
use Data::Dumper;

our $VERSION = "0.0.1";

sub new {
    my ($class,$args) = @_;
    
    my $self = bless {}, $class;

    $self->initial;

    return $self;
}

sub initial {
	my ($self) = @_;

	$self->{ua} = LWP::UserAgent->new(
		ssl_opts => {
			verify_hostname => 0
		},
		timeout	=> 10,
		agent => "libwww-perl/#.###"
	);

	$self->{api_url} = "https://api.github.com/markdown";
}

sub generate {
	my ($self,$text) = @_;

	my $req = HTTP::Request->new( 
		'POST' => $self->{api_url}
	);

	my %arg = ( text => $text );
	$req->content( encode_json(\%arg ) );
	$req->content_type( 'application/json' );

	my $res = $self->{ua}->request( $req );
	return $res->decoded_content;
	
}
