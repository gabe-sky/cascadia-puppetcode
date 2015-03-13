# This is a simple class to demonstrate how users and groups
# work on a Windows system.

class gms::users {

  user { 'gabe':
    ensure   => present,
    comment  => 'Gabriel M Schuyler',
    groups   => ['Administrators','Users'],
    password => 'MyPassword6',
  }

  group { 'gonzo':
    ensure  => present,
    members => ['gabe'],
    require => User['gabe'],
  }

}
