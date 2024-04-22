# set up client SSH config file to connect to server without typing password
file { 'Turn off passwd auth':
  ensure => 'present',
  path   => '~/.ssh/school',
  line   => '    PasswordAuthentication no',
  }
