%{
  *                                                    *
  * Generates full score                                                 *
  *                                                                     *
%}
#(ly:set-option 'relative-includes #t)
#(set-global-staff-size 16) 
\version "2.19"
\paper{
  print-all-headers = ##t
}
%\include "common/version.ily"
%\include "common/mutopia-header.ily"
\include "common/variables.ily"
\include "common/definitions.ily"
\include "common/conductor-dimension.ily"
\include "common/conductor-cover.ily"

thisInstrName = \combinedPublicationName            %----------- /common/variables.ily
Part = " " %----------- [blank for conductor]

\bookpart { \CoverA } 
\bookpart {
  \header { copyright = ##f }
  \paper  { two-sided = ##f print-page-number = ##f }
  \PageToc              %--------------------------------------- /common/conductor-cover.ily
}

%--------------- First Work: Boismortier
thisWork = "Balet de Village" %\thisWorkMovI
thisIdentifier = "I" %\thisIdentifierMovI     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      "Gaiment" % \thisTempoMovI          %---------------------- /common/variables.ily [set to corresponding movement]
thisTocLabel =   \label \thisLabelMovI   %---------------------- /common/variables.ily [set to corresponding movement]
\label #'WorkI
thisComposer= \thisComposer_WorkI % \thisComposerMovI
\include "BoismortierJB/Balet_de_village/01_gaiment/music.ily"               %---------------------- [set to corresponding movement folder]
\include "common/conductor-staff.ily"


%--------------- 2nd Work: Loiellet
thisWork = "Trio Sonata" %\thisWorkMovI
thisIdentifier = "II" %\thisIdentifierMovI     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      "Lento affettuoso" % \thisTempoMovI          %---------------------- /common/variables.ily [set to corresponding movement]
thisTocLabel =   "#'MvmtI" %\label \thisLabelMovI   %---------------------- /common/variables.ily [set to corresponding movement]
\label #'WorkII
thisComposer= \thisComposer_WorkII % \thisComposerMovI
\include "LoielletJB/OP2_NO12/01_lento/music.ily"               %---------------------- [set to corresponding movement folder]
\include "common/conductor-staff.ily"



%--------------- 2nd Work: Loiellet 2nd movement
thisWork = "" %\thisWorkMovI
thisIdentifier = "II" %\thisIdentifierMovI     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      "Allegro" % \thisTempoMovI          %---------------------- /common/variables.ily [set to corresponding movement]
\label #'WorkII_II
thisComposer= "" % \thisComposerMovI
\include "LoielletJB/OP2_NO12/common/definitions.ily"
\include "LoielletJB/OP2_NO12/02_allegro/music.ily"               %---------------------- [set to corresponding movement folder]


\include "common/conductor-staff.ily"

%--------------- 2nd Work: Loiellet 3rd movement
thisWork = "" %\thisWorkMovI
thisIdentifier = "III" %\thisIdentifierMovI     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      "Largo sostenuto" % \thisTempoMovI          %---------------------- /common/variables.ily [set to corresponding movement]
\label #'WorkII_III
thisComposer= "" % \thisComposerMovI
\include "LoielletJB/OP2_NO12/common/definitions.ily"
\include "LoielletJB/OP2_NO12/03_largo/music.ily"               %---------------------- [set to corresponding movement folder]
\include "common/conductor-staff.ily"


%--------------- 2nd Work: Loiellet 4th movement
thisWork = "" %\thisWorkMovI
thisIdentifier = "IV" %\thisIdentifierMovI     %---------------------- /common/variables.ily [set to corresponding movement]
thisTempo =      "Allegro" % \thisTempoMovI          %---------------------- /common/variables.ily [set to corresponding movement]
\label #'WorkII_IV
thisComposer= "" % \thisComposerMovI
\include "LoielletJB/OP2_NO12/common/definitions.ily"
\include "LoielletJB/OP2_NO12/04_allegro/music.ily"               %---------------------- [set to corresponding movement folder]
\include "common/conductor-staff.ily"


















