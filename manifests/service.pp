class openerp::service() {
  service { $openerp::params::service_name:
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
  }
}
