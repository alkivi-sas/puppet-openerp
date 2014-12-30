class openerp::params () {
  case $::operatingsystem {
    /(Ubuntu|Debian)/: {
      $package_name   = 'odoo'
      $service_name   = 'odoo'
    }
    default: {
      fail("Module ${module_name} is not supported on ${::operatingsystem}")
    }
  }

  apt::source { 'odoo':
    location    => 'http://nightly.odoo.com/8.0/nightly/deb/',
    repos       => '',
    release     => './',
    include_src => false,
  }
}

