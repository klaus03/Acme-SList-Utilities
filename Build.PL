use strict;
use warnings;
use 5.008;

use Module::Build;

Module::Build->new(
  module_name        => 'Acme::SList::Utilities',
  license            => 'perl',
  configure_requires => { 'Module::Build' => 0.30 },
  requires           => { },
  dist_abstract      => 'Various utilitiy-functions for the SList suite of programs',
)->create_build_script;
