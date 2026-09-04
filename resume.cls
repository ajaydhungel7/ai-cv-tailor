%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Resume class — XeLaTeX version
% Tuned to match Lucas Swanson layout spec:
%   Name: 20pt, Section headers: 12pt bold,
%   Subtitle: ~12.9pt, Contact: 11pt, Body: 10.5pt
%   Margins: 0.75L / 0.72R / 0.99T / 0.32B
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[2025/06/05 v1.0 Resume class XeLaTeX]

\LoadClass[10pt,letterpaper]{article}

\usepackage[parfill]{parskip}
\usepackage{array}
\usepackage{ifthen}

\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,
    urlcolor=blue,
}

\pagestyle{empty}

%----------------------------------------------------------------------------------------
%	EXPLICIT FONT SIZES (matching spec)
%----------------------------------------------------------------------------------------

\def\namesize{\fontsize{20}{24}\selectfont}
\def\subtitlesize{\fontsize{12.9}{15.5}\selectfont}
\def\contactsize{\fontsize{11}{13.3}\selectfont}
\def\sectionheadsize{\fontsize{12}{14}\selectfont}
\def\addressskip{\smallskip}
\def\sectionlineskip{\smallskip}
\def\nameskip{\smallskip}
\def\subtitleskip{\smallskip}
\def\sectionskip{\smallskip}

%----------------------------------------------------------------------------------------
%	HEADINGS COMMANDS
%----------------------------------------------------------------------------------------

\def \name#1{\def\@name{#1}}
\def \@name {}

\def \subtitle#1{\def\@subtitle{#1}}
\def \@subtitle {}

\def \addressSep {--}

\let \@addressone \relax
\let \@addresstwo \relax
\let \@addressthree \relax

\def \address #1{
  \@ifundefined{@addresstwo}{
    \def \@addresstwo {#1}
  }{
  \@ifundefined{@addressthree}{
    \def \@addressthree {#1}
  }{
    \def \@addressone {#1}
  }}
}

\def \printaddress #1{
  \begingroup
    \contactsize
    \def \\ {\addressSep\ }
    \centerline{#1}
  \endgroup
  \par
  \addressskip
}

\def \printname {
  \begingroup
    \hfil{\namesize\bf \MakeUppercase{\@name}}\hfil
    \nameskip\break
  \endgroup
}

\def \printsubtitle {
  \@ifundefined{@subtitle}{}{
    \begingroup
      \subtitlesize
      \centerline{\@subtitle}
      \subtitleskip
    \endgroup
  }
}

%----------------------------------------------------------------------------------------
%	PRINT THE HEADING LINES
%----------------------------------------------------------------------------------------

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document
  \printname
  \printsubtitle
  \@ifundefined{@addressone}{}{\printaddress{\@addressone}}
  \@ifundefined{@addresstwo}{}{\printaddress{\@addresstwo}}
  \@ifundefined{@addressthree}{}{\printaddress{\@addressthree}}
}

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSection}[1]{
  \sectionskip
  {\sectionheadsize\bf #1}
  \sectionlineskip
  \hrule
  \begin{list}{}{
    \setlength{\leftmargin}{0em}
  }
  \item[]
}{
  \end{list}
}

%----------------------------------------------------------------------------------------
%	WORK EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSubsection}[4]{
 {\bf #1} \hfill {#2}
 \ifthenelse{\equal{#3}{}}{}{
  \\
  {\em #3} \hfill {\em #4}
  }\smallskip
  \begin{list}{$\cdot$}{\leftmargin=0em}
   \itemsep -0.5em \vspace{-0.5em}
  }{
  \end{list}
  \vspace{0.5em}
}
