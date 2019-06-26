\ProvidesClass{cv}
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

\pagestyle{empty}
\RequirePackage[left=2.5cm,top=2.5cm,right=2.5cm,bottom=2.5cm,nohead,nofoot]{geometry}


% Color
\RequirePackage{xcolor}

\definecolor{primary}{HTML}{333333} % dark gray
\definecolor{secondary}{HTML}{FFFFFF} % white


% Font
\RequirePackage[quiet]{fontspec}

\newfontfamily\headerfont[]{Lato-Light.ttf}
\setmainfont[Mapping=tex-text, Color=primary, BoldFont=Lato-Bold.ttf]{Lato-Regular.ttf}


% Header
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


% Structure
\RequirePackage{parskip}

\renewcommand{\section}[1]{
  \smallskip{\Large\color{primary}\textbf{#1}}\smallskip
}


% List environment
\RequirePackage{enumitem}
\setlength{\tabcolsep}{0pt}

\newenvironment{entrylist}{%
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
  \end{tabular*}
}

\newcommand{\entry}[3]{%
  #1&\parbox[t]{14cm}{%
    \textbf{#2}\\%
    #3\vspace{\parsep}%
  }\\}

\newcommand{\entryy}[3]{%
  #1&\parbox[t]{14cm}{%
  \textbf{#2}\\%
  \vspace{-3.5mm}%
  \begin{itemize}[noitemsep,topsep=0pt]%
  #3%
  \end{itemize}%
  \vspace{\parsep}%
}\\}