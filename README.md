gfm-markdown
============

A simple tool for accessing gfm service

``` perl
use Service::GFM;
my $tool = Service::GFM->new();
my result = $tool->generate("# H1");
print "$result\n";
```
