
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Catalyst::ActionRole::RequireSSL',
                       'DISTNAME' => 'Catalyst-ActionRole-RequireSSL',
                       'AUTHOR' => 'Simon Elliott <cpan@papercreatures.com>',
                       'ABSTRACT' => 'Force an action to be (in)secure only.',
                       'EXE_FILES' => [],
                       'VERSION' => '0.05',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'Moose::Role' => '0',
                                        'parent' => '0',
                                        'namespace::autoclean' => '0',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'Catalyst::Runtime' => '5.8',
                                        'Catalyst::Controller::ActionRole' => '0',
                                        'Catalyst::Test' => '0',
                                        'Catalyst::Action::RenderView' => '0'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



