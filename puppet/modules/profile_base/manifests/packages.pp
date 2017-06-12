# Manage default packages
class profile_base::packages {

  $default_packages = [
    'htop',
    'nano',
  ]

  package { $default_packages:
    ensure => present,
  }

}
