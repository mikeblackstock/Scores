\version "2.18.2"
\include "../common/version.ily"
\include "../common/variables.ily"
\include "../common/mutopia-header.ily"
\include "../common/definitions.ily"
\include "../common/parts-dimension.ily"


%--------Part-specific settings
thisInstrName = \thisInstrNameI  %----------- /common/variables.ily
Part = \thisInstrName            %------------[fixed for parts]
thisClef = \thisClefInstrI       %----------- [manual entry]


%---------------First Piece
\include "../BoismortierJB/Balet_de_village/01_gaiment/music.ily"
thisWork= "Balet de Village"
thisComposer= \thisComposer_WorkI
theseNotes = \flute    %--------------- /mov_/music.ily
thisTempo = \thisTempo_WorkI_MovI  %--------------- /common/variables.ily
%thisIdentifier = \thisIdentifierMovI %------ /common/variables.ily
\include "../common/parts-staff-single-instr.ily" 
\pageBreak


%--------Part-specific settings
thisInstrName = \thisInstrNameII  %----------- /common/variables.ily
Part = \thisInstrName            %------------[fixed for parts]
thisClef = \thisClefInstrII       %----------- [manual entry]


%---------------First Mov
\include "../LoielletJB/Op2-No12/01/music.ily"
thisWork= "Trio Sonata"
thisComposer= \thisComposer_WorkII
theseNotes = \violin     %--------------- /mov_/music.ily
thisTempo = \thisTempo_WorkII_MovI  %--------------- /common/variables.ily
%thisIdentifier = \thisIdentifierMovI %------ /common/variables.ily
\include "../common/parts-staff-single-instr.ily" 

