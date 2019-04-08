#!/usr/bin/env perl

use strict;
use warnings;

use File::Basename;
use lib dirname($0);

$ENV{'TZ'} = 'UTC';


# add a use line for every test module
use Test::Util::Time;
use Test::Util::Sequence;
use Test::Util::LoadShape::Interval;
use Test::Util::LoadShape::Register;
use Test::Tool::ValidateXML;
use Test::Util::File;
use Test::Util::File::XML;
use Test::Plugins::Export::Config::XML::Program;
use Test::Plugins::Export::Config::XML::Instance;
use Test::Plugins::Export::Config::XML::Entity;
use Test::Plugins::Export::HVBERequest::XML;
use Test::Plugins::Export::Config::Validation;

use Test::Plugins::Export::Readings::XML;
use Test::Plugins::Export::Readings::ASCII;
use Test::Plugins::Export::Readings::MDEF;
use Test::Plugins::Export::Readings::HHF;

# run all the tests
Test::Class->runtests;

