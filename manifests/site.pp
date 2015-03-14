
node 'robin.puppetlabs.vm' {

  include gms::users
  include gms::file
  include gms::package
  include gms::service

  include gms::registry    # uses puppetlabs-registry
  include gms::feature     # uses puppetlabs-dism
  include gms::powershell  # uses puppetlabs-powershell
  include gms::acl         # uses puppetlabs-acl

  include gms::choco       # uses ceritsc-chocolatey_sw
                           # and rismoney-chocolatey
}
