# This little class demonstrates the powershell
# module's provider for the exec type.

class gms::powershell {

  exec { 'rename the guest account':
    command  => '$(Get-WMIObject Win32_UserAccount -Filter "Name=\'guest\'").Rename("uninvited")',
    unless   => 'if (Get-WmiObject Win32_UserAccount -Filter "Name=\'guest\'") { exit 1 }',
    provider => 'powershell',
  }

}
