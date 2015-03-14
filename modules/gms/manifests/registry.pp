# This simple class uses the puppetlabs-registry
# forge module to set some registry values.

class gms::registry {

  registry::value { 'Disable IE ESC for Administrators':
    key    => 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}',
    value  => 'IsInstalled',
    type   => dword,
    data   => '0',
  }

  registry::value { 'Enable IE ESC for Users':
    key    => 'hklm\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}',
    value  => 'IsInstalled',
    type   => dword,
    data   => '0',
  }

}
