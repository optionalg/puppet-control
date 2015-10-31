class roles::production {
  include services::sshd
  include services::sudo
  include fail2ban
}
