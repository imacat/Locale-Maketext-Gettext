#! /usr/bin/perl -w
require 5.008;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME        => "Locale::Maketext::Gettext",
    VERSION     => "1.31",
    ABSTRACT    => "Joins gettext and Maketext frameworks",
    AUTHOR      => "imacat <imacat\@mail.imacat.idv.tw>",
    PREREQ_PM   => { },
    LICENSE     => "perl",
    SIGN        => 1,
    
    EXE_FILES   => [ "script/maketext" ],
    dist        => {
        COMPRESS    => "gzip -9",
        SUFFIX      => ".gz",
    },
    clean		=> {
        FILES		=> "t/test_native.po t/locale/en/LC_MESSAGES/test_native.mo",
    },
);

__END__
