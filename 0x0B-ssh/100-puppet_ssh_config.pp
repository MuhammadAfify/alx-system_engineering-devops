# set up your client SSH configuration file so that you can connect to a server without typing a password.
file { 'Turn off passwd auth':
  ensure => 'present',
  path   => '~/.ssh/school',
  line   => '    PasswordAuthentication no',
  }
