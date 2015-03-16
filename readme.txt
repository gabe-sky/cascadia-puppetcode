Overview

This repository holds the code and materials I used to present a talk at Cascadia IT Summit in March of 2015.

In the slides/ directory, you will find a PDF of the slides I used in the presentation.

In the manifests/site.pp file you'll find a node definition for a Windows machine named "robin.puppetlabs.vm."  This is the machine on which I demoed my code.  Update the node name to match whatever you're going to test on.

Also, the node definition starts out with all of the include statements commented out.  They're intended to be uncommented one at a time as you go through the slides.  Show the slide, uncomment the include, do a puppet agent run on the Windows machine.

--
Windows Demo Machine Setup:

In order to have a smooth time on your Windows demo machine, you'll want to prepare a few things before you even start.

Install a Puppet Agent and aim it at the master.  You'll likely need to add an entry for the master in your C:\Windows\System32\drivers\etc\hosts file.  Do a run and make sure it can connect and apply a catalog.

Disable the Windows machine's Puppet Agent so that it doesn't run in the background and trip you up.

  `puppet resource service puppet ensure=stopped enable=false`

If you're going to do a demo of Geppetto or Minecraft, you're going to want to have java installed before you get to the demo ... because you don't want to wait for that sucker while people are watching you.

  http://java.sun.com/

The gms::package class needs to be able to find the installers for Minecraft and Sublime Text available right up in the root of the C: drive.  Download them and have them available like this:

    C:\MinecraftInstaller.msi
    C:\Sublime Text Build 3065 x64 Setup.exe

--
Puppet Master Demo Machine Setup:

You should be able to clone this repository right into your module path and have it start classifying your demo machine using the provided code.  That would go something like this:

  cd /etc/puppet/environments/
  mv production production.moved
  git clone https://github.com/fnaard/cascadia-puppetcode production

Edit the site.pp file so that the node definition refers to your Windows demo machine's name.

  node 'robin.puppetlabs.vm' {     # <--- swap in your fqdn

The examples rely on several forge modules.  These are listed in the manifests/site.pp file next to the includes that need them.  Here are the commands you'll need to run on the Master to install them:

   `puppet module install puppetlabs-registry
    puppet module install puppetlabs-dism
    puppet module install puppetlabs-powershell
    puppet module install puppetlabs-acl
    puppet module install ceritsc-chocolatey_sw
    puppet module install rismoney-chocolatey`

You should be all set to start doing the Windows demos.  Before you start, make sure you can do a `puppet agent -t` on the Windows machine.
