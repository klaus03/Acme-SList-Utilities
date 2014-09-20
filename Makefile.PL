use 5.008;

use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Acme::SList::Utilities',
    VERSION_FROM      => 'lib/Acme/SList/Utilities.pm', # finds $VERSION
    PREREQ_PM         => { 'File::Slurp' => 0 }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Acme/SList/Utilities.pm', # retrieve abstract from module
       AUTHOR         => 'Klaus Eichner <klaus03@gmail.com>') : ()),
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
               type => 'git',
               url  => 'https://github.com/klaus03/Acme-SList-Utilities.git',
               web  => 'https://github.com/klaus03/Acme-SList-Utilities',
           }
        }})
        : ()
    ),
);
