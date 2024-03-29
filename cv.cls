\ProvidesClass{cv}
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

\pagestyle{empty}
\RequirePackage[left=2.5cm,top=2cm,right=2.5cm,bottom=2cm,nohead,nofoot]{geometry}


% Color
\RequirePackage{xcolor}

\definecolor{primary}{HTML}{222222} % dark gray
\definecolor{secondary}{HTML}{FFFFFF} % white


% Font
\RequirePackage[quiet]{fontspec}

\newfontfamily\headerfont[]{Lato-Light.ttf}
\setmainfont[Mapping=tex-text, Color=primary, BoldFont=Lato-Bold.ttf]{Lato-Regular.ttf}


% Header
\newcommand{\header}[2]{%
  \begin{center}%
  \fontsize{26pt}{32pt}\color{primary}%
      {\headerfont #1} \\
  \vspace{-0.1cm}
  \rule{\textwidth}{0.4pt}%
  #2
  \end{center}%
}


% Structure
\RequirePackage{parskip}
\RequirePackage{enumitem}
\setlength{\tabcolsep}{0pt}

\newcommand{\cvsectionheader}[1]{%
  {\Large\color{primary}\textbf{#1}}\smallskip \\
}

\newenvironment{cvsection}[1]{%
  \cvsectionheader{#1}
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
  \end{tabular*}%
}

\newcommand{\entryheader}[2]{%
  \textbf{#1} \hfill \textbf{#2}\\
}

\newcommand{\entry}[1]{%
  \begin{minipage}{\textwidth}
  \begin{itemize}[noitemsep,topsep=0pt]%
  #1%
  \end{itemize}%
  \end{minipage}%
  \vspace{\parsep}\\
}
