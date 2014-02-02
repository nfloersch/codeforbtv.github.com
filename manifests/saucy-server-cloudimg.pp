class saucy-server-cloudimg {

  package { "ruby":
    ensure => "latest",
  }

  package { "bundler":
    provider => "gem",
    require => Package["ruby"],
  }

}

include saucy-server-cloudimg
