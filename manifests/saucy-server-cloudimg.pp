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
    ensure => "latest",
    require => Package["ruby-dev"],
  }

  exec { "bundle-update":
    cwd => "/vagrant",
    user => "vagrant",
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

  exec { "jekyll-serve":
    cwd => "/vagrant",
    user => "vagrant",
    command => "/usr/local/bin/bundle exec jekyll serve --detach",
    logoutput => "on_failure",
    require => Exec["locale-gen"],
  }

  package { "npm":
    ensure => "latest",
  }

  exec { "npm-install":
    cwd => "/vagrant",
    user => "vagrant",
    command => "/usr/bin/npm install --no-bin-link",
    logoutput => "on_failure",
    require => Package["npm"],
  }

  file { "/usr/bin/node":
    ensure => "link",
    target => "/usr/bin/nodejs",
    require => Package["npm"],
  }

  package { "git":
    ensure => "latest",
  }

}

include saucy-server-cloudimg
