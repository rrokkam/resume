\ProvidesClass{cv}
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

\pagestyle{empty}
\RequirePackage[left=2.5cm,top=1.6cm,right=2.5cm,bottom=1.6cm,nohead,nofoot]{geometry}


% Color
\RequirePackage{xcolor}

\definecolor{primary}{HTML}{333333} % dark gray
\definecolor{secondary}{HTML}{FFFFFF} % white


% Font
\RequirePackage[quiet]{fontspec}

\newfontfamily\headerfont[]{Lato-Light.ttf}
\setmainfont[Mapping=tex-text, Color=primary, BoldFont=Lato-Bold.ttf]{Lato-Regular.ttf}


% Header
\newcommand{\header}[2]{%
  \begin{center}%
  \fontsize{30pt}{36pt}\color{primary}%
      {\headerfont #1} \\
  \rule{\textwidth}{0.4pt}%
  #2
  \end{center}%
}


% Structure
\RequirePackage{parskip}
\RequirePackage{enumitem}
\setlength{\tabcolsep}{0pt}

\newenvironment{cvsection}[1]{%
  {\Large\color{primary}\textbf{#1}}\smallskip \\
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
  \end{tabular*}
}

\newcommand{\entry}[4]{%
  \textbf{#2} #1 \textbf{#3}\\
  \begin{minipage}{\textwidth}
  \begin{itemize}[noitemsep,topsep=0pt]%
  #4%
  \end{itemize}%
  \end{minipage}%
  \vspace{\parsep}\\
}

\newcommand{\entryy}[4]{%
  #1&\parbox[t]{14cm}{%
  \textbf{#2}%
  \hfill\textbf{#3}%
  \begin{itemize}[noitemsep,topsep=0pt]%
  #4%
  \end{itemize}%
  \vspace{\parsep}%
}\\}
