class profile::bind {
 class { 'bind':
    forwarders => [
        '8.8.8.8',
        '8.8.4.4',
    ],
    dnssec => true,
    version => 'Controlled by Puppet',
 }
bind::acl { 'rfc1918':
    addresses => ['10.0.0.0/8',
        '172.16.0.0/12',
        '192.168.0.0/16',
    ]
 }
bind::key { 'local-update':
    secret => '012345678901345678901234567890123456789=',
    owner => 'root',
    group => 'bind',
 }
bind::zone { 'example.org':
    zone_type => 'master',
 }
resource_record { 'www.example.com address':
    ensure => present,
    record => 'www.example.com',
    type => 'A',
    data => [ '172.16.32.10', ],
    ttl => 86400,
    zone => 'example.com',
 }
}
