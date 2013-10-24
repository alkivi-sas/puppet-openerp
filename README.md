# OpenERP module

This module will install and configure openerp

## Usage

### Minimal server configuration

```puppet
class { 'openerp': }
```
This will do the typical install using source as providing by openerp repository
All you need to do is connect to localhost on the default port and proceed to default loading of database

### Database ?
Database and role for postgresql are not created but here is an helper using puppetlabs-postgresql module

```puppet
postgresql::server::role { 'openerp':
  password_hash => postgresql_password('openerp', alkivi_password('openerp', 'db')),
  createdb      => true,
}
```

## Limitations

* This module has been tested on Debian Wheezy, Squeeze.

## License

All the code is freely distributable under the terms of the LGPLv3 license.

## Contact

Need help ? contact@alkivi.fr

## Support

Please log tickets and issues at our [Github](https://github.com/alkivi-sas/)
