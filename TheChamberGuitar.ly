%{
  *                                                    *
  * Generates full score                                                 *
  *                                                                     *
%}
#(ly:set-option 'relative-includes #t)
\version "2.19"
%\include "common/version.ily"
%\include "common/mutopia-header.ily"
\include "common/variables.ily"
\include "common/definitions.ily"
\include "common/conductor-dimension.ily"
\include "common/conductor-cover.ily"
\pointAndClickOff
thisInstrName = \combinedPublicationName            %----------- /common/variables.ily
Part = " " %----------- [blank for conductor]

\bookpart { \CoverA } 

%--------------- First Piece: Boismortier
thisWork = "Balet de Village"
thisIdentifier = \thisIdentifierMovI     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      \thisTempoMovI          %---------------------- /common/variables.ily [set to corresponding movement]
thisTocLabel =   \label \thisLabelMovI   %---------------------- /common/variables.ily [set to corresponding movement]
thisComposer= \thisComposerMovI
\include \thisNotesMovI                %---------------------- [set to corresponding movement folder]
%\bookpart { 
  \include "common/conductor-staff.ily"
%}










