# This class demonstrates using the
# puppetlabs-dism module to enable Windows
# features.

class gms::feature {

  dism { 'IIS-Webserver':
    ensure => present,
    all    => true,
  }
  file { 'C:/inetpub':
    ensure => directory,
  }
  file { 'C:/inetpub/wwwroot':
    ensure => directory,
  }
  file { 'C:/inetpub/wwwroot/index.htm':
    ensure  => file,
    content => "Hello!<br>This is the IIS server on ${::fqdn}.",
  }

}
