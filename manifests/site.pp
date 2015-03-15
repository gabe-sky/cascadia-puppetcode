# Node definition for my Windows demo machine.
#
# All of the include statements start out commented, and you uncomment them
# one at a time as you go through the slides, to show how things work.
#
# Swap in the name of your own Windows machine that you'll demo on.

node 'robin.puppetlabs.vm' {

  #include gms::users
  #include gms::file
  #include gms::package
  #include gms::service

  #include gms::registry    # uses puppetlabs-registry
  #include gms::feature     # uses puppetlabs-dism
  #include gms::powershell  # uses puppetlabs-powershell
  #include gms::acl         # uses puppetlabs-acl

  #include gms::choco       # uses ceritsc-chocolatey_sw
                           # and rismoney-chocolatey
}


# Default node definition.  Does nothing except complain.
node default {
  notify { "I don't see a node definition in site.pp for ${::fqdn}.": }
}
