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

  exec { "bundle-install":
    cwd => "/vagrant",
    command => "/usr/local/bin/bundle install",
    logoutput => "on_failure",
    require => Package["bundler"],
  }

}

include saucy-server-cloudimg
