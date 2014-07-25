use 5.006;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'WWW::Google::UserAgent',
    license             => 'artistic_2',
    dist_author         => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    dist_version_from   => 'lib/WWW/Google/UserAgent.pm',
    release_status      => 'stable',
    configure_requires  => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'HTTP::Tiny'       => 0,
        'Moo'              => 0,
        'Throwable'        => 0,
        'namespace::clean' => 0,
    },
    add_to_cleanup     => [ 'WWW-Google-UserAgent-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
