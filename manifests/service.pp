class openerp::service() {
  service { $openerp::params::service_name:
    hasstatus  => false,
    hasrestart => true,
    status     => 'ps -u openerp | grep -q openerp',
    enable     => true,
  }
}
