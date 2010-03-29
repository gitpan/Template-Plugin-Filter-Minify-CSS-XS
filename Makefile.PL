
use strict;
use warnings;

 BEGIN { require 5.006; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Template::Plugin::Filter::Minify::CSS::XS',
                       'DISTNAME' => 'Template-Plugin-Filter-Minify-CSS-XS',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Michael Schout <mschout@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'CSS::Minifier::XS filter for Template Toolkit',
                       'EXE_FILES' => [],
                       'VERSION' => '0.94',
                       'PREREQ_PM' => {
                                        'Module::Signature' => '0',
                                        'Test::More' => '0',
                                        'Template::Test' => '0',
                                        'CSS::Minifier::XS' => '0',
                                        'Template' => '2.0',
                                        'Socket' => '0',
                                        'Template::Plugin::Filter' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



