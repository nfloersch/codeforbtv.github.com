class saucy-server-cloudimg {

  package { "ruby":
    ensure => "latest",
  }

  package { "bundler":
    provider => "gem",
    require => Package["ruby"],
  }

  exec { "bundle-install":
    cwd => "/vagrant",
    command => "/usr/local/bin/bundle install",
    logoutput => "on_failure",
    require => Package["bundler"],
  }

}

include saucy-server-cloudimg
