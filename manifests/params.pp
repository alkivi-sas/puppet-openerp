class openerp::params () {
  case $::operatingsystem {
    /(Ubuntu|Debian)/: {
      $package_name   = 'openerp'
      $service_name   = 'openerp'
    }
    default: {
      fail("Module ${module_name} is not supported on ${::operatingsystem}")
    }
  }

  apt::source { 'openerp':
    location    => 'http://nightly.openerp.com/7.0/nightly/deb/',
    repos       => '',
    release     => './',
    include_src => false,
  }
}

