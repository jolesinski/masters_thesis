%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% File:     aghdpl.cls           (LaTeX Document class option "aghdpl")
%          
% Author:  Marcin Szpyrka     (mszpyrka@agh.edu.pl)
%          Grzegorz J. Nalepa (gjn@agh.edu.pl)
%          AGH University of Science and Technology, Krak�w, POLAND
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\message{*** [aghdpl.cls] ---  (MSz, GJN)  v2.0.1 <24.06.2014>  ***}       

\newif\ifpdflatex\pdflatexfalse
\NeedsTeXFormat{LaTeX2e} % 
\ProvidesClass{aghdpl} 
\DeclareOption{pdflatex}{\pdflatextrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}} 
\ProcessOptions\LoadClass[a4paper,twoside,openright]{report} 

\RequirePackage{times}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage[usenames]{color}
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage{titlesec}
\RequirePackage{tocloft}

\geometry{lmargin=30mm, rmargin=20mm, tmargin=30mm, bmargin=30mm, foot=10mm, head=10mm}
\definecolor{Green}{rgb}{0.1,0.5,0.1}

\def\shorttitlePL#1   {\gdef\@shorttitlePL{#1}}
\def\shorttitleEN#1   {\gdef\@shorttitleEN{#1}}
\def\shortauthor#1    {\gdef\@shortauthor{#1}}
\def\titlePL#1        {\gdef\@titlePL{#1}}
\def\titleEN#1        {\gdef\@titleEN{#1}}
\def\faculty#1      {\gdef\@faculty{#1}}
\def\facultyEN#1      {\gdef\@facultyEN{#1}}
\def\thesistype#1   {\gdef\@thesistype{#1}}
\def\thesistypeEN#1   {\gdef\@thesistypeEN{#1}}
\def\supervisor#1   {\gdef\@supervisor{#1}}
\def\acknowledgements#1   {\gdef\@acknowledgements{#1}}
\def\department#1   {\gdef\@department{#1}}
\def\departmentEN#1   {\gdef\@departmentEN{#1}}
\def\degreeprogramme#1 {\gdef\@degreeprogramme{#1}}
\def\degreeprogrammeEN#1 {\gdef\@degreeprogrammeEN{#1}}


%\bibliographystyle{abbrv}
\linespread{1.3}
\renewcommand{\labelitemi}{--}

%------------------------------------------------------------------------------


\def\thesisheaders{
\fancyfoot[LE,RO]{\small \@shortauthor\quad\textit{\@shorttitlePL}}
}

