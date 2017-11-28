class profile::dnssrv { 
 class { 'bind':
    forwarders => [
        '8.8.8.8',
        '8.8.4.4',
    ],
    dnssec => true,
    version => 'Controlled by Puppet',
 }
}
