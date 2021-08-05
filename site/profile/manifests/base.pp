class profile::user {
  user {'admin':
    ensure => present,
  }
}
