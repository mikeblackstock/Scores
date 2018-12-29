%{
  ***********************************************************************
  *                                                                     *
  * Spacing, paper, and titles parameters.                              *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

% The variables \thisInstrName,\thisPart, \thisIdentifier, and \thisTempo
% MUST be defined ahead of the insertion of this file.

\include "version.ily"

\header {
  title = \markup { \abs-fontsize #20 \concat { \thisWork } }
  subtitle = \markup { \center-column { \abs-fontsize #18 \lower #2
                       \concat { \char ##x2014 \hspace #2
                                 \thisIdentifier         %-------------------- to be defined ahead of file insertion
                                 \hspace #2 \char ##x2014
  } } }
  composer = \markup \center-column {\abs-fontsize #12 \thisComposer}
  opus = \markup \center-column {\abs-fontsize #12 \lower #0 \thisOpus}
  piece = \markup { \abs-fontsize #14 \raise #1 { \hspace #20
                                             \thisTempo  %-------------------- to be defined ahead of file insertion
  } }
}

\paper {
  inner-margin = 12\mm             % marge int������rieure
  outer-margin = 9\mm              % marge ext������rieure
  top-margin = 12.6\mm             % marge sup������rieure
  bottom-margin = 8\mm             % marge inf������rieure
  print-page-number = ##t          % ������vite la num������rotation des premi������res pages
  two-sided = ##t                  % active les variables pour impression recto-verso

  %#(define page-breaking ly:page-turn-breaking) % autorise le saut de page sur les silences
  
  %% Default horizontal spacing (Fr: Dimensions horizontales par d������faut)
  indent = 20\mm              % left indent for first system (Fr: retrait ������ gauche du premier syst������me (par d������faut largeur de la page/14)
  short-indent = 0\mm         % left indent for rest of systems - change according to printer (Fr: retrait ������ gauche de tous les syst������mes)
  horizontal-shift = 0.0      % right indent for all systems (Fr: retrait ������ droite de tous les syst������mes)
 
  ragged-bottom = ##f         % emp������che la justification verticale des pages sauf la derni������re si mis ������ ##t (d������faut ##f)
  ragged-last = ##f           % emp������che la justification du dernier syst������me si mis ������ ##t (d������faut ##f)
  ragged-last-bottom = ##f    % force la justification verticale de la derni������re page si mis ������ ##f (d������faut ##t)
  ragged-right = ##f          % emp������che la justification ������ droite de la ligne si mis ������ ##t (d������faut ##f)
  
  % d������termine l���������espacement entre le dernier syst������me d���������une partition et le premier syst������me de la partition suivante,
  % en l���������absence de titrage ou markup qui les s������pare.
  score-system-spacing = #'((basic-distance . 14) (minimum-distance . 8) (padding . 1) (stretchability . 80)) % 120 par d������faut

  % d������termine l���������espacement entre un titre ou un markup de premier niveau, et le syst������me qui le suit.
  markup-system-spacing = #'((basic-distance . 8) (padding . 1.5) (stretchability . 15))	% 30 par d������faut

  % d������termine l���������espacement entre le dernier syst������me et le titre ou markup de haut niveau qui le suit.
  score-markup-spacing = #'((basic-distance . 12) (padding . 0.5) (stretchability . 40))	% 60 par d������faut

  % d������termine l���������espacement entre deux titres ou markups de premier niveau.
  markup-markup-spacing = #'((basic-distance . 1) (padding . 0.5))

  % d������termine l���������espace entre le haut de la surface imprimable et le milieu du premier syst������me en l���������absence de titre
  % ou markup de premier niveau en haut de page.
  top-system-spacing = #'((basic-distance . 1) (minimum-distance . 0) (padding . 1))

  % d������termine l���������espace entre le haut de la surface imprimable et le premier titre ou markup de premier niveau
  % en l���������absence de syst������me en haut de page.
  top-markup-spacing = #'((basic-distance . 0) (minimum-distance . 0) (padding . 1))
  
  %% Vertical spacing (Dimensions verticales)
  system-system-spacing = #'((basic-distance . 12) (minimum-distance . 12) (padding . 2) (stretchability . 60))
  
  %% Spacing between footer and last system on page
  last-bottom-spacing = #'((basic-distance . 11) (minimum-distance . 10) (padding . 1) (stretchability . 0))
  
  %----------------------------------Header Settings
  thisPart = \markup { \center-column { \fontsize #3 \bold
                       \Part                   %---------------- to be defined ahead of file insertion
             } }

  oddHeaderMarkup = \markup {
    \column {
      \fill-line {
        { \abs-fontsize #10 \on-the-fly #print-page-number-check-first
          \fromproperty #'page:page-number-string }
        { \center-column {
            \lower #1 \fontsize #-1 \thisPart } %---------------- to be defined earlier this file
        }
        { " " }
   } } }

  evenHeaderMarkup = \markup {
    \column {
      \fill-line { 
        { " " }
        { \center-column {
            \lower #1 \fontsize #-1 \thisPart } %---------------- defined earlier this file
        }
        { \abs-fontsize #10 \on-the-fly #print-page-number-check-first
          \fromproperty #'page:page-number-string }
   } } }
  
  %----------------------------------Footer Settings
  referenceFooter = \markup {
    \fill-line { \abs-fontsize #10 \concat {
                     \thisBigTitle              %---------------- /common/variables.ily
                     \hspace #0.4 \char ##x2014 \hspace #0.4 
                     \thisInstrName             %---------------- defined ahead of file insertion
  } } }
               
  evenFooterMarkup = \markup {  \override #'( baseline-skip . 0.5 )
    \column { 
      \fill-line {
        %% Copyright header field only on first page.
        \on-the-fly #part-first-page \fromproperty #'header:copyright
      }
      %% Added footer for all pages except first
      \fill-line { \on-the-fly #not-part-first-page {
                                                     \referenceFooter  %--- defined earlier this file
                                                    }
  } } }

  oddFooterMarkup = \markup { \override #'( baseline-skip . 0.5 )
    \column { 
      \fill-line {
        %% Copyright header field only on first page.
        \on-the-fly #part-first-page \fromproperty #'header:copyright
      }
      %% Added footer for all pages except first
      \fill-line { \on-the-fly #not-part-first-page { \referenceFooter }
  } } }
  
}   %--end \paper definition
  
