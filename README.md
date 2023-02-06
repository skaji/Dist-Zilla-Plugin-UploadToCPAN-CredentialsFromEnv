[![Actions Status](https://github.com/skaji/Dist-Zilla-Plugin-UploadToCPAN-CredentialsFromEnv/actions/workflows/test.yml/badge.svg)](https://github.com/skaji/Dist-Zilla-Plugin-UploadToCPAN-CredentialsFromEnv/actions)

# NAME

Dist::Zilla::Plugin::UploadToCPAN::CredentialsFromEnv - Get PAUSE credentials from environment variables

# SYNOPSIS

    ❯ cat dist.ini
    ...
    [UploadToCPAN::CredentialsFromEnv]
    ...

    ❯ PAUSE_USERNAME=skaji PAUSE_PASSWORD=xxxxxxxx dzil release

    # if you use 1password
    ❯ env PAUSE_USERNAME=op://Personal/pause/username PAUSE_PASSWORD=op://Personal/pause/password op run -- dzil release

# DESCRIPTION

Dist::Zilla::Plugin::UploadToCPAN::CredentialsFromEnv is a subclass of
[Dist::Zilla::Plugin::UploadToCPAN](https://metacpan.org/pod/Dist%3A%3AZilla%3A%3APlugin%3A%3AUploadToCPAN)
which gets PAUSE credentials from environment variables.

# COPYRIGHT AND LICENSE

Copyright 2023 Shoichi Kaji <skaji@cpan.org>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
