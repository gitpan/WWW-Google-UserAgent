use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'WWW::Google::UserAgent',
    AUTHOR             => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    VERSION_FROM       => 'lib/WWW/Google/UserAgent.pm',
    ABSTRACT_FROM      => 'lib/WWW/Google/UserAgent.pm',
    LICENSE            => 'artistic_2',
    PL_FILES           => {},
    MIN_PERL_VERSION   => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'HTTP::Tiny'       => 0,
        'Moo'              => 0,
        'Throwable'        => 0,
        'namespace::clean' => 0,
    },
    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources   => {
            repository => {
                type => 'git',
                url  => 'https://github.com/Manwar/WWW-Google-UserAgent.git',
                web  => 'https://github.com/Manwar/WWW-Google-UserAgent',
            },
        },
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'WWW-Google-UserAgent-*' },
);
