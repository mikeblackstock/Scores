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

%\bookpart { \CoverA } 

%--------------- First Piece: Boismortier
thisWork = "Balet de Village"
thisIdentifier = \thisIdentifierMovI     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      \thisTempoMovI          %---------------------- /common/variables.ily [set to corresponding movement]
thisTocLabel =   \label \thisLabelMovI   %---------------------- /common/variables.ily [set to corresponding movement]
thisComposer= \thisComposerMovI
\include "BoismortierJB/Balet_de_village/01_gaiment/music.ily"                %---------------------- [set to corresponding movement folder]
%\bookpart { 
  \include "common/conductor-staff.ily"
%}

%--------------- First Piece: Boismortier
thisWork = ""
thisIdentifier = \thisIdentifierMovI     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      "Vivement"          %---------------------- /common/variables.ily [set to corresponding movement]
thisTocLabel =   \label \thisLabelMovI   %---------------------- /common/variables.ily [set to corresponding movement]
thisComposer= ""
\include "BoismortierJB/Balet_de_village/03_vivement/music.ily"                %---------------------- [set to corresponding movement folder]
%\bookpart { 
  \include "common/conductor-staff.ily"
%}
















