class ss_osquery::install inherits ::ss_osquery {

    ensure_packages(['apt-transport-https', 'lsb-release', 'ca-certificates'], {'ensure' => 'present'})

    # we insert the key directly https://keyserver.ubuntu.com/pks/lookup?search=osquery&fingerprint=on&op=index
    # (result is the one with the id 149812..) instead of fetching it over http because we dont need to configure a
    # http proxy (CWP) or deal with changes to newer versions of apt-key that requires very new version of the
    # puppetlabs-apt library.
    apt::key { 'osquery':
            id      => '1484120AC4E9F8A1A577AEEE97A80C63C9D8B80B',
            content  => '-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=9I11
-----END PGP PUBLIC KEY BLOCK-----'
        }

    apt::source { 'osquery':
        location    => 'https://pkg.osquery.io/deb',
        release     => 'deb',
        repos       => 'main',
        require     => [
            Apt::Key['osquery'],
            Package['apt-transport-https', 'lsb-release', 'ca-certificates']
        ],
    }
    -> package { 'osquery':
        ensure  => "present",
        require => Class['::apt::update']
    }
}
