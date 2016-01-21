class manjaro::desktop {
  package { "gnome-terminal":
    ensure => present,
  }
  package { "the_silver_searcher":
    ensure => present,
  }
  package { "xclip":
    ensure => present,
  }
  package { "chromium":
    ensure => present,
  }
}
