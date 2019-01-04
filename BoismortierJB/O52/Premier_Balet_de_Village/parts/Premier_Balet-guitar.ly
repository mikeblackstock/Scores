%
% guitar part
%

%#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\version "2.18.2"
\include "../common/variables.ily"
\include "../common/mutopia-header.ily"
\include "../common/definitions.ily"
\include "../common/parts-dimension.ily"

%--------Part-specific settings
thisInstrName = \thisInstrNameIII  
Part = \thisInstrName              
thisClef = \thisClefInstrIII       


%------- -------First Mov
\include "../01/music.ily"
theseNotes = \guitar         
thisTempo = \thisTempoMovI  
thisIdentifier = \thisIdentifierMovI 
\bookpart { \include "../common/parts-staff-single-instr.ily" }

%---------------Second Mov
\include "../02/music.ily"
theseNotes = \guitar           
thisTempo = \thisTempoMovII  
thisIdentifier = \thisIdentifierMovII y
\bookpart { \include "../common/parts-staff-single-instr.ily" }

%--------------Third Mov
\include "../03/music.ily"
theseNotes = \guitar            %-------------- /mov_/music.ily
thisTempo = \thisTempoMovIII  %-------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovIII %----- /common/variables.ily
\bookpart { \include "../common/parts-staff-single-instr.ily" }

