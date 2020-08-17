\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lectureNotes}
\LoadClass[12pt]{amsart}

% PAGE
\RequirePackage{geometry}
\PassOptionsToPackage{paperwidth=152mm, paperheight=229mm, left=18mm, right=15mm, top=15mm, bottom=15mm, includefoot, twoside}{geometry}

% TYPOGRAPHY
\RequirePackage{microtype}
\microtypesetup{letterspace=50}
\setlength{\parindent}{0pt}
\linespread{1.1}

% TEXT FONT
\RequirePackage{libertine}
\renewcommand\ttdefault{cmtt}

% MATH
\RequirePackage{amsaddr}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{bm}
\RequirePackage{upgreek}
\RequirePackage{calrsfs}
\DeclareMathAlphabet{\pazocal}{OMS}{zplm}{m}{n}
\DeclareMathAlphabet{\mathbbmsl}{U}{bbm}{m}{sl}

% GRAPHICS
\RequirePackage{graphicx}
\RequirePackage{color}
\definecolor{Magenta}{RGB}{240, 0, 140}

% TITLE AND AUTHOR
\RequirePackage{xparse}
\RenewDocumentCommand\title{om}{
  \gdef\shorttitle{\lsstyle#1}
  \gdef\@title{\normalfont\lsstyle\Large#2}}
\renewcommand{\author}[2][]{%
  \stepcounter{g@author}
  \ifx\@empty\authors
  \gdef\authors{\lsstyle#2}%
  \else
  \g@addto@macro\authors{\lsstyle\and#2}%
  \fi
  \g@addto@macro\addresses{\author{\lsstyle#2}}%
  \@ifnotempty{#1}{%
  \ifx\@empty\shortauthors
  \gdef\shortauthors{#1}%
  \else
  \g@addto@macro\shortauthors{\lsstyle\and#1}%
  \fi
  }
}

% SECTION STYLE
\RequirePackage{titlesec}
\titleformat{\section}{\centering\normalfont\small\lsstyle\uppercase}{}{0.0em}{\hrulefill\\}[\vspace*{-5pt}\hrulefill]
\titleformat{\subsection}[runin]{\normalfont}{\normalfont\bfseries\thesubsection}{0.5em}{}

% ENUMERATIONS
\RequirePackage{enumitem}
\setlist[itemize]{leftmargin=*}
