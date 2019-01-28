\ProvidesClass{cv}
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

\pagestyle{empty}
\RequirePackage[left=6.3cm,top=2.5cm,right=1.5cm,bottom=1cm,nohead,nofoot]{geometry}

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
    \node [rectangle, fill=secondary, anchor=north, minimum width=\paperwidth, minimum height=2.5cm] (box) at (current page.north){};
    \node [anchor=north] (name) at (box) {%
      \fontsize{40pt}{72pt}\color{primary}%
      {\headerfont #1}
    };
  \end{tikzpicture}
  \rule{\textwidth}{0.4pt}
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
%  \divider
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
\newcommand{\entry}[3]{%
  #1&\parbox[t]{12cm}{%
    \textbf{#2}\\%
    #3\vspace{\parsep}%
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
  \begin{textblock}{4.1}(1.5, 4.33)
  \begin{flushright}
  \obeycr
}{%
  \restorecr
  \end{flushright}
  \end{textblock}
  \let\section\oldsection
}
