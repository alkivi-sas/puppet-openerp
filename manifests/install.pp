class openerp::install () {
  package { $openerp::params::package_name:
    ensure       => installed,
  }
}
