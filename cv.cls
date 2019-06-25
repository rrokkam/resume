\ProvidesClass{cv}
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

\pagestyle{empty}
\RequirePackage[left=2.5cm,top=2.5cm,right=2.5cm,bottom=2.5cm,nohead,nofoot]{geometry}

%%%%%%%%%%
% Colors %
%%%%%%%%%%

\RequirePackage{xcolor}

\definecolor{primary}{HTML}{333333} % dark gray
\definecolor{secondary}{HTML}{FFFFFF} % white

%%%%%%%%%
% Fonts %
%%%%%%%%%

\RequirePackage[quiet]{fontspec}

\newfontfamily\headerfont[]{Lato-Light.ttf} % for name on top (otherwise looks too thick)

\setmainfont
[Mapping=tex-text, Color=primary,
BoldFont=Lato-Bold.ttf,
ItalicFont=Lato-Italic.ttf,
BoldItalicFont=Lato-BoldItalic.ttf
]
{Lato-Regular.ttf}


%%%%%%%%%%
% Header %
%%%%%%%%%%

\RequirePackage{tikz}

\newcommand{\header}[1]{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=secondary, anchor=north, minimum width=\paperwidth, minimum height=3cm] (box) at (current page.north){};
    \node [anchor=north] (name) at (box) {%
      \fontsize{30pt}{36pt}\color{primary}%
      {\headerfont #1}
    };
  \end{tikzpicture}
}

%%%%%%%%%%%%%
% Structure %
%%%%%%%%%%%%%

\RequirePackage{parskip}

\newcommand\divider{
  \begin{center}
  \noindent\rule{12cm}{0.3pt}
  \end{center}
}

\renewcommand{\section}[1]{
  \par\vspace{\parskip}
  {%
    \Large\color{primary}\textbf{#1}%
  }%
  \par\vspace{\parskip}
}

%%%%%%%%%%%%%%%%%%%%
% List environment %
%%%%%%%%%%%%%%%%%%%%

\setlength{\tabcolsep}{0pt}
\newenvironment{entrylist}{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
  \end{tabular*}
}
\newcommand{\entry}[3]{%
  #1&\parbox[t]{15cm}{%
    \textbf{#2}\\%
    #3\vspace{\parsep}%
  }\\}
