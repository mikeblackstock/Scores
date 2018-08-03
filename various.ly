\version "2.19"

\pointAndClickOff

%
% Define all the music first
%

musicA  = {
  \time 4/4 \key c \major
  \repeat unfold 20 {
    \relative c' { c4 d e f g a h c c h a g f e d g c1 }
  } \bar "|."
}

musicB = { \transpose c cis { \musicA } }

musicC = { \transpose c d   { \musicA } }

musicD = { \transpose c es  { \musicA } }

musicE = { \transpose c f   { \musicA } }



\paper {
    #(set-paper-size "a4")
    top-margin = 20\mm
    bottom-margin = 20\mm
    line-width = 170\mm
    left-margin = 20\mm
    ragged-bottom = ##f
    ragged-last-bottom = ##t
    print-page-number = ##t
    page-breaking = #ly:optimal-breaking
}

#(set-global-staff-size 18)



\book{
  \bookOutputSuffix "Collection"
  \bookpart {
    \markup { 
      \column {
        \vspace #5.0 \fill-line { \fontsize #18  "Titelpage" }
        \vspace #3.0 \fill-line { \fontsize #4.0 "This is an example." }
      }
    }
  }
  \bookpart {
    \paper  { print-page-number = ##f }
    \markup { \column { \vspace #5.0 \fill-line { \fontsize #4.0 "Page 2: empty, without pagenumber!" } } }
  }
  \bookpart {
     \paper  { system-count = #12 }
     \header { title = "Title A" subtitle = "Subtitle A"  composer = "Fred Foobar"  }
     \score  { \new Staff { \musicA } \layout { indent = 0.0 } }
   }
  \bookpart {
     \paper  { system-count = #14 }
     \header { title = "Title B" subtitle = "Subtitle B"  composer = "Fred Mbogo"  }
     \score  { \new Staff { \musicB } \layout { indent = 5.0 } }
   }
  \bookpart {
     \paper  { system-count = #16 }
     \header { title = "Title C" subtitle = "Subtitle C"  composer = "Fred Feuerstein"  }
     \score  { \new Staff { \musicC } \layout { indent = 10.0 } }
   }
  \bookpart {
     \paper  { system-count = #18 }
     \header { title = "Title D" subtitle = "Subtitle D"  composer = "Fred Foobar"  }
     \score  { \new Staff { \musicD } \layout { indent = 15.0 } }
   }
  \bookpart {
     \paper  { system-count = #20 }
     \header { title = "Title E" subtitle = "Subtitle E"  composer = "Fred Foobar"  }
     \score  { \new Staff { \musicE } \layout { indent = 20.0 } }
   }
  \bookpart {
    \paper  { print-page-number = ##f }
    \include "otherfile.ly"
    \markup { \column { \vspace #5.0 \fill-line { \fontsize #4.0 "Last page" } } }
  }
}


\book {
   \bookOutputSuffix "Piece-A"
   \paper  { system-count = #12 }
   \header { title = "Title A" subtitle = "Subtitle A"  composer = "Fred Foobar"  }
   \score  { \new Staff { \musicA } \layout { indent = 0.0 } }
}
 
\book {
   \bookOutputSuffix "Piece-B"
   \paper  { system-count = #14 }
   \header { title = "Title B" subtitle = "Subtitle B"  composer = "Fred Mbogo"  }
   \score  { \new Staff { \musicB } \layout { indent = 5.0 } }
}
 
\book {
   \bookOutputSuffix "Piece-C"
   \paper  { system-count = #16 }
   \header { title = "Title C" subtitle = "Subtitle C"  composer = "Fred Feuerstein"  }
   \score  { \new Staff { \musicC } \layout { indent = 10.0 } }
}
 
\book {
   \bookOutputSuffix "Piece-D"
   \paper  { system-count = #18 }
   \header { title = "Title D" subtitle = "Subtitle D"  composer = "Fred Foobar"  }
   \score  { \new Staff { \musicD } \layout { indent = 15.0 } }
}
 
\book {
   \bookOutputSuffix "Piece-E"
   \paper  { system-count = #20 }
   \header { title = "Title E" subtitle = "Subtitle E"  composer = "Fred Foobar"  }
   \score  { \new Staff { \musicE } \layout { indent = 20.0 } }
}























