use strict;
use warnings;
package Acme::Pi;
# ABSTRACT: Mmm, pie
# vim: set ts=8 sts=4 sw=4 tw=78 et :

use utf8;
# KEYWORDS: pi π

my $version = atan2(1,1) * 4; $Acme::Pi::VERSION = "$version";
1;
__END__

=pod

=head1 SYNOPSIS

    use Acme::Pi;
    my $pi = Acme::Pi->VERSION;

=head1 DESCRIPTION

This distribution was created to celebrate L<Pi Day|http://www.piday.org/>,
as well as to demonstrate yet another example of a pathological C<$VERSION>.
It defines its version as:

    atan2(1,1) * 4;

=head1 SUPPORT

=for stopwords irc

Bugs may be submitted through L<the RT bug tracker|https://rt.cpan.org/Public/Dist/Display.html?Name=Acme-Pi>
(or L<bug-Acme-Pi@rt.cpan.org|mailto:bug-Acme-Pi@rt.cpan.org>).
I am also usually active on irc, as 'ether' at C<irc.perl.org>.

=head1 ACKNOWLEDGEMENTS

=for stopwords QA Hackathon

This module was brought to you by the
L<2014 QA Hackathon in Lyon|http://act.qa-hackathon.org/qa2014>, as well as
the number L<π|http://en.wikipedia.org/wiki/Pi>.

=head1 SEE ALSO

=for :list
* L<David Golden: Real $VERSIONs on CPAN|http://www.dagolden.com/index.php/2191/real-versions-on-cpan/>
* L<David Golden: version numbers should be boring|http://www.dagolden.com/index.php/369/version-numbers-should-be-boring/>
* L<Dinosaur comics on Pi Day|http://www.qwantz.com/index.php?comic=955>
* L<Usage of pi in TeX versions|http://en.wikipedia.org/wiki/TeX#History>

=cut
