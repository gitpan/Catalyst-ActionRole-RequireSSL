
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Catalyst-ActionRole-RequireSSL',
  NAME      => 'Catalyst::ActionRole::RequireSSL',
  AUTHOR    => 'Simon\ Elliott\ \<cpan\@papercreatures\.com\>',
  ABSTRACT  => 'Force\ an\ action\ to\ be\ \(in\)secure\ only\.',
  VERSION   => '0.02',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Moose::Role" => '0',
  },
  test => {TESTS => 't/*.t'}
);

