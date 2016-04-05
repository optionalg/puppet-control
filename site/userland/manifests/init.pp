class userland {
  package { "zsh":
    ensure => present,
  }
  package { "keychain":
    ensure => present,
  }
  package { "weechat-curses":
    ensure => present,
  }
}
