class desktop {
  package { "chromium":
    ensure => present,
  }
  package { "zsh":
    ensure => present,
  }
  package { "gvim":
    ensure => present,
  }
  package { "the_silver_searcher":
    ensure => present,
  }
}