\def\thesistable{
\begin{tabular}{p{45mm}l}
Autor: & {\itshape \@author}\\[-1mm]
Kierunek studi{\'o}w: & {\itshape \@degreeprogramme}\\[-1mm]
Opiekun pracy: & {\itshape \@supervisor}\\
\end{tabular}
}

\DeclareOption{en}{
\def\thesisheaders{
\fancyfoot[LE,RO]{\small \@shortauthor\quad\textit{\@shorttitleEN}}
}
}


\def\thesistableEN{
\begin{tabular}{p{45mm}l}
Author: & {\itshape \@author}\\[-1mm]
Degree programme: & {\itshape \@degreeprogrammeEN}\\[-1mm]
Supervisor: & {\itshape \@supervisor}\\
\end{tabular}
}

\ProcessOptions

\newcommand{\titlepages}{%

\newpage \titlepage 

\begin{center}
\vspace*{1.5cm}

\includegraphics[scale=0.6]{agh}

\vspace*{2mm}

{\sffamily{\large{\bfseries{\scshape Akademia G\'{o}rniczo-Hutnicza im. Stanis\l{}awa Staszica w Krakowie}}}

\vspace*{1mm}

{\small\bfseries \MakeUppercase{\@faculty}}}
\vspace*{3mm}

{\small{\MakeUppercase{\@department}}}
\vspace*{12mm}

{\sffamily\Large \@thesistype}
\vspace*{11mm}

{\sffamily\Large\itshape \@titlePL}
\vspace*{3mm}

{\sffamily\Large\itshape \@titleEN}
\vspace*{15mm}
\end{center}

\noindent
{\sffamily
\thesistable
}

\vspace*{17mm}

\centerline{\small\sffamily Krak\'{o}w, 2017}

\clearpage 
\thispagestyle{empty} 

{~~}\vspace{20mm}

{\large\itshape O\'swiadczam, \'swiadomy(-a) odpowiedzialno\'sci karnej za po\'swiadczenie nieprawdy, \.ze \mbox{niniejsz\k{a}} prac\k{e} dyplomow\k{a} wykona\l{}em(-am) osobi\'scie i samodzielnie i nie korzysta\l{}em(-am) ze \'zr\'ode\l{} innych ni\.z wymienione w pracy.}


\newpage \titlepage 

\begin{center}
\vspace*{1.5cm}

\includegraphics[scale=0.6]{agh}

\vspace*{2mm}

{\sffamily{\large{\bfseries{\scshape Akademia G\'{o}rniczo-Hutnicza im. Stanis\l{}awa Staszica w Krakowie}}}

\vspace*{1mm}

{\small\bfseries \MakeUppercase{\@facultyEN}}}
\vspace*{3mm}

{\small{\MakeUppercase{\@departmentEN}}}
\vspace*{12mm}

{\sffamily\Large \@thesistypeEN}
\vspace*{11mm}

{\sffamily\Large\itshape \@titleEN}
\vspace*{3mm}

%{\sffamily\Large\itshape \@titlePL}
\vspace*{20mm}
\end{center}

\noindent
{\sffamily
\thesistableEN
}

\vspace*{17mm}

\centerline{\small\sffamily Krak\'{o}w, 2017}


\clearpage \titlepage

\vspace*{15cm} \vfill
\begin{flushright} 
\begin{minipage}[!h]{10cm}
{\Large\itshape \@acknowledgements}
\end{minipage}
\end{flushright}

%\clearpage
%\thispagestyle{empty}
%\vspace*{15cm} \vfill
\clearpage

\setcounter{page}{5}

}


\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter.\ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}
\fancyhf{}
\fancyhead{}
%\fancyhead[L]{\slshape{\small \rightmark}}
\fancyhead[RE,LO]{\slshape{\small \rightmark}}
%\fancyhead[R]{\bfseries \thepage}
\fancyhead[RO,LE]{\bfseries \thepage}

\thesisheaders

\frenchspacing
\sloppy 
\widowpenalty     9999 
\clubpenalty      9999 
\flushbottom

%---------------------------------------------------------------------------
% Ustawienia parametr�w dla tytu��w rozdzia��w, podrozdzia��w, itd.
%---------------------------------------------------------------------------


\titleformat{\chapter}[block]
{\bfseries\LARGE}{\filright \LARGE\thechapter. }{0ex}{}
%odst�py: lewy, g�ra, d��
\titlespacing{\chapter}{0pt}{17mm}{19mm}
\titleformat{\section}[block]
{\bfseries\Large}{\filright \Large\thesection. }{0ex}{}
\titlespacing{\section}{7mm}{8mm plus 0mm minus 1mm}{4mm plus 0mm minus 1mm}
\titleformat{\subsection}[block]
{\bfseries\large}{\filright \large\thesubsection. }{0ex}{}
\titlespacing{\subsection}{7mm}{6mm}{2.5mm}
\titleformat{\subsubsection}[block]
{\bfseries\normalsize}{\filright \normalsize\thesubsubsection. }{0ex}{}
\titlespacing{\subsubsection}{7mm}{3mm}{1.5mm}

%---------------------------------------------------------------------------
% Ustawienia parametr�w generowania spisu tre�ci i spisu rysunk�w
%---------------------------------------------------------------------------

\renewcommand{\cfttoctitlefont}{\bfseries\Large}
\renewcommand{\cftbeforetoctitleskip}{20mm}
\renewcommand{\cftaftertoctitleskip}{19mm}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftchapaftersnum}{.}
\renewcommand{\cftsecaftersnum}{.}
\renewcommand{\cftsubsecaftersnum}{.}
\setlength{\cftparskip}{2pt}
\setlength{\cftbeforechapskip}{0mm}
\renewcommand{\cftchappagefont}{\normalsize}
