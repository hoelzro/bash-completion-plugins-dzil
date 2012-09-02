## no critic (RequireUseStrict)
package Bash::Completion::Plugins::dzil;

## use critic (RequireUseStrict)
use strict;
use warnings;
use parent 'Bash::Completion::Plugins::App::Cmd';

use Bash::Completion::Utils qw(command_in_path);

sub should_activate {
    return [ grep { command_in_path($_) } qw(dzil) ];
}

sub command_class { 'Dist::Zilla::App' }

1;

__END__

# ABSTRACT: Bash::Completion support for Dist::Zilla

=head1 DESCRIPTION

L<Bash::Completion> support for L<Dist::Zilla>.

=head1 SEE ALSO

L<Bash::Completion>, L<Dist::Zilla>

=begin comment

=over

=item should_activate

=item command_class

=back

=end comment

=cut
