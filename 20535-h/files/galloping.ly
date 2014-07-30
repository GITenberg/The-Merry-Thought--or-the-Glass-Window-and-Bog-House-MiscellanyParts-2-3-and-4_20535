\version "2.8.6"
\include "english.ly"

\header { title = "The galloping song" }


melody = \relative c''

{   \clef treble   \key bf \major   \time 6/8 %  \set Staff.midiInstrument = "harpsichord" 
   \autoBeamOff

   g4 g'8 g,4 a8 | bf8 a g g4. |
    a4 a'8 a,4 bf8 | c bf a bf a g |
    bf'4 g,8 g4 a8 | bf8 c d ef d c |
    d8 e fs g d a' | fs4\trill d8 d4. \bar ":|"
    a'4 d,8 d4 a'8 | a8 a g g,4 g'8 |
    a8 g f e f g | cs,8 d e a, b cs |
    d8 e f g e a | f4\trill d8 d4 f8 | % change first ef to natural
    f8 d bf f'4 f,8 | ef4 g'8 fs8.\trill ef16 d8 |
    bf'8 g d ef g c, | a'8 f c d f bf, |
    g'8 f ef d c bf | bf8.\trill a16 g8 g4. ||
    
}

  \addlyrics {
  Bux -- om Joan got on a bald Mare;
  she rid ramp -- ing on to The Fair,
    with a Whip and Spur.
  Such jog -- ging, such flog -- ging,
  Such splash -- ing, such dash -- ing,
    was ne'er seen there.
  Jol -- ly Tom, cry'd out as she Come,
    thou Mon -- key Face,
                    Pun -- key Face,
    lous -- ey Face, Frouz -- ey Face,
    hold thy Hand,
    Make a Stand,
    thou'lt be down.
  No Soon -- er Tom. spoke,
  but Down comes Joan,
    with her Head and Bum up and down,
  So that her A----se was shown.
  Bald Mare ran gal -- lop -- ing all the Way home.
  }

\score {
\new Staff \melody 
  \layout {
  \context {
    \Score
    \remove Bar_number_engraver
} }
\midi { \tempo 4 = 60 }
}

