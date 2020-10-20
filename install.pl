#!/usr/bin/env perl
use strict;
use warnings;

use Path::Tiny;

# get packages to install

my @pkgs = path("./pkg/arch/arch.pkg")->lines_utf8( { chomp => 1 } );

@pkgs = map { s/#.*//r } @pkgs; # remove comments
@pkgs = map { s/\s*//r } @pkgs; # remove whitespace
@pkgs = grep {!/^\s*$/ } @pkgs; # remove empty lines

# install packages

my @pacman = ("pacman", "-S", "--quiet", "--noconfirm", "--needed", @pkgs);

system @pacman
