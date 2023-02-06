package Dist::Zilla::Plugin::UploadToCPAN::CredentialsFromEnv v0.0.1;
use v5.36;
use Moose;
use namespace::autoclean;

extends 'Dist::Zilla::Plugin::UploadToCPAN';

has '+username' => (
    default => sub ($self, @) {
        $ENV{PAUSE_USERNAME} || $self->SUPER::username;
    },
);

has '+password' => (
    default => sub ($self, @) {
        $ENV{PAUSE_PASSWORD} || $self->SUPER::password;
    },
);

__PACKAGE__->meta->make_immutable;
__END__

=encoding utf-8

=head1 NAME

Dist::Zilla::Plugin::UploadToCPAN::CredentialsFromEnv - Get PAUSE credentials from environment variables

=head1 SYNOPSIS

  ❯ cat dist.ini
  ...
  [UploadToCPAN::CredentialsFromEnv]
  ...

  ❯ PAUSE_USERNAME=skaji PAUSE_PASSWORD=xxxxxxxx dzil release

  # if you use 1password
  ❯ env PAUSE_USERNAME=op://Personal/pause/username PAUSE_PASSWORD=op://Personal/pause/password op run -- dzil release

=head1 DESCRIPTION

Dist::Zilla::Plugin::UploadToCPAN::CredentialsFromEnv is a subclass of
L<Dist::Zilla::Plugin::UploadToCPAN>
which gets PAUSE credentials from environment variables.

=head1 COPYRIGHT AND LICENSE

Copyright 2023 Shoichi Kaji <skaji@cpan.org>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
