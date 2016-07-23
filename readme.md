Piano Sonata Op.111 (L.Beethoven)
---------------------------------

A transcription of Beethoven's 32nd piano sonata (Op.111) in Lilypond format.

Feel free to open an issue if you have suggestions for improvements.

Notes
-----

u = upper staff; l = lower staff; M = measure(s)

For this transcription, two manuscripts were consulted: the [original holograph manuscript](http://imslp.org/wiki/Special:ReverseLookup/396221) from January 1822, and the [fair copy](http://imslp.org/wiki/Special:ReverseLookup/12722) made later that year for the Schlesinger edition.

**1st movement**

* 64 u: No ***sf*** is present in the manuscript, but the analogous passage in M 142 does have one. For consistency, a parenthesized ***sf*** was added.
* 84 u/l: Beethoven's manuscript crosses the right hand over into the bottom staff. We kept them separate.
* 133 u: No ***ff***; parenthesized as per M 55.

**2nd movement**

* 1 l: Fingering only applies to the repetition.
* 30 u: The manuscripts appear to be in conflict; the original ends the slur on the first *b/e*, and the Schlesinger version ends it on the *b* just after. Here we utilize the latter.
* 39 l: The first of many implicit tuplets to follow.
* 117 u: The first of the two tied notes actually has a duration of a dotted 32nd note—otherwise the bar duration does not add up. As per the manuscript, it's written as a 64th note.

### Source notes

* Some hacks are in place in the *Arietta* section, in part due to the heavy use of implied tuplets.
* Currently, some macros (e.g. `\semprePp`) use `\tweak DynamicText.X-extent #'(0 . 0)` to prevent them from blocking note placement. However, this also means they'll slide right off the edge of the page if they happen to be be placed too far to the right. It would be nice to fix this in a way that doesn't alter the output.
* The `\tied-finger-up` macro was created by [tisimst on the Lilypond mailing list](https://lists.gnu.org/archive/html/bug-lilypond/2015-04/msg00078.html). It's a flipped version of `\tied-lyric` for fingering.
* 71: Manually ensuring that the beams face a certain direction. Look for `stemLeftBeamCount` and `stemRightBeamCount`.
* 117: Using `stemLeftBeamCount` and `stemRightBeamCount` to make a `32.` look like a `64`.
* 151: The dot for the `g8` appeared in the wrong place, so we manually bumped it up by overriding `Dots.extra-offset`.

Copyright
---------

© 2016, Michiel Sikma <michiel@sikma.org>

Licensed under CC BY-SA 4.0.

Original work by L.Beethoven, published in 1822—copyright expired.
