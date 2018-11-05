%{
  *                                                    *
  * Generates 4th movement                                                 *
  *                                                                     *
%}

#(ly:set-option 'relative-includes #t)
\include "MozartWA/KV525-Trio/common/version.ily"
\include "MozartWA/KV525-Trio/common/mutopia-header.ily"
\include "MozartWA/KV525-Trio/common/variables.ily"
\include "MozartWA/KV525-Trio/common/definitions.ily"
\include "MozartWA/KV525-Trio/common/conductor-dimension.ily"

% Part-specific settings
thisInstrName = \markup {
  \concat {
    \thisTempoMovIV
    \hspace #0.4 \char ##x2014 \hspace #0.4
    \combinedPublicationName
  }
}
Part = " "

thisIdentifier = \thisIdentifierMovIV
thisTempo = \thisTempoMovIV
thisTocLabel = \label \thisLabelMovIV
\include "MozartWA/KV525-Trio/04_allegro/music.ily"
\bookpart { \include "MozartWA/KV525-Trio/common/conductor-staff.ily" }

























