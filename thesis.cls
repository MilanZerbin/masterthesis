\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}

\LoadClass[a4paper, bibliography=totocnumbered, listof=totocnumbered]{scrartcl}

%% packages
\RequirePackage[utf8]{inputenc}
\RequirePackage{geometry}
\RequirePackage{xcolor}
\RequirePackage{fancyhdr}
\RequirePackage[style=alphabetic, backend=biber, sorting=ynt]{biblatex}
\RequirePackage[pdfpagelabels=true, colorlinks=true]{hyperref}
\RequirePackage{tikz}
\usetikzlibrary{arrows, calc, cd}
\RequirePackage{amsmath, amssymb, amsthm, amsfonts, mathtools}
\RequirePackage{mathdots}
\RequirePackage{array}
\RequirePackage{graphicx}
\RequirePackage[twoside]{rotating} % for full page figures
\RequirePackage{enumitem}
\RequirePackage{csquotes}
\RequirePackage[plain]{fancyref}
\RequirePackage{float}
\RequirePackage[tikz]{mdframed} % will throw warnings, ignore!
\RequirePackage{subcaption}
\RequirePackage{listings} % for haskell code
\RequirePackage{marvosym} % for bordism-arrow "\bord"
\RequirePackage{dirtytalk} % provides "\say" for small quotes
\RequirePackage{microtype}

%% Stylistic choices
% renamings
\newcommand{\ie}{i.\@ e.\,}
\renewcommand{\emph}[1]{\textit{#1}}

% general choices
\setlength{\parindent}{0pt}
\renewcommand{\baselinestretch}{1.2}

% Font
\RequirePackage{CrimsonPro}
\let\oldnormalfont\normalfont
\def\normalfont{\oldnormalfont\mdseries} % fix mweights.sty

% themecolor
\definecolor{themecolordark}{HTML}{0B2F3A}

%% package configs
% geometry and page layout
\geometry{a4paper, top=35mm, left=30mm, right=27mm, bottom=35mm, headsep=15mm, footskip=15mm, twoside}

% Hypersetup
\hypersetup{
		pdftitle={On the homotopy type of the space of Metrics with positive scalar curvature on nonorientable Manifolds},
		pdfsubject={positive scalar curvature},
		pdfauthor={Milan Zerbin},
		pdfkeywords={bordism, psc, homotopy theory, tangential type, manifold, nonorientable},
		pdfcreator={pdflatex},
		pdfproducer={LaTeX},
		colorlinks=true,
		linkcolor=themecolordark,
		citecolor=themecolordark,
		urlcolor=themecolordark
}

% bibliography
\addbibresource{bib/sources.bib}

% haskell code setup using lstlisting
\lstset{
  frame=none,
  xleftmargin=2pt,
  stepnumber=1,
  numbers=left,
  numbersep=5pt,
  numberstyle=\ttfamily\tiny\color[gray]{0.3},
  belowcaptionskip=\bigskipamount,
  captionpos=b,
  escapeinside={*'}{'*},
  language=haskell,
  tabsize=2,
  emphstyle={\bf},
  commentstyle=\it,
  stringstyle=\mdseries\rmfamily,
  showspaces=false,
  keywordstyle=\bfseries\rmfamily,
  columns=flexible,
  basicstyle=\small\sffamily,
  showstringspaces=false,
  morecomment=[l]\%,
}
 

% fancyref setup (refer also to lemmas
\newcommand*{\fancyreflstlabelprefix}{lem}
\fancyrefaddcaptions{english}{%
  \providecommand*{\freflstname}{Lemma}%
  \providecommand*{\Freflstname}{Lemma}%
}
\frefformat{plain}{\fancyreflstlabelprefix}{\freflstname\fancyrefdefaultspacing#1}
\Frefformat{plain}{\fancyreflstlabelprefix}{\Freflstname\fancyrefdefaultspacing#1}

%% penalties (standard)
\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty=10000
