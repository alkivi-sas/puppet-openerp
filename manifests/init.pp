class openerp (
) {
  # declare all parameterized classes
  class { 'openerp::params': }
  class { 'openerp::install': }
  class { 'openerp::config': }
  class { 'openerp::service': }

  # declare relationships
  Class['openerp::params'] ->
  Class['openerp::install'] ->
  Class['openerp::config'] ->
  Class['openerp::service']
}

