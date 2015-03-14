# This simple class shows off Chocolatey.  It uses
# the ceritsc-chocolatey_sw module to get Chocolatey
# installed.  Then uses the chocolatey provider from the
# rismoney-chocolatey module.

class gms::choco {

  include chocolatey_sw
  Package { require => Class['chocolatey_sw'], }

  package { 'notepadplusplus':
    ensure   => installed,
    provider => 'chocolatey',
  }

}
