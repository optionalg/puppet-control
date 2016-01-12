class desktop {
  include userland

  package { "chromium":
    ensure => present,
  }
  package { "gvim":
    ensure => present,
  }
  package { "the_silver_searcher":
    ensure => present,
  }
  package { "xclip":
    ensure => present,
  }
}
