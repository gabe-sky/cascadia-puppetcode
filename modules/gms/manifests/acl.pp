# This class demonstrates the use of the puppetlabs-acl
# forge module to manage file acls on windows.

class gms::acl {

  file { 'C:\Temp\acl_me.txt':
    ensure => file,
    content => 'Set acls on me!',
  }

  acl { 'C:\Temp\acl_me.txt':
    permissions => [
     { identity => 'Administrator', rights => ['full'] },
     { identity => 'Users', rights => ['read'] },
     { identity => 'gabe', rights => ['read','write'] },
    ],
    purge => true,
    inherit_parent_permissions => false,
  }

}
