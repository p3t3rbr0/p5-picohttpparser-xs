use 5.024000;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'PicoHttpParser::XS',
    ABSTRACT_FROM     => 'lib/PicoHttpParser/XS.pm',
    VERSION_FROM      => 'lib/PicoHttpParser/XS.pm',
    MIN_PERL_VERSION  => '5.24.0',
    PREREQ_PM         => {'XSLoader' => 0,},
    AUTHOR            => 'Peter P. Neuromantic <p.brovchenko@protonmail.com>',
    LICENSE           => 'perl',
    LIBS              => [''],
    DEFINE            => '',
    INC               => '-Isrc',
    OBJECT            => '$(O_FILES)',
    CCFLAGS           => '-Wall -Wextra -std=c11',
    OPTIMIZE          => '-O3 -march=native -pipe -fPIC',
    META_MERGE        => {
        'meta-spec' => {
            version => 2
        },
        resources   => {
            bugtracker => {
                web => 'https://github.com/ChaoticEvil/p5-picohttpparser-xs/issues'
            },
            repository => {
                type => 'git',
                url  => 'https://github.com/ChaoticEvil/p5-picohttpparser-xs.git',
                web  => 'https://github.com/ChaoticEvil/p5-picohttpparser-xs',
            },
        },
    },
);
