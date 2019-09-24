use 5.010;
our $foo = "foo";
our $bar;

say ref *foo{SCALAR}; #scalar
say ${*foo{SCALAR}}; #bar

*bar = *foo;
say $bar; #bar
$bar = 'egg';
say $foo; #egg