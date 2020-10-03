#!/usr/bin/perl -w
sub slurp {
    open F,"<",shift;
    binmode F;
    $r = do { local $/; <F>; };
    close F;
    return $r;
};
$x = slurp shift;
$y = slurp shift;
use List::Util qw(min);
vec($z, $_, 8) = vec($x, $_, 8) ^ vec($y, $_, 8) for (0 .. min(length $x, length $y) - 1);
print $z;



