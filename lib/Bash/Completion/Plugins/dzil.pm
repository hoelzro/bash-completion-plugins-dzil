## no critic (RequireUseStrict)
package Bash::Completion::Plugins::dzil;

## use critic (RequireUseStrict)
use strict;
use warnings;
use parent 'Bash::Completion::Plugins::App::Cmd';

use Bash::Completion::Utils qw(command_in_path);

sub should_complete {
    return [ grep { command_in_path($_) } qw(dzil) ];
}

sub command_class { 'Dist::Zilla::App' }

1;

__END__

# ABSTRACT: A short description of Bash::Completion::Plugins::dzil

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 FUNCTIONS

=head1 SEE ALSO

=cut
