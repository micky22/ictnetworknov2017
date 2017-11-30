node 'stretch' {
 class { 'ntp':
  servers => [ '2.be.pool.ntp.org', '2.be.pool.ntp.org' ],
 }
}

