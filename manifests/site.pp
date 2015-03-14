
node 'robin.puppetlabs.vm' {

  include gms::users
  include gms::file
  include gms::package
  include gms::service

  include gms::registry  # uses puppetlabs-registry

}
