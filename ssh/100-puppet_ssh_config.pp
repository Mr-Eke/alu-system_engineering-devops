# reconfigure clients config file with puppet

file_line { 'disable_password_auth':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
}

file_line { 'set_identity_file':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/id_rsa_alu',
}
