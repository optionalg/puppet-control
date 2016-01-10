class services::bastion {
  include userland
  include users::root
  include users::adrien
  include users::ken
}
