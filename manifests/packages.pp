class postfix::packages {
  assert_private()

  package { $postfix::postfix_package:
    ensure => $postfix::postfix_ensure,
  }

  if ($postfix::manage_mailx) {
    package { 'mailx':
      ensure => $postfix::mailx_ensure,
      name   => $postfix::params::mailx_package,
    }
  }
}
