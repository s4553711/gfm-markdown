#!/usr/bin/perl
use lib "lib";
use Service::GFM 0.0.1;

my $tool = Service::GFM->new();
my $html = $tool->generate("# This is H1");

print "Result> $html\n";
