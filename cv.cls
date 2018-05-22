\ProvidesClass{cv}
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

\pagestyle{empty}
\RequirePackage[left=6.1cm,top=2cm,right=1.5cm,bottom=2.5cm,nohead,nofoot]{geometry}

%%%%%%%%%%
% Colors %
%%%%%%%%%%

\RequirePackage{xcolor}

\definecolor{primary}{HTML}{333333} % dark gray
\definecolor{secondary}{RGB}{255,255,255} % white

%%%%%%%%%
% Fonts %
%%%%%%%%%

\RequirePackage[quiet]{fontspec}

\newfontfamily\thinfont[]{Lato-Light.ttf} % for name on top (otherwise looks too thick)

\setmainfont{texgyre}
% [Mapping=tex-text, Color=primary,
% BoldFont=texgyreheros-bold.otf,
% ItalicFont=texgyreheros-italic.otf
% ]
% {texgyreheros-regular.otf}

%%%%%%%%%%
% Header %
%%%%%%%%%%

\RequirePackage{tikz}

\newcommand{\header}[1]{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=primary, anchor=north, minimum width=\paperwidth, minimum height=2.5cm] (box) at (current page.north){};
    \node [anchor=center] (name) at (box) {%
      \fontsize{40pt}{72pt}\color{secondary}%
      {\thinfont #1}
    };
  \end{tikzpicture}
  \vspace{1cm} % spacing before the first section
  \vspace{-2\parskip}
}

%%%%%%%%%%%%%
% Structure %
%%%%%%%%%%%%%

\RequirePackage{parskip}

\renewcommand{\section}[1]{
  \par\vspace{\parskip}
  {%
    \LARGE\color{primary}\textbf{#1}%
  }
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
\newcommand{\entry}[4]{%
  #1&\parbox[t]{11.8cm}{%
    \textbf{#2}%
    \hfill%
    {\footnotesize\addfontfeature{Color=lightgray} #3}\\%
    #4\vspace{\parsep}%
  }\\}

%%%%%%%%%%%%%%
% Side block %
%%%%%%%%%%%%%%

\RequirePackage[absolute,overlay]{textpos}
\setlength{\TPHorizModule}{1cm}
\setlength{\TPVertModule}{1cm}
\newenvironment{aside}{%
  \let\oldsection\section
  \renewcommand{\section}[1]{
    \par\vspace{\baselineskip}
    {%
      \Large\color{primary}\textbf{##1}%
    }
  }
  \begin{textblock}{3.6}(1.5, 4.33)
  \begin{flushright}
  \obeycr
}{%
  \restorecr
  \end{flushright}
  \end{textblock}
  \let\section\oldsection
}
