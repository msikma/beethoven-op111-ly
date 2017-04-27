%===========================================================================
%    Piano Sonata Op.111 (L.Beethoven)
%===========================================================================
%
%--- Notes -----------------------------------------------------------------
%
%  * Some hacks are in place in the Arietta section, in part due to the
%    heavy use of implied tuplets.
%
%  * Currently, some macros (e.g. \semprePp) use
%    \tweak DynamicText.X-extent #'(0 . 0) to prevent them from blocking
%    note placement. However, this also means they'll slide right off the
%    edge of the page if they happen to be be placed too far to the right.
%    It would be nice to fix this in a way that doesn't alter the output.
%
%  * The \tied-finger-up macro was created by tisimst on the Lilypond list.
%    <https://lists.gnu.org/archive/html/bug-lilypond/2015-04/msg00078.html>
%    It's a flipped version of \tied-lyric for fingering.
%
%  * I've attempted to silence all warnings that are expected.
%    Search ly:expect-warning for details.
%
%  * Instead of "dim.", I've used "dimin."
%
%  * MIDI output is only for testing and is not particularly accurate.
%
%  * 71: Manually ensuring that the beams face a certain direction.
%    Look for stemLeftBeamCount and stemRightBeamCount.
%
%  * 117: Using stemLeftBeamCount and stemRightBeamCount to make
%    a 32. look like a 64.
%
%  * 151: The dot for the g8 appeared in the wrong place, so I
%    manually bumped it up by overriding Dots.extra-offset.
%
%---------------------------------------------------------------------------
%
%--- Author ----------------------------------------------------------------
%
%    (C) 2016-2017, Michiel Sikma <michiel@sikma.org>
%    Licensed under CC BY-SA 4.0.
%
%---------------------------------------------------------------------------

\include "sonata-op111-headers.ily"
\include "sonata-op111-i.ly"
\include "sonata-op111-ii.ly"
