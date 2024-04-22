# set up client SSH config file to connect to server without typing password
file { 'Turn off passwd auth':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
    content => "\
Host *
  SendEnv LANG LC_*
  HashKnownHosts yes
  GSSAPIAuthentication yes
  GSSAPIDelegateCredentials no
  IdentityFile ~/.ssh/school
  PasswordAuthentication no\n",
  }
