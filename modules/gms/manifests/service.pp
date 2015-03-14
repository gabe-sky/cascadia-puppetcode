# This is a simple class to demonstrate service
# management on Windows, through SCM.

class gms::service {

  service { 'SharedAccess':
    ensure => stopped,
    enable => false,
  }

  file { 'C:/license_wrapper.bat':
    ensure => file,
    source => 'puppet:///modules/gms/license_wrapper.bat',
  }
  exec { 'start the license server':
    command => 'C:\Windows\System32\cmd.exe C:\license_wrapper.bat',
    unless  => 'C:\Windows\System32\cmd.exe C:\license_wrapper.bat status',
    require => File['C:/license_wrapper.bat'],
  }

  File {
    source_permissions => ignore,
  }

}
