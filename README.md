# PicoHttpParser::XS

[![Build Status](https://travis-ci.com/ChaoticEvil/p5-picohttpparser-xs.svg?branch=master)](https://travis-ci.com/ChaoticEvil/p5-picohttpparser-xs)
[![Coverage Status](https://coveralls.io/repos/github/ChaoticEvil/p5-picohttpparser-xs/badge.svg?branch=master)](https://coveralls.io/github/ChaoticEvil/p5-picohttpparser-xs?branch=master)

PicoHttpParser::XS - perl binding to picohttpparser.

## Changes to HTTP::Parser::XS

* Removed C macros for WIN32 copability
* Removed boilerplate to old p5 versions copability (pport.h)
* Updated picohttpparser code (sync to git master)
* Renamed long names of methods (parse\_http\_request -> parse\_request, parse\_http\_response -> parse\_response)
* Replaced build system (to simple h2xs, instead excess Module::Install)
* Wrote more tests
* Up minimum p5 version (5.8.0 -> 5.24.0)
* C code modified with K&R (1TBS) indententional style
* Enable optimisation compiler flags

## Installation

To manual install this module type the following:

```
$ perl Makefile.PL
$ make
$ make test
$ make install
```

To automatical install this module type the following:

```
$ cpan install PicoHttpParser::XS
```

## Usage

...

## CopyRight and license

Original `picohttpparser` (https://github.com/h2o/picohttpparser) authors:

Copyright (c) 2009-2014 Kazuho Oku, Tokuhiro Matsuno, Daisuke Murase, Shigeo Mitsunari

Original `HTTP::Parser::XS` (https://metacpan.org/pod/HTTP::Parser::XS) authors: Copyright 2009 Kazuho Oku

---

Autohr of this fork (`PicoHttpParser::XS`):

Copyright (c) 2019 by Peter P. Neuromantic <p.brovchenko@protonmail.com>.

For more information see LICENSE file.
