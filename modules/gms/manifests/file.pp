# This class demonstrates how a file resource should
# look on a windows system.

class gms::file {

  File {
    owner => 'Administrator',
    group => 'Administrators',
    source_permissions => ignore,
  }

  file { 'C:/Temp':
    ensure => directory,
  }
  file { 'C:/Temp/gabe.txt':
    ensure => file,
    source => 'puppet:///modules/gms/gabe.txt',
  }

}
