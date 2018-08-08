\version "2.19"
\include "../common/definitions.ily"
\relative c' {
 \key g \major
 \time 4/4   
  \partial 8
  \repeat volta 2 {
    r16 g''-.
	g16 ->( d ) b  c  d8  e ->( d ) g, ~ -> g16  fis  g  a  |
	b ( g ) d' ( b ) e ( d ) g  a  fis8  d  r16  a' \f b  c  |

    \tuplet 3/2 {b16 ( a  g}  \tuplet 3/2 {a  g  fis )} g  d  e  f \tuplet 3/2 {e ( d  c} \tuplet 3/2 { d  c  b )} \tuplet 3/2 {c ( b  a } \tuplet 3/2 { b  a  g )} |
	fis ( d' ) g,  c  a8. ( g16 ) g4 ~  g16  b \p a  g  |
	a8  d ~  d16  d  e  fis  g ( b, ) cis  d  cis ( b' ) a  g  |

    fis8. ( g32  a ) g16 ( fis ) e  d  cis8 \f a  r16  d \p( cis  d ) |
	 e ( d ) \tuplet 3/2 {cis ( d  e } d ) fis  e  fis  g ( fis ) \tuplet 3/2 {e ( fis  g } fis ) a  g  a  |
 
    \tuplet 3/2 {b16  (a  g)} \tuplet 3/2  {g  (a  b) } \hideTuplets  \tuplet 3/2 {a  (g  fis) } \tuplet 3/2 {fis  (g  a) } \tuplet 3/2 {g  (fis  e) } \tuplet 3/2 {e  (fis  g) } \tuplet 3/2 {fis ( g  a ) } \tuplet 3/2 {g  (a  fis) } |
	\tuplet 3/2 {e \f (fis  g) } \tuplet 3/2 {fis  (g  e) } \tuplet 3/2 {fis  (g  a) } \tuplet 3/2 {g  (a  fis) } e  a,  a'8 ~ -> a16  d,  g8 ~ -> | 
    \barNumberCheck #10 
%10
    \showTuplets g16 \ff e -.( fis -. g -.) e8. ( d16 ) <d fis, >4. \break

  }
    
    \repeat volta 2 {
    r16  a' -.-. 
    a16 ->( fis ) d -. a -. d ( fis ) a -. fis -. g8 -> g,  r16  d' ( g ) fis  |
	e8.  fis16  fis8. ( e16 ) dis8 -. b -. r16  b' -.\f g -. e -. |
    c16 ( b ) c8  r16  a' -. fis -. d -. b ( a ) b8  r16  g' -. e -. c -. |
	a (\p g ) a8  r16  fis' -. dis -. b -. \tuplet 3/2 {g ( a  b } \tuplet 3/2 {a  b  cis )} \tuplet 3/2 {b ( cis  dis } \tuplet 3/2 {cis  dis  e )} |
	dis ( b ) e -. fis -. fis8. ( e16 ) e8. (\p fis32  g ) fis16 ( e ) d -. c -. |
    b8. ( c32  d ) c16 ( b ) a -. g -. fis8 -. d -. r16  g \pp fis  g  |
	a ( g ) \tuplet 3/2 {fis ( g  a )} g  b  a  b  c ( b ) \tuplet 3/2 {a ( b  c )} b  d  c  d  |
    \tuplet 3/2 {e16 \f( d  c )} \tuplet 3/2 {c ( d  e )} \hideTuplets \tuplet 3/2 {d ( c  b )} \tuplet 3/2 {b ( c  d )} \tuplet 3/2 {c  (b  a) } \tuplet 3/2 {a  (b  c) } \tuplet 3/2 {b  (c  d) } \tuplet 3/2 {c  (d  b) } |
	\tuplet 3/2 {a  (b  c) } \tuplet 3/2 {b  (c  a) } \tuplet 3/2 {b  (c  d) } \tuplet 3/2 {c  (d  b) } a \ff d,  d'8 ~ -> d16  g,  c8 ~ -> |
    \barNumberCheck #20
    %20
    c16  a  b ( c ) a8. ( g16 ) g4. -> 
	
}
}
