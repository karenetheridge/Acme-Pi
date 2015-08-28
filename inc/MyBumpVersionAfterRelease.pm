use strict;
use warnings;
package inc::MyBumpVersionAfterRelease;

use Moose;
with 'Dist::Zilla::Role::AfterRelease';
use utf8;
use Path::Tiny 0.061;

sub after_release
{
    my $self = shift;

    # edits dist.ini to add one decimal point to the version

    my $π = atan2(1,1) * 4;
    my $original_version = $self->zilla->version;
    my $length = length($original_version);

    do {} while substr($π, $length++, 1) eq '0';

    my $new_version = substr($π, 0, $length);

    # munge dist.ini to edit version line
    my $path = path('dist.ini');
    my $content = $path->slurp_utf8;

    if ($content =~ s/^(version = )$original_version(\s+)/$1$new_version$2/m)
    {
        # append+truncate to preserve file mode
        $path->append_utf8({ truncate => 1 }, $content);
        return 1;
    }

    return;
}

1;
