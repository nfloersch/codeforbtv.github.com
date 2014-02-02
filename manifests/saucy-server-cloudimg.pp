class saucy-server-cloudimg {

  package { "ruby":
    ensure => "latest",
  }

  package { "ruby-dev":
    ensure => "latest",
    require => Package["ruby"],
  }

  package { "bundler":
    provider => "gem",
    require => Package["ruby-dev"],
  }

  exec { "bundle-update":
    cwd => "/vagrant",
    command => "/usr/local/bin/bundle update",
    logoutput => "on_failure",
    require => Package["bundler"],
  }

  file { "/etc/default/locale":
    ensure => file,
    owner => root,
    group => root,
    mode => 0644,
    source => "/vagrant/manifests/etc/default/locale",
    require => Exec["bundle-update"],
  }

  exec { "locale-gen":
    command => "/usr/sbin/locale-gen en_US en_US.UTF-8",
    logoutput => "on_failure",
    require => File["/etc/default/locale"],
  }

}

include saucy-server-cloudimg
