% /includes/ms.ily - Standard header file for MS projects
%
% Contains standardized copyright notices among various other things.
% This file expects that at least the AUTHORS variable has been set
% in the file that includes this.
%
% After including this file, you can use the following variables:
%
%    * ms-copyright-(LICENSE)-(LANGUAGE) where LICENSE is
%      one of "cc-by-sa-four", "pd"
%    * ms-tagline-(LANGUAGE)
%
% LANGUAGE is an ISO 639-1 code, e.g. "en" or "jp".
%
% (C) 2016, Michiel Sikma <michiel@sikma.org>
% This source code file is in the public domain.

% Force "mid" file extension for compatibility.
#(ly:set-option 'midi-extension "mid")

% \impliedTuplets
%
% Shorthand for turning off tuplet numbers. This turns off
% the numbers for all subsequent tuplets, until \explicitTuplets.
impliedTuplets = \override TupletNumber.stencil = ##f

% \explicitTuplets
%
% Turns tuplet numbers back on.
explicitTuplets = \revert TupletNumber.stencil

% Language-independent variables.
CURRENT-YEAR = #(strftime "%Y" (localtime (current-time)))
CURRENT-DATE = #(strftime "%Y-%m-%d" (localtime (current-time)))

% Copyright strings, separated by language.
% English
ms-copyright-cc-by-sa-four-en = "Licensed under CC BY-SA 4.0."
ms-copyright-pd-en = "Public domain."
ms-copyright-template-en = "© ~A. Arranged by ~A."
ms-copyright-template-en-license = "© ~A. Arranged by ~A. ~A"

% Japanese (Todo)
ms-copyright-cc-by-sa-four-jp = "Licensed under CC BY-SA 4.0."
ms-copyright-pd-jp = "Public domain."
ms-copyright-template-jp = "© ~A. Arranged by ~A."
ms-copyright-template-jp-license = "© ~A. Arranged by ~A. ~A"

% Standardized tagline.
ms-tagline-en = \markup {
  \fontsize #-3 #(format ms-copyright-template-en CURRENT-YEAR AUTHORS)
}
ms-tagline-en-cc-by-sa-four = \markup {
  \fontsize #-3 #(format ms-copyright-template-en-license CURRENT-YEAR AUTHORS ms-copyright-cc-by-sa-four-en)
}
ms-tagline-en-pd = \markup {
  \fontsize #-3 #(format ms-copyright-template-en-license CURRENT-YEAR AUTHORS ms-copyright-pd-en)
}
ms-tagline-jp = \markup {
  \fontsize #-3 #(format ms-copyright-template-jp CURRENT-YEAR AUTHORS)
}
ms-tagline-jp-cc-by-sa-four = \markup {
  \fontsize #-3 #(format ms-copyright-template-jp-license CURRENT-YEAR AUTHORS ms-copyright-cc-by-sa-four-jp)
}
ms-tagline-jp-pd = \markup {
  \fontsize #-3 #(format ms-copyright-template-jp-license CURRENT-YEAR AUTHORS ms-copyright-pd-jp)
}
