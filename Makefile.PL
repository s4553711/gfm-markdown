use 5.010001;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
#
#requires       'LWP::UserAgent' => '0';
#requires       'JSON'           => '0';
#requires       'HTTP::Request'  => '0';

WriteMakefile(
    NAME              => 'NewModule',
    VERSION_FROM      => 'lib/Service/GFM.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Service/GFM.pm', # retrieve abstract from module
       AUTHOR         => 'Chung-Kuei,Lee <s4553711@gmail.com>') : ()),
);
