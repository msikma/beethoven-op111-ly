% Piano Sonata Op.111 (L.Beethoven)
% Markup commands
%
% (C) 2016, Michiel Sikma <michiel@sikma.org>
% Licensed under CC BY-SA 4.0.

% Standard padding. Use in \bookpart \paper markup-system-spacing.
% For the first page only.
std-padding-page-one = #'((padding . 4))

% For all subsequent pages.
std-padding-page-n = #'((padding . 1.5))

% Standard staff spacing. Use in \new PianoStaff \with.
std-staff-spacing = \override StaffGrouper.staff-staff-spacing =
  #'((basic-distance . 9)
     (minimum-distance . 7)
     (padding . 1.0)
     (stretchability . 5))

% Standard scaling for a staff.
std-magnification = \magnifyStaff #89/100

% Standard title markup. Use in \bookpart \paper bookTitleMarkup.
% Assumes that the COMPOSED variable is set in the source file.
% This is for the first page. Use std-title-markup-page-n for subsequent pages.
std-title-markup-page-one = \markup {
  \column {
    \override #'(baseline-skip . 5.0)
    \fill-line {
      \fontsize #7.2
      \pad-markup #3
      \fromproperty #'header:title
    }
    \fill-line {
      \fromproperty #'header:dedication
    }
    \fill-line {
      \COMPOSED
    }
    \fill-line {
      \large \bold
      \fromproperty #'header:subtitle
    }
    \fill-line {
      \smaller \bold
      \fromproperty #'header:subsubtitle
    }
    \fill-line {
      \fromproperty #'header:poet
      { \large \bold \fromproperty #'header:instrument }
      \fromproperty #'header:composer
    }
    \fill-line {
      \fromproperty #'header:meter
      \fromproperty #'header:arranger
    }
  }
}

% As above; for subsequent pages after the first.
std-title-markup-page-n = \markup {
  \left-align {
    \override #'(baseline-skip . 2.0)
    \line {
      \fontsize #3.33
      \pad-x #11.66
      \fromproperty #'header:subtitle
    }
    \fill-line {
      \smaller \bold
      \fromproperty #'header:subsubtitle
    }
    \fill-line {
      \fromproperty #'header:poet
      { \large \bold \fromproperty #'header:instrument }
      \fromproperty #'header:composer
    }
    \fill-line {
      \fromproperty #'header:meter
      \fromproperty #'header:arranger
    }
  }
}