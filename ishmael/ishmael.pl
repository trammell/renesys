#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';

my %words;
my $cvvc = qr/
    [bcdfghjklmnpqrstvwxyz]
    [aeiou]
    [aeiou]
    [bcdfghjklmnpqrstvwxyz]
/ix;

while (<>) {
    s/--+/ /g;
    s/\s+/ /g;               # clean up whitespace
    s/[-!:;?*().,'"]//g;     # clean up punctuation
    my @w = split ' ', lc($_);
    my @cvvc = grep /$cvvc/, @w;
    for (@cvvc) { $words{$_}++ }
}

# standard Schwarzian tranform
my @sorted =
    sort { $b->[0] <=> $a->[0] || $a->[1] cmp $b->[1] }
    map  { [ $words{$_}, $_ ] } keys %words;

my $rank = 0;
for (@sorted) {
    $rank++;
    printf "%4d %4d %s\n", $rank, $_->[0], $_->[1]; # rank, count, word
}
