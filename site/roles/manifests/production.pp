class roles::production {
  include services::sshd
  include fail2ban
}
