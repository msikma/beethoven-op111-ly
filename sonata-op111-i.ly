%===========================================================================
%    Piano Sonata Op.111 (L.Beethoven) - I
%===========================================================================
%
%    (C) 2016-2017, Michiel Sikma <michiel@sikma.org>
%    Licensed under CC BY-SA 4.0.
%
%---------------------------------------------------------------------------

\include "sonata-op111-headers.ily"

%---------------------------------------------------------------------------
%    I. Maestoso
%---------------------------------------------------------------------------

one-section-one = {
  \key c \minor
  \time 4/4
  \partial 32
  \tempo "Maestoso"
}
one-section-two = {
  \key f \minor
}
one-section-three = {
  \key g \minor
}
one-section-four = {
  \key c \minor
}

\bookpart {
  \paper {
    markup-system-spacing = \std-padding-page-one
    bookTitleMarkup = \std-title-markup-page-one
  }
  \include "includes/header.ily"
  \score {
    \new PianoStaff \with {
      \std-staff-spacing
    } <<
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "right" \with {
        \std-magnification
        \stdDynSize
        midiInstrument = "acoustic grand"
      } {
        \clef treble \relative c' {
          \one-section-one
          \relative c'' { b32\rest } |
          <<
            \relative c' {
              \relative c'' { b8\rest b16.\rest }
              <ef a c ef>32\f <ef_~ a_~ c^~ ef^~>4\sf <ef a c ef>8..-[ <a c>32] c8.-[\trill\sf\> b32 c32]\!
            }
            \\
            \relative c' {
              s2 s4 a'4
            }
          >> |
          <<
            \relative c'' {
              b8\p \relative c'' { b8\rest } <ef, g c>8 \relative c'' { b8\rest }
              \grace {
                s16.\cresc s64 d64-[ g b!]
              }
              <d, g d'>8\!\f \relative c'' { b8\rest b4\rest }
            }
            \\
            \relative c'' {
              g8
            }
          >> |
          \break
          <<
            \relative c'' {
              \relative c'' { b8\rest b16.\rest }
              \stemDown
              \shortestNoteDuration 32
              <af d f af>32\f 
              \shortestNoteDuration 16
              <af_~ d_~ f^~ af^~>4\sf <af d f af>8.. <d f>32 \stemUp f8.\trill\sf\> e32 f\!
            }
            \\
            \relative c'' {
              s2 s4 d4
            }
          >> |
          <g' e'>8\p \relative c'' { b8\rest } <f c' f>8 \relative c'' { b8\rest }
          \grace {
            s16.\cresc e64-[ g c e!]
          }
          <g, c g'>8\!\f \relative c'' { b8\rest b4\rest } |
          <<
            \relative c'' {
              \relative c'' {
                b8\rest 
                \shortestNoteDuration 32
                b16.\rest
              }
              \stemDown
              <df f bf df>32\f
              \shortestNoteDuration 16
              <df_~ f_~ bf^~ df^~>4\sf <df f bf df>8.. <df bf'>32 \stemUp bf'8.\trill\sf\> a32 bf\!
            }
            \\
            \relative c'' {
              s2 s4 df4
            }
          >> |
          \break
          <df' ef! bf'>8.. <df ef bf'>32 <df_~ ef^~ bf'^~>4 <df ef bf'>8.. <c ef af>32 <c ef af>8.. <c ef gf>32 |
          <c ef gf>8.. <bf ef gf>32 <bf_~ ef^~ gf^~>4 <bf ef gf>8.. <a ef' gf>32 <a ef' gf>8.. <a ef' gf>32 |
          <a ef' gf>8.. <af df f>32 <af_~ df^~ f^~>4 <af df f>8.. <af cf f>32 <af cf f>8.. <af cf f>32 |
          <af cf f>8.. <af c ef>32 <af_~ c^~ ef^~>4 <af c ef>8.. <af c ef>32 <af c ef>8.. <g bf df>32 |
          <g bf df>8.. <f bf df>32 <f bf df>8.. <e bf' df>32 <e bf' df>8-. <c f c'>8-. <c f c'>8-. <c fs c'>8-. |
          <d g bf>\sf \relative c'' { b8\rest b4\rest b4\rest }
          <<
            \relative c'' {
              \once \override Slur.height-limit = #5
              g4^(\p |
              a b c) c8..^( b32) |
              <d, g b>4. \relative c'' { b8\rest b4\rest } \clef bass
              \once \override Slur.height-limit = #5
              g,4^(\p |
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (9.5)))
              a4 b c) c8.. b32 |
              \stemNeutral
              <d, g b>2 <d g b>4.. <d g b>16 |
              <d g b>1
            }
            \\
            \relative c' {
              b8\rest c8 |
              <c fs>4 <d f> <ef g> <ef a>8.. <d g>32 |
              s2. \relative c { b8\rest } c,8 |
              <c fs>4 <d f> <ef g> <ef a>8.. <d f>32 |
              s1 |
              s1
            }
          >> \clef treble |
          % Bring these staffs closer together.
          \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
            #'((alignment-distances . (7.3)))
          \tempo "Allegro con brio ed appassionato"
          <b d>1 |
          g'16^[
          \change Staff = "left"
          af,, g af ]
          \repeat unfold 4 { g af }
          g af g a32 b |
          \repeat volta 2 {
            s1 |
            \voiceOne
            c4^. ef4^. b4.^\fermata^\sf
            \tuplet 3/2 { g16-[ a b] } |
            c4^. ef4^. b4.^\sf af'!8^. |
            g8-. f-. ef-. d-. ef16 f ef d c8 af'-.-(^\mezzoP-pocoRitenente |
            g8-. f-. ef-. d-.) ef16 f ef d c^\cresc^\markup { \center-column { \italic "a tempo" " " } } af' bf af |
            \revert DynamicTextSpanner.font-size
            g af g f ef f ef d ef f ef d c g' f ef |
            f g f ef d af' g f g af g f e bf' af g |
            af c g c f, c' fs, c'
            b\!^\sf a g
            \change Staff = "right"
            \stemNeutral
            d' c16\sf b f' ef |
            d\sf af'! g f d'\sf c b f' ef\sf d af' g f\sf d' c b |
            f'\sf\> ef d af' g f ef d c b af g f ef d g\! |
            <<
              \relative c'' {
                c4-. ef-. b4. af'8 |
                g f ef d ef16 f ef d c8^\markup { \italic "poco ritenente" } af'8-.^( |
                g-. f-. ef-. d-.) ef16 f ef d c8\noBeam af''8^\markup { \italic "a tempo" }^( |
                g8 f ef d) ef^( d c b) |
                c^( bf! af g) af^( f ef d) |
                d8^(\> c) c2\!\p\<^\pocoRitenente-espressivo c4 |
                \once \override Slur.height-limit = #5
                c4\!\>\trill^( \grace { b16 c } ef8 d)\! c4^\markup { \italic "a tempo" } d4\rest |
              }
              \\
              \relative c' {
                <ef g>8\p <ef g> <ef g> <ef g> <f g> <f g> <f g> <f g> |
                <f g> <f g> <f g> <f g> g8\rest g8\rest g8 g |
                g8 <g b> <g c> g g8\rest g8~g8\noBeam
                % Hide the warning. Not sure why it's appearing.
                #(ly:expect-warning "Impossible or ambiguous (de)crescendo in MIDI.")
                f''16-[\cresc af,] |
                ef' g, d' g, c g d' <f, g> ef' g, d' g, c g b g |
                g16 c, g' c, af' c, g' c, af'\!\rfz c, f c ef c d c |
                f,4 fs( g) a |
                g g c,-.\f ef-. |
              }
            >>
            \stemUp
            b,,4\sf_~ b16 d f af g af g f ef f ef d |
            ef f ef d c ef g bf af bf af g f g f ef |
            f g f ef d f af c bf c bf af g af g f |
            g\f bf af g f ef d ef g cf, bf cf bf d f af |
            g8
            \once \override Slur.height-limit = #5
            <f, f'>_( <bf bf'> <af af'> <bf bf'> <df df'>) <c c'> <g g'> |
            \relative c'' { b8\rest }
            \once \override Slur.height-limit = #5
            <g g'>_( <c c'> <bf bf'> <c c'> <ef ef'>) <ef ef'>_. <a, a'>_. |
            \relative c'' { b8\rest }
            \once \override Slur.height-limit = #5
            <bf bf'>_( <df df'> <c c'> <df df'> <f f'>) <ef ef'>_. \stemDown bf'16-[ af] |
            g ef f g af g af bf
            <<
              \relative c''' {
                af4-.^\f c-.
              }
              \\
              \relative c'' {
                c16 df c bf s4
              }
            >>
            \stemNeutral |
            \one-section-two
            g'4^~g16 bf df f ef f ef df c df c bf |
            c df c bf a c ef gf f gf f ef df ef df c |
            df ef df c bf df f af gf af gf f ef f ef df |
            ef f ef df c ef gf bf af bf af gf f gf f ef |
            f2\ff \clef bass df,,,,2\sf |
            d2\sf \clef treble
            \ottava #1
            \set Staff.ottavation = #"8"
            cf'''''2\sf
            \ottava #0 |
            \relative c'' { b4\rest }
            \once \override Slur.height-limit = #3
            ef,2^(\sf\> c8. af16) |
            af4^(\!\p g8)_[ r16 f16] f4^( ef8)_[ r16 <df g df'>16] |
            4 <bf_~ af'^~ c^~>
            \tupletDown
            % Note: slightly override the standard beam slope.
            \offset positions #'(0 . 2.7) Beam
            \tuplet 12/8 { \once \override Slur.height-limit = #7 32-[^( ef' d ef f ef b c b c df c)] }
            \undo \offset positions #'(0 . 3) Beam
            % Move the tuplet number so that it sits just outside the staff lines.
            \once \override TupletNumber.Y-offset = #-2.7
            \tuplet 6/4 { g16-[^( af bf af g af)] } |
            \once \override TupletNumber.Y-offset = #-2.7
            \tuplet 5/4 { af16-[^(-\textCresc "ritar" g af bf af)] }
            g8-[ r16 f16]
            \once \override TupletNumber.Y-offset = #-2.7
            \tuplet 5/4 { f16-[^( ef f g f])\!-\textCresc "dan" }
            ef8-[ \relative c'' { d16\rest } <df g df'>] |
            4 <c af' c>4\!-\textCrescEnd "do" \relative c'' { b4\rest\! b8.\rest } <g' bf f'>16^\markup { \italic "Adagio" } |
            4 <ef af ef'>4 \relative c'' { b4\rest b8\rest }
            \ottava #1
            \set Staff.ottavation = #"8"
            af'16-[^(\ff^\markup { \italic "Tempo I" } cf]) |
            af16^( cf) f,^( af)
            \ottava #0
            d,^( f) cf^( d) af^( cf) f,^( af) d,^( f) cf^( d) |
            \stemDown af( cf) f,( af) \stemNeutral d,^\nonLigato\p\cresc ef f g af bf c df ef e f ef |
            f16\!\ff ef c af f' ef c af f'\sf ef df bf f' ef df bf |
            \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
              #'((alignment-distances . (8.5)))
            bf' af ef c bf' af ef c bf'\sf af f df ef' df af df, |
            ef' df af df, ef' df af df, df' c af ef df' c af ef |
            df' c af ef c' bf g df
            <<
              \relative c''' {
                af4-. c-. |
                g2 gf4-. af-. |
                f2 ff4-. af-. |
                % Note: manuscript does not have a sf here. Lots of scores do though.
                ef4 af8.-[ c16] ef8-[ ef] s8. s16
              }
              \\
              \relative c'' {
                <c ef>8 8 8 8 |
                <bf ef>8 8 8 8 <af ef'>8 8 8 8 |
                <af df>8 8 8 8 8 8 8 8 |
                <af c>4-\parenSf\sf af8.-[ c16] ef8 s8 ef'8.-[^\trill d32 ef]
              }
            >> |
            ef'8-[^( f16 g)] g8-[^( af])
            \relative c'' { b8\rest }
            ef,8\noBeam ef8.-[^\trill d32 ef32] |
            ef8-[^( f16 g)] g8-[^( af)]
            \relative c'' { b8\rest }
            ef,8\noBeam ef8-[^\trill f16 g] |
            af bf c b c df eff df eff ef ff ef ff f gf g |
            af bf! c b c df eff df eff ef ff ef ff f gf g |
          }
          \alternative {
            \relative c''' {
              <af af'>4-.\ff <af,, af'>4_. \relative c'' { b4\rest b8\rest s8 }
            }
            \relative c''' {
              <af af'>4-.\ff <af,, af'>4_. \relative c'' { b2\rest }
            }
          }
          \relative c'' { b4\rest } <g,,, g'>4\p \relative c'' { b2\rest } |
          \break
          \relative c'' { b8\rest }
          \tuplet 3/2 { a'16\cresc b cs }
          <d, a' d>4\!\sf \relative c'' { b2\rest } \bar "||" |
          \one-section-three
          \relative c'' { b4\rest b8\rest }
          \tupletUp
          \tuplet 3/2 { d16\p e fs }
          <g, g'>4_. <bf bf'>4_. |
          <fs fs'>2 <f f'>4_. <af af'>4_. |
          <e e'>2 <ef ef'>4_. <g g'>4_. |
          <d d'>4 <g g'>8.-[ <bf bf'>16] <d d'>4_. <fs, a d>4_. |
          \once \override Slur.height-limit = #4
          d'2_( ef2 |
          a,2 \afterGrace fs'2\startTrillSpan) { e16\stopTrillSpan fs } |
          g16 d ef! f! g f ef d c4_. ef_. |
          b4. af'8 g f ef d |
          <<
            \relative c'' {
              \once \override Slur.height-limit = #5
              c2^( df |
              % Bridge the gap a bit.
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (8.7)))
              g,2 \afterGrace e'2\startTrillSpan) { d16\stopTrillSpan e }
            }
            \\
            \relative c' {
              e16 f e df c g' f e f4_. af_. |
              e4. df'8 c bf af g 
            }
          >> |
          \stemUp
          <af' f'>16 bf af g f af df b c b c bf c af c g |
          <<
            \relative c'' {
              \offset positions #'(0.5 . 2.0) Beam
              af16-[
              \undo \offset positions #'(0.5 . 2.0) Beam
              \change Staff = "left"
              bf, af g] f af df b c b c bf c af c g |
              c16 af c g b g c ef,
              \offset positions #'(1.0 . -0.5) Beam
              d'16-[
              \undo \offset positions #'(1.0 . -0.5) Beam
              g,
              \change Staff = "right"
              e' c] f-[ c <fs c'> ef]
            }
            \\
            \relative c'' {
              \stemUp
              s1 |
              s1\cresc |
              <g c>16 ef <a c ef> ef <a c ef> ef <a c ef> ef <a c ef> ef <a c ef> ef <a c ef> ef <ef a c> c |
              <b d g>4_.\!\f
            }
          >>
          <b, d g b>_. <a c ef fs>2\sf
          \bar "||" |
          \one-section-four
          <<
            \relative c'' {
              c4^. ef^. b2 |
              f'4^. af^. e2 |
              g4^. bf^. fs2 |
              c'4^. ef^. b4. s8
            }
            \\
            \relative c' {
              <ef fs a>4 4 <d f af>2\sf |
              <af' b d>4 4 <g bf df>2\sf |
              <bf df e>4 4 <a c ef>2\sf |
              <ef' fs a>4 4 <d f af>4.\sf <af' af'>8
            }
          >> |
          \stemNeutral
          g'''16 af g f ef f ef d ef f ef d c g a b |
          <c, c'>4^.\ff <ef ef'>4^. <b b'>4.\sf <af' af'>8 |
          <g g'>8 <f f'> <ef ef'> <d d'> <ef ef'>16 f' ef d <c, c'>8\noBeam <f g af'>8\p |
          <<
            \relative c'' {
              % We're hacking away with fake crescendos in a separate voice, so hide the warning.
              #(ly:expect-warning "(De)crescendo with unspecified starting volume in MIDI.")
              \stemDown <f g g'>^.^(-\textCresc "ri" <f g f'>^. <f g ef'>^. <f g d'>^.) \stemUp ef'16-\textCresc "tar" f ef d c8\noBeam af |
              g8^.-\textCresc "dan" f^. ef^. d^. ef16 f ef d-\textCrescEnd "do" c8\!
            }
            \\
            \relative c'' {
              s2 \relative c'' { b8\rest } <ef g>8_~\noBeam <ef g> <f, g>8\noBeam |
              <f g>8 8 8 8 \relative c'' { g8\rest } <ef g>8_~\noBeam <ef g>
            }
          >>
          <af af'>16\cresc^\markup { \italic "a tempo" } \relative c'' { b16\rest } |
          <g g'>-[ a\rest <f f'> a\rest <ef ef'> a\rest <d, d'>] b\rest <ef ef'>-[ r <d d'> f\rest <c c'> f\rest <b, b'>] b\rest |
          <c c'>-[ d\rest <bf! bf'!> d\rest <af af'> d\rest <g, g'>] b\rest <af af'>-[ b\rest <g g'> b\rest <f f'> b\rest <ef, ef'>] b'\rest |
          <df, df'>-[ b'\rest <af af'> b\rest <df! df'> d\rest <f f'>] b,\rest <af' af'>-[ d,\rest <af af'> b\rest <f f'> b\rest <df, df'>] b'\rest |
          <df, df'>-[\!-\textDecrescEnd "dimin." b'\rest <c, c'> b'\rest <c, c'> b'\rest <c, c'>]\! b'\rest
          \once \override Staff.TextScript.outside-staff-priority = #0
          <c, g' c>8^\markup { \italic "espressivo" }_\markup { \italic "poco ritenente" }\> <c g' df'>4 <c g' bf>8\! |
          af'16^\markup { \italic "a tempo" }\f c bf af g f e f g af bf g df e g bf_~ |
          bf8-[
          \once \override Slur.height-limit = #5
          <e,, e'>^( <f f'> <e e'>] <f f'>-[ <bf bf'>) <af af'>-. <f f'>-.] |
          \override Tie.minimum-length = #3.25
          \relative c'' { b8\rest } <f f'>-[^( <g g'>)
          \once \override Slur.height-limit = #3
          <g_~ g'^~>^(] <g g'>-[ <c c'>) <bf bf'>^. <g g'>^.] |
          \relative c'' { b8\rest } <g g'>-[^( <af af'>)
          \once \override Slur.height-limit = #3
          <af_~ af'^~>^(] <af af'>-[ <df df'>) <c c'>^.] <c c'>16-[ bf'] |
          \stemUp a8-[ bf16 c] f, gf f ef \stemNeutral
          <<
            \relative c'' {
              bf4^.^\f df^. |
              a4.^\sf gf'8\noBeam f16 gf f ef df ef df c
            }
            \\
            \relative c' {
              f16 gf f ef df f df f |
              ef f gf f ef8-[ ef'16 df] c4 e,4\rest
            }
          >> |
          df'16 ef df c bf df f af gf af gf f ef f ef df |
          ef f ef df c ef gf bf af bf af gf f gf f ef |
          <<
            \relative c''' {
              df4^. f^. c4^~ \stemDown c16
              \ottava #1
              \set Staff.ottavation = #"8"
              ef gf bf
            }
            \\
            \relative c''' {
              af bf af gf f gf af f ef8\noBeam \relative c'' { b8\rest } s4
            }
          >> |
          \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
            #'((alignment-distances . (10)))
          af'16 bf af gf f gf f ef f gf f ef d! f af cf |
          bf cf bf af gf af gf f gf af gf f e g bf df, |
          c df c bf af bf af g af bf af g fs a c ef |
          d! ef d c bf c bf a b c b a b d f af! |
          g af g f ef f ef d ef f ef d ef g a b |
          c2\sf
          \ottava #0
          \clef bass
          \relative c, { c2\sf f,\sf }
          \clef treble
          \ottava #1
          \set Staff.ottavation = #"8"
          c2\sf
          \ottava #0 |
          \relative c'' { b4\rest }
          \once \override Slur.height-limit = #3
          g2\sf^( e8. c16) |
          c4^( b8-[) \relative c''' { a16\rest } a16] a4^( g8-[) \relative c'' { f16\rest } <f d' f>16] |
          4 <e_~ c'^~ e^~>4
          \tupletDown
          \offset positions #'(0.0 . 1.0) Beam
          \once \override TupletNumber.Y-offset = #-2.7
          \tuplet 12/8 { \once \override Slur.height-limit = #9 <e c' e>32-[_\markup { \italic "meno allegro" }^( g' fs g a g ds e f e b c]) }
          \undo \offset positions #'(0.0 . 1.0) Beam
          \tuplet 9/8 { \once \override Slur.height-limit = #7 d-[^( c fs, g gs a g e c]) } |
          <<
            \relative c'' {
              % We're hacking away with fake crescendos in a separate voice, so hide the warning.
              #(ly:expect-warning "(De)crescendo with unspecified starting volume in MIDI.")
              \tuplet 5/4 { c16-[-\textCresc "ritar" b c d c] }
              b8-[ \relative c'' { b16\rest } a16]
              \tuplet 5/4 { a16-[ g a b-\textCresc "dan" a] }
              g8-[ \relative c'' { b16\rest } <b f'>16] |
              \stemDown <b f'>4 <c e>4-\textCrescEnd "do" \relative c'' { b4\rest b8.\rest } <g d' a'>16\!^\markup { \italic "Adagio" } |
              4 <g g'> s4 s8. \stemUp af'!16^\markup { \italic "Tempo I" } |
              \once \override Slur.height-limit = #5
              af4^( g2 bf4^~ |
              bf4)
              \once \override Slur.height-limit = #5
              bf4^~^(
              #(ly:expect-warning "Impossible or ambiguous (de)crescendo in MIDI.")
              bf8\cresc a bf b) |
              \stemDown
              \relative c'' { b16\rest\!\p } c,16 f af c4 \relative c'' { b16\rest } c,16 f af c4
            }
            \\
            \relative c' {
              <b f'>4. s16 <c f>16 <d f>4. s8 |
              s1 |
              s2 \relative c'' { b4\rest b8.\rest } d'16 |
              \once \override Slur.height-limit = #5
              d4_( df2 <f_~ g^~>4 |
              <f g>4) <e_~ g_~>2 <e g>8-[ <f af>8] |
              s1
            }
          >> |
          \relative c'' { b16\rest } c g' bf c4 \relative c'' { b16\rest } c, e g c4 |
          \tupletDown
          \relative c'' { b16\rest } c,-[ f af] c-[ e_\markup { \italic "meno allegro" } f c]
          \once \override TupletNumber.Y-offset = #-1.05
          \tuplet 6/4 { ef df bf df c af }
          \once \override TupletNumber.Y-offset = #-1.65
          \tuplet 6/4 { c bf g bf af f } |
          <<
            \relative c'' {
              #(ly:expect-warning "(De)crescendo with unspecified starting volume in MIDI.")
              % Move the "do" part of "ritardando" to the left just a bit so that it doesn't touch the bar line.
              \tuplet 5/4 { f16-\textCresc "ritar" e f g f } e8-[ \relative c'' { b16\rest } df16] \tuplet 5/4 { df\!-\textCresc "dan" c df ef df } c8-[ \relative c'' { b16\rest } bf'16]-\tweak bound-details.left.padding #0.35 \textCrescEnd "do" |
              \stemNeutral
              \tupletDown
              \once \override DynamicTextSpanner.to-barline = ##t
              \once \override TupletNumber.Y-offset = #-1.70
              \tuplet 5/4 { bf16\!\cresc af bf c bf } af8-[ c]
              \once \override TupletNumber.Y-offset = #-1.70
              \tuplet 5/4 { c16 b c d c } b8-[ d] |
              \ottava #1
              \set Staff.ottavation = #"8"
              \tuplet 5/4 { d16 c d ef d } c8-[ ef] \tuplet 5/4 { ef16 d ef f ef } d8-[ f] |
              \once \override TupletNumber.Y-offset = #-2.04
              \tuplet 5/4 { f16 ef f g f } ef8-[ g]
              \once \override TupletNumber.Y-offset = #-2.04
              \tuplet 5/4 { g16 f g af g } f8-[ af] |
              \once \override TupletNumber.Y-offset = #-1.70
              \tuplet 5/4 { af16 g af bf af } g8^.-[ bf^.]
              \once \override TupletNumber.Y-offset = #-1.70
              \tuplet 5/4 { bf16 af bf c bf } af8^.-[ b^.] |
              % Note: manuscript has no \ff here, but the cresc is awkward without one.
              % We're also following the same format as the previous section.
              c16^(\!^\markup { \italic "Tempo I" }-\parenHigh\ff ef) a,^( c) fs,^( a) ef^( fs)
              \ottava #0
              c^( ef) a,^( c) fs,^( a) ef^( fs) |
              d^( f!) b,^( d) \stemUp af!_( b) f_( af) d,_( f) b,_( d) af_( b) af_( b) |
              \stemNeutral
              g\p\cresc b c d ef f g af b c d ef f fs g fs |
              af\!\ff g ef c af' g ef c af'\sf g f! d af' g f d |
              \pageBreak
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (9)))
              df' c g ef df' c g ef g' f c f, g' f c f, |
              g' fs ef c g' fs ef c af' g ef c f ef c bf |
              f' ef c g ef' d! b! f
              <<
                \relative c''' {
                  c4^. ef^. |
                  b2\sf bf4^. c^. |
                  a2\sf af4^. c4^. |
                  g4\sf
                  \ottava #1
                  \set Staff.ottavation = #"8"
                  c8.-[ ef16] g8 8 \stemDown g8.-[\trill fs32 g] |
                  \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                    #'((alignment-distances . (9.5)))
                  g8-[^( b)] b-[^(\> c)]\!
                  \ottava #0
                }
                \\
                \relative c'' {
                  <ef g>8 8 8 8 |
                  <d g>8 8 8 8 <c g'>8 8 8 8 |
                  <c f>8 8 8 8 8 8 8 <c ef> |
                  <c ef>4 c8.-[ ef16] g8 s4. |
                }
              >>
            }
            \\
            \relative c'' {
              bf4. s16 af16 g4. s8 |
              #(ly:expect-warning "Impossible or ambiguous (de)crescendo in MIDI.")
              \once \override DynamicTextSpanner.to-barline = ##t
              s8-\textCresc "poi a poi sempre più allegro" s4. s2 |
              s1 |
              s1 |
              s1 |
              s1\!
            }
          >>
          \relative c'' { b8\rest }
          g8\noBeam g8.\trill-[ fs32 g32] |
          g8-[^( b]) b-[^(\> c)]\! \relative c'' { b8\rest } g,8\noBeam af16 g a b |
          c16\sf d ef d ef\sf e f e f\sf fs g fs g\sf a bf b |
          \ottava #1
          \set Staff.ottavation = #"8"
          \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
            #'((alignment-distances . (9.5)))
          c16\sf d ef d ef\sf e f e f\sf fs g fs g\sf a bf b |
          c4\ff \ottava #0 <c,,, c'>4\sf \relative c'' { b4\rest } <ef fs a ef'>4\sf |
          \stemUp
          \relative c'' { b4\rest } <d f! af! b>4\sf \relative c'' { b4\rest } <f af b d>4\sf |
          <<
            \relative c' {
              \relative c'' { b4\rest }
              \once \override Slur.height-limit = #3
              <df e g bf!>4_.-\textDecresc "dimin."_( \relative c'' { b4\rest } <e g bf df>4_. |
              \relative c'' { b4\rest } <c f a>4_. \relative c'' { b4\rest } <f a c>_.) |
              \relative c'' { b2\rest\!\p } c'2\p |
              c2
              \once \override Slur.height-limit = #4
              c4.^( <b d>8 |
              e4 c4) c2 |
              c2
              \once \override Slur.height-limit = #6
              c4.^( f8 |
              g4 c4) c,2 |
              c2 c4. b'8
            }
            \\
            \relative c' {
              s1 |
              s1 |
              s2 <f af!>2 |
              <g bf>2 <f af>2\< |
              <e g c>4\!\> e8-[_( f16 g])\! <f af>2 |
              <g bf>2 <f af>\< |
              <g c ef>4\!\> e8-[_( f16 g])\! <c, f af>2 |
              <c g' bf>2 <c f af>4.\< <d' f af>8 |
              \stemNeutral
              <d f af b>1\!\> |
              <e g c>2\!\p-\textDecresc "dimin." 2 |
              1\!\pp
            }
          >>
          \bar "|."
        }
      }
      
      \new Staff = "left" \with {
        \std-magnification
        \stdDynSize
        midiInstrument = "acoustic grand"
      } {
        \clef bass \relative c, {
          \one-section-one
          <ef' ef'>32\f |
          <fs, fs'>8..-[ <fs, fs'>32] <fs'_~ fs'^~>4 <fs fs'>8..-[ <fs' fs'>32] <fs fs'>4 |
          <g d>8 \relative c { d8\rest } <c, g' c>8 \relative c { d8\rest }
          \grace {
            b,64-[\sustainOn d g b d g b] s32.
          }
          <b,,! b'!>8 \relative c {
            d8\rest d8\rest
            \once \override Staff.SustainPedal.X-offset = #-0.15
            \once \override Staff.SustainPedal.Y-offset = #-2
            d16.\rest\sustainOff
          } <af'' af'>32 |
          <b, b'>8..\sf <b, b'>32 <b'_~ b'^~>4 <b b'>8.. \clef treble <b' af'>32 <b af'>4 \clef bass |
          <bf! df>8 \relative c { d8\rest } <af c>8 \relative c { d8\rest }
          \grace {
            e,64-[\sustainOn g c e g c] s16
          }
          <e,, e'>8 \relative c {
            d8\rest d8\rest
            % Move the stencil just a bit.
            \once \override Staff.SustainPedal.X-offset = #-0.15
            \once \override Staff.SustainPedal.Y-offset = #-2
            d16.\rest\sustainOff
          } <df' df'!>32\f |
          <e, e'>8.. <f f'>32 <f_~ f'^~>4 <f f'>8.. <f' bf df>32 <f bf df>4 |
          <gf bf df>8.. <g bf df>32 <g_~ bf^~ df^~>4 <g bf df>8.. <af c>32 <af c>8.. <a ef' gf>32 |
          <a ef' gf>8.. <bf ef gf>32 <bf_~ ef^~ gf^~>4 <bf ef gf>8.. <cf ef gf>32 <cf ef gf>8.. <c ef gf>32 |
          <c ef gf>8.. <df f>32 <df_~ f^~>4 <df f>8.. <d f>32
          \once \offset positions #'(-1.5 . -0.75) Beam
          <d f>8.. <d,, d'>32 |
          <d d'>8.. <ef ef'>32 <ef_~ ef'^~>4 <ef ef'>8.. <ef ef'>32 <ef ef'>8.. <e e'>32 |
          <e e'>8.. <f f'>32 <f f'>8.. <g g'>32 <g g'>8-. <af af'>8-. <af af'>8-. <af, af'>8-. |
          <g g'>8\noBeam g''8\sfp g <g af>\sfp <f af> <f g>\sfp <f g> <ef g> |
          <<
            \relative c' {
              g8 g g g g g g g^~ |
              <g, g'> g\sfp g <g af!>\sfp <f af> <f g>\sfp <f g> <ef g> |
              g8 g g g g g g g^~ |
              g g g g g g g g
            }
            \\
            \relative c {
              ef4 d c fs,8.._( g32) |
              s1 |
              ef4 d c fs,8.._( g32) |
              g2\sustainOn g2 |
              \stemNeutral
              \once \override Staff.SustainPedal.X-offset = #-2.32
              \once \override Staff.SustainPedal.Y-offset = #-3
              g32\sustainOff af \repeat unfold 3 { g af }
              \repeat unfold 12 { g af }
            }
          >> |
          \break
          <<
            \relative c {
              <d g>1 |
              \crossStaff { <g b d>16 }
            }
            \\
            \relative c, {
              \repeat unfold 8 { g16 af16 } |
              \repeat unfold 6 { g16 af16 }
              g af g a32 b
            }
          >> |
          <<
            \relative c {
              c4^\f d4\rest d4\rest d8\rest
              \tuplet 3/2 { g,16^\ff a b }
              
            }
            \\
            \relative c, {
              c4 c4\rest c4\rest c8\rest
              \tuplet 3/2 { g16 a b }
            }
          >> |
          \voiceTwo
          c,4_. ef4_. b4._\fermata
          \tuplet 3/2 { g16-[ a b] } |
          c4_. ef4_. b4. af'!8_. |
          g8-. f-. ef-. d-. ef16 f ef d c8 af'-.-( |
          g8-. f-. ef-. d-.) ef16 f ef d c af' bf af |
          g af g f ef f ef d ef f ef d c g' f ef |
          f g f ef d af' g f g af g f e bf' af g |
          af c g c f, c' fs, c' b a g d'
          \stemNeutral
          c b f' ef
          d af'! g f \clef treble d' c b f' ef d af' g f d' c b |
          f' ef d af' g f ef d c b af g f ef d g |
          c,4 \clef bass <c,, c'>4 \relative c { d4\rest } <g g'> |
          \relative c { d8\rest } <g'' d'>8 <g c> <g b> \relative c { d8\rest d8\rest } <c ef>8 <g f'>^.^( |
          <g ef'>^. <g d'>^. <g c>^. <g b>^.) \relative c { d8\rest } <c_~ ef^~>8 <c ef>8\noBeam <g,, g'>8 |
          <g g'> <g g'> <a a'> <b b'> <c c'> <b b'> <c c'> <d d'> |
          <ef ef'> <e e'> <f f'> <e e'> <f f'> <af' c f>4 8 |
          <<
            \relative c' {
              s4 ef2 ef4
            }
            \\
            \relative c' {
              <af c>4 af4_( g) fs
            }
          >> |
          <g ef'>4 <g_~ b ef> g16 f ef d c d ef c |
          d16 c b a g b d g ef8
          \once \override Slur.height-limit = #5
          <g,, g'>_( <c c'> <b b'!> |
          <c c'> <f f'>) <ef ef'>-. <c c'>-. \relative c { d8\rest }
          \once \override Slur.height-limit = #5
          <c c'>_( <d d'> <c c'> |
          <d d'> <g g'>) <f f'>-. <ef ef'>-. <d d'>-. <bf bf'>-. <c c'>-. <d d'>-. |
          <ef ef'>4-. <g g'>-. <d d'>8 d_~\sf d16 f af c |
          bf c bf af g af g f g af g f e g bf df |
          c df c bf af bf af g af bf af gf f a c ef |
          df ef df c bf c bf a bf c bf af g bf df f |
          ef f ef df c df c bf af4 \clef treble c''16 ef df c \bar "||" |
          \one-section-two
          bf af g f ef g bf df c8-[
          \once \override Slur.height-limit = #5
          <g, g'>_( <af af'> <g g'>] |
          <af af'> <df df'>) <c c'>-. <a a'>-. \relative c'' { b8\rest }
          \once \override Slur.height-limit = #5
          <a a'>-[_( <bf bf'> <a a'>] |
          <bf bf'> <ef ef'>) <df df'>-. <bf bf'>-. \relative c'' { b8\rest }
          \once \override Slur.height-limit = #5
          <bf bf'>-[_( <c c'> <bf bf'>] |
          <c c'> <f f'>) <ef ef'>-. <c c'>-. \relative c'' { b8\rest } \clef bass <af,, af'> <bf bf'> <c c'> |
          <df' f>16\sustainOn af'
          \repeat unfold 6 { <df, f> af' }
          <df, f>
          \once \override Staff.SustainPedal.X-offset = #-0.11
          af'\sustainOff |
          <d, f af>\sustainOn cf'
          \repeat unfold 6 { <d, f af> cf' }
          <d, f af>
          \once \override Staff.SustainPedal.X-offset = #-0.11
          cf'\sustainOff |
          \once \override Staff.SustainPedal.X-offset = #-1.10
          <ef,, ef'>4^\sf\sustainOn \relative c { d4\rest d4\rest d8.\rest }
          \once \override Staff.SustainPedal.X-offset = #-0.11
          \once \override Staff.SustainPedal.Y-offset = #-1.5
          <ef' c'! ef>16\sustainOff |
          <ef bf' df>4. \relative c { d16\rest } <ef af c>16 4 <ef g bf>8_[ f16\rest <ef g bf>16] |
          4 <ef af c>4 d2\rest |
          <ef bf' df>4. \relative c { d16\rest } <ef af c>16 <ef g bf>4. \relative c { d16\rest } <e g bf>16 |
          4 <f af>4 \relative c { d4\rest d8.\rest } \clef treble <df' g bf>16 |
          4 <c af' c>4 \relative c'' { b4\rest b8\rest } <d f af cf>8 |
          8\noBeam f'16^( af) d,^( f) cf!^( d) af( cf) f,( af) d,( f) cf( d) \clef bass |
          af^( cf) f,^( af) d, ef f g af bf c df ef e f ef |
          <af,,, af'>4-. <c c'>-. <g g'>2\sf |
          <gf gf'>4-. <af af'>4-. <f f'>2 |
          <ff ff'>4-. <af af'>4-. <ef ef'>4 <af af'>8. <c c'>16 |
          <ef ef'>4-. <ef, ef'>4-. \relative c { d16\rest } c'''16-[ bf af] g af bf af |
          \stemUp
          \relative c { d16\rest } \clef treble g'16 f ef d ef f ef \relative c'' { b16\rest } \clef bass ef,16 df c b c df c |
          \relative c { d16\rest } \stemNeutral f'16 ef df c df ef df \relative c { d16\rest } df,,16 ef ff ef df c df |
          d ef f! ef df c bf af g af bf c df c df b |
          c df ef df c b c af g af bf c df c df b |
          c df ef df c b c af g af bf c df ef f g |
          af bf! c b c df eff df eff ef ff ef ff f gf g |
          af bf! c b \clef treble c df eff df eff ef ff ef ff f gf g |
          af4_. \clef bass <af,,, af'>4_. \relative c { d4\rest d8\rest }
          <<
            \relative c {
              \tuplet 3/2 { g16 a b }
            }
            \\
            \relative c, {
              \tuplet 3/2 { g16 a b }
            }
          >> |
          % Ensure that the clef change occurs after the bar line.
          \once \override Score.BreakAlignment.break-align-orders = #(
            make-vector 3 '(
              span-bar
              breathing-sign
              staff-bar
              clef
              key-cancellation
              key-signature
              time-signature
          ))
          \clef treble af'''4_. \clef bass <af,,, af'>4_. \relative c { d2\rest } |
          \relative c { d4\rest } <g g'>4 \relative { d2\rest } |
          \relative c { d4\rest } <fs fs'>4 \relative { d2\rest } |
          \one-section-three
          \relative c { d4\rest d8\rest }
          \tupletUp
          \once \override TupletNumber.Y-offset = #2.6
          \tuplet 3/2 { d'16 e fs }
          <g, g'>4_. <bf bf'>4_. |
          <fs fs'>2 <f f'>4_. <af af'>4_. |
          <e e'>2 <ef ef'>4_. <g g'>4_. |
          <d d'> <g g'>8.-[ <bf bf'>16] <d d'>4_. <c c'>4_. |
          <b b'>4 <g g'>4 g''4^. c^. |
          <<
            \relative c' {
              s4. ef8 d c bf! a |
              b4 s2 s4 |
            }
            \\
            \relative c {
              fs4. s8 s4 d4 |
              \once \override Slur.height-limit = #6
              g2_( af2 |
              \trillSpanUp
              d,2 \afterGrace b'2\startTrillSpan) { \stemUp a!16\stopTrillSpan b }
            }
          >> |
          c4 \relative c { d16\rest } bf16 af g af4 f |
          \pageBreak
          bf g c c, |
          \trillSpanUp
          f2 \afterGrace e2\startTrillSpan { \stemUp d16\stopTrillSpan e } |
          <<
            \relative c, {
              \trillSpanDown \stemDown f2 \afterGrace e2\startTrillSpan { \stemUp d16\stopTrillSpan e } |
              \stemDown f8 ef d c b bf a af
              \trillSpanUp
            }
            \\
            \relative c {
              \stemDown
              f4
            }
            \\
            \relative c' {
              \stemUp
              \crossStaff { af16 }
            }
          >> |
          \trillSpanUp
          g,,8 fs_~ fs <fs_~ fs'^~> <fs fs'> <fs fs'>4 <fs fs'>8 |
          \relative c { d16\rest } g a b
          \relative c { d16\rest } g'16 a b
          \relative c { d16\rest } g, c ef fs a c ef |
          \one-section-four
          \relative c { d16\rest } g,, c ef
          \relative c { d16\rest } g c ef
          \relative c { d16\rest } g,, d' f g b d f |
          \relative c { d16\rest } g,, d' f
          \relative c { d16\rest } g d' f
          \relative c { d16\rest } g,, g' bf! df e g bf |
          \relative c { d16\rest } g,, g' bf
          \stemNeutral
          \relative c { d16\rest } g g' bf
          \relative c { d16\rest } g,, a' c ef fs a c |
          \relative c { d16\rest } g,, a' c
          \relative c { d16\rest } fs a c
          \relative c { d16\rest } g,, b' d f af f af |
          \stemDown
          g16 af g f ef f ef d ef f ef d c g a b |
          \stemNeutral
          <c, c'>4_. <ef ef'>4_. <b b'>4. <af' af'>8 |
          <g g'>8 <f f'>8 <ef ef'>8 <d d'>8 ef16 f ef d <c c'>8 \relative c { d8\rest } |
          <g'' b>8 8 <g c> <g b> \relative c { d8\rest } <c,_~ c'^~>8\noBeam <c c'> \relative c { d8\rest } |
          <g, g'>8 8 <g a'> <g b'> \relative c { d8\rest } <c_~ c'^~>\noBeam <c c'> \relative c { d16\rest } <b! b'!>16 |
          \relative c { d16\rest }
          \offset positions #'(1.5 . 1.5) Beam
          <b b'>16-[ \relative c { d\rest } <b b'> \relative c { d\rest } <b b'> \relative c { d\rest } <b b'>] \relative c { d\rest }
          \offset positions #'(0.8 . 0.8) Beam
          <c c'>-[ \relative c { d\rest } <d d'> \relative c { d\rest } <ef ef'> \relative c { d\rest } <d d'>]
          \undo \offset positions #'(1 . 3) Beam |
          \relative c { d16\rest } <ef ef'>16-[ \relative c { d16\rest } <e e'> \relative c { d16\rest } <f f'> \relative c { d16\rest } <e e'>] \relative c { d16\rest } <f f'>-[ \relative c { d16\rest } <g g'> \relative c { d16\rest } <af af'> \relative c { d16\rest } <f' af>] |
          \relative c { d16\rest } <f af>16-[ \relative c' { a16\rest } <f af df> \relative c' { a16\rest } <f af df> \relative c' { a16\rest } <f af df>] \relative c { d16\rest } <f af df>-[ \relative c' { a16\rest } <f af df> \relative c' { a16\rest } <f af df> \relative c' { a16\rest } <f af>] |
          \relative c { d16\rest } <f af>16-[ \relative c { f16\rest } <e g> \relative c { f16\rest } <e g> \relative c { f16\rest } <e g>] <e g>8 e,4 \tuplet 3/2 { \shortestNoteDuration 32 c16 d e \shortestNoteDuration 16 } |
          <f, f'>4_. <af af'>_. <e_~ e'^~>\sf <e e'>16-[ g' bf df] |
          c16 df c bf af bf af g af bf af g f af bf c |
          df ef df c bf c bf a bf c bf af g bf df f |
          ef f ef df c df c bf c df c af a c ef gf |
          f gf f ef df ef df c df ef df c bf df bf df |
          c df ef df c df c bf a8-[
          \once \override Slur.height-limit = #5
          <f f'>^( <bf bf'> <a a'>] |
          <bf bf'> <ef ef'>) <df df'>^. <bf bf'>^. \relative c { d8\rest }
          \once \override Slur.height-limit = #5
          <bf bf'>-[^( <c c'> <bf bf'>] |
          <c c'> <f f'>) <ef ef'>^. <c c'>^. \relative c { d8\rest }
          \once \override Slur.height-limit = #3
          <c c'>^( <df df'> <c c'>) \clef treble |
          f'16 gf f ef df ef f df af' bf af g af c ef gf |
          f gf f ef df ef df c df ef df c bf d f af |
          gf af gf f ef f ef d! ef f ef df c e g f |
          e f e g f g f e f g f ef d! fs a c |
          bf c bf a! g a g fs g a g fs g b d f! |
          ef f ef d c d c b c d c b c8 \clef bass g,,,16-[ f] |
          <ef g>16\sustainOn c' <ef, g> c' <ef, g> c' <ef, g> c' <e, g bf!> c' <e, g bf> c' <e, g bf> c' <e, g bf>
          % Note: manual override
          \once \override Staff.SustainPedal.X-offset = #1.44
          \once \override Staff.SustainPedal.Y-offset = #-2.25
          c'\sustainOff |
          <f, af> c' <f, af> c' <f, af> c' <f, af> c' <fs, a c> ef' <fs, a c> ef' <fs, a c> ef' <fs, a c> ef' |
          <g,, g'>4^\sf\sustainOn d''4\rest d4\rest d8.\rest
          \once \override Staff.SustainPedal.X-offset = #1.18
          \once \override Staff.SustainPedal.Y-offset = #-2.25
          <g e' g>16\sustainOff |
          <g d' f>4. \relative c { d16\rest } <g c e>16 4 <g b d>8-[ \relative c { f16\rest } <g b d>16] |
          <g b d>4 <g c e>4 \relative c { d2\rest } |
          <g, d' f>4. \relative c { d16\rest } <g c f>16 <g b f'>4. \relative c { d16\rest } <g' d'>16 |
          <gs d'>4 <a c>4 \relative c { d4\rest d8.\rest } <f g b>16 |
          4 <e g c>4 \relative c { d4\rest d8.\rest } \clef treble <f' b>16 |
          <f b>4_( <e bf'>2) <df_~ g_~ bf^~>4 |
          4 <df_~ g_~ bf^~>2 8 <df f af>8 \clef bass |
          \once \override Slur.height-limit = #5
          <c, c'>2.^( <af af'>8. <f f'>16) |
          \set doubleSlurs = ##t
          \once \override Slur.height-limit = #2
          <f f'>4( <e e'>8-[) \relative c { d16\rest } <df df'>16]
          \once \override Slur.height-limit = #2
          <df df'>4( <c c'>8-[) \relative c { d16\rest } <bf' bf'>16] |
          \set doubleSlurs = ##f
          <bf bf'>4 <af af'>4 \relative c { d2\rest } |
          <c g' c>4. \relative c { d16\rest } <c f c'>16 <c e c'>4. \relative c { d16\rest } <e g c>16 |
          <f af c>8-[ 8] \relative c { d8\rest } <fs a ef'!>8 <g b d>8-[ 8] \relative c { d8\rest } <g b f'!>8 |
          <af! c ef>8-[ 8] \relative c { d8\rest } <a c f>8\noBeam <bf! d f>8-[ 8] \relative c { d8\rest } <b d g>8 |
          <c ef g>8-[ 8] \relative c { d8\rest } \clef treble <c ef g>8\noBeam <d f af b>8-[ 8] \relative c'' { b8\rest } <d f af b>8 |
          \stemUp
          <ef g c>8-[ 8] \relative c'' { b8\rest } <e g c>8 <f af c>8-[ 8] \relative c'' { b8\rest } <f af d>8 |
          \stemNeutral
          <fs a ef'>8-[ a'16^( c]) fs,^( a) ef^( fs) c^( ef) a,^( c) fs,( a) ef( fs) \clef bass |
          d^( f) b,^( d) af!^( b) f^( af) d,^( f) b,^( d) af_( b) af_( b) |
          \stemDown g b c d ef f g af b c d ef f fs g8 \stemNeutral |
          <c,,, c'>4_. <ef ef'>4_. <b b'>2^\sf |
          <bf! bf'!>4_. <c c'>_. <a a'>2^\sf |
          <af! af'!>4_. <c c'>_. <g g'>4^\sf <c c'>8.-[ <ef ef'>16] |
          <g g'>4_. <g, g'>4_. \relative c { d16\rest } d'''16-[ c b] c d ef c |
          \relative c { d16\rest } a,16 g fs g a b g \relative c { d16\rest } f''!16 e d e f g e |
          \relative c { d16\rest } g,, f e f g a f \relative c { d16\rest } g' f e f g af! fs |
          g16 ef! c g ef g ef c b g' d g ef g f g |
          ef g d g ef g c, g' b, g' d g ef g f g |
          ef g d g ef g c, g' b, g' d g af g a b |
          c16 d ef d ef e f e f fs g fs g a bf b \clef treble |
          c16 d ef d ef e f e f fs g fs g a bf b |
          c4 \clef bass <c,,, c'>4 \relative c { d4\rest } <c c'> |
          \relative c { d4\rest } <c c'> \relative c { d4\rest } <c c'> |
          \relative c { d4\rest }
          \once \override Slur.height-limit = #3
          <c c'>_._( \relative c { d4\rest } <c c'>_. |
          \relative c { d4\rest } <c c'>_. \relative c { d4\rest } <c c'>_.) |
          \relative c { d8\rest } c'16-[ df] c-[ bf af! g] f-[ c' df c] bf-[ af g f] |
          e c' df c bf g e c' f, c' df c bf af g f |
          c d e f g c, d e f c' df c bf af g f |
          e c' df c bf g e c' f, c' df c bf af g f |
          c d e f g c, d e f c' df c bf af g f |
          e c' df c bf g e c' f, af f c f af f c |
          f af f c f af f c f af f c f af f c |
          \once \override Staff.SustainPedal.X-offset = #-1.11
          g'\sustainOn c g c, g' c g c, g' e' g, c, g' e' g, c, |
          \once \override Staff.SustainPedal.X-offset = #3.80
          \once \override Staff.SustainPedal.Y-offset = #-2.00
          <c, c'>1 |
        }
      }
    >>
    \layout {
      \context {
        \Score
        % Set the score to a default note value of one crotchet.
        \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16)
        \consists #Span_stem_engraver
      }
    }
    \midi {
      \tempo 4 = 60
    }
  }
}
