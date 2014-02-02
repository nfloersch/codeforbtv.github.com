class saucy-server-cloudimg {

  package { "ruby":
    ensure => "latest",
  }

}

include saucy-server-cloudimg
