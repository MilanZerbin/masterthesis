\ProvidesClass{presis}

\LoadClass[aspectratio=169]{beamer}

\RequirePackage{amsmath,amsfonts,amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{tcolorbox}
\RequirePackage{tikz}

\usetheme[darkmode]{pureminimalistic}

\renewcommand{\logotitle}{\includegraphics[width=.2\linewidth, trim=0 0 50 0, clip]{../img/logos/unia_logo_trim.png}}
\renewcommand{\logoheader}{}
\renewcommand{\logofooter}{\includegraphics[width=.5\linewidth]{../img/logos/unia_logo_inv.png}}

\newcommand{\circled}[1]{\tikz[baseline=(char.base)]{%
\node[shape=circle,draw,inner sep=2pt] (char) {#1};}}
\newcommand{\good}{{\color{emphcolor}good}}

\title[$\mR^+$ on $\id_\BO$-type manifolds]{Spaces of Positive Scalar Curvature Metrics on Non-Orientable Manifolds}
\author{Milan Zerbin}
\institute{Göttingen, 26.11.2024}
\date{26.11.2024}


