%{
  *                                                    *
  * Generates full score                                                 *
  *                                                                     *
%}
#(ly:set-option 'relative-includes #t)
\version "2.19"
\include "common/version.ily"
\include "common/mutopia-header.ily"
\include "common/variables.ily"
\include "common/definitions.ily"
\include "common/conductor-dimension.ily"
\include "common/conductor-cover.ily"


thisInstrName = \combinedPublicationName            %----------- /common/variables.ily
Part = " " %----------- [blank for conductor]
\bookpart { \CoverA } 


%--------------- First Mov: Lento 
%{
thisIdentifier = \thisIdentifierMovI     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      \thisTempoMovI          %---------------------- /common/variables.ily [set to corresponding movement]
thisTocLabel =   \label \thisLabelMovI   %---------------------- /common/variables.ily [set to corresponding movement]
\include "01/music.ily"                %---------------------- [set to corresponding movement folder]
\bookpart { 
  \include "common/conductor-staff.ily"
}
%}

thisIdentifier = \thisIdentifierMovII     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      \thisTempoMovII          %---------------------- /common/variables.ily [set to corresponding movement]
thisTocLabel =   \label \thisLabelMovI   %---------------------- /common/variables.ily [set to corresponding movement]
\include "02/music.ily"                %---------------------- [set to corresponding movement folder]
\bookpart { 
  \include "common/conductor-staff.ily"
}

%{
thisIdentifier = \thisIdentifierMovIII     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      \thisTempoMovIII          %---------------------- /common/variables.ily [set to corresponding movement]
thisTocLabel =   \label \thisLabelMovIII   %---------------------- /common/variables.ily [set to corresponding movement]
\include "03/music.ily"                %---------------------- [set to corresponding movement folder]
\bookpart { 
  \include "common/conductor-staff.ily"
}


thisIdentifier = \thisIdentifierMovIV     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      \thisTempoMovIV          %---------------------- /common/variables.ily [set to corresponding movement]
thisTocLabel =   \label \thisLabelMovIV   %---------------------- /common/variables.ily [set to corresponding movement]
thisComposer= \thisComposer
\include  "04/music.ily"               %---------------------- [set to corresponding movement folder]
\bookpart { 
  \include "common/conductor-staff.ily"
}
%}

