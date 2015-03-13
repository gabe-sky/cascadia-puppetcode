# This class shows the two ways you typically end up
# installing packages on Windows systems.

class gms::package {

  package { 'Minecraft':
    ensure => installed,
    source => 'C:/MinecraftInstaller.msi',
  }

  exec { 'install sublime text 3':
    command => '"C:\Sublime Text Build 3065 x64 Setup.exe" /SILENT /NORESTART',
    creates => 'C:/Program Files/Sublime Text 3/sublime_text.exe',
  }

}
