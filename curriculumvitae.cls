% Intro Options
\ProvidesClass{resume}[2016/07/26 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.5cm, vmargin=1.5cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\newfontfamily{\FAFR}{Font Awesome 5 Free Regular}
\newfontfamily{\FAFS}{Font Awesome 5 Free Solid}
\newfontfamily{\FAB}{Font Awesome 5 Brands Regular}
\pagenumbering{gobble}
\usepackage{datetime2}
\usepackage{graphicx}
\graphicspath{ {./image/} }

% Color definitions
\definecolor{date}{HTML}{000000} 
\definecolor{primary}{HTML}{000000}
\definecolor{headings}{HTML}{0E0E0F}
\definecolor{subheadings}{HTML}{1A1C1E}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/NiveauGrotesk/, Scale=0.9]{Niveau-Lig}
\newcommand{\custombold}[1]
{\color{subheadings}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-ExtraLight}\selectfont #1 \normalfont}
\linespread{1}

\def\faEnvelope{{\FAFR \symbol{"F0E0}}} % Email
\def\faPhone{{\FAFS \symbol{"F095}}} % Phone
\def\faLinkedin{{\FAB \symbol{"F08C}}} % Linkedin
\def\faGithub{{\FAB \symbol{"F09B}}} % Github
\def\faStackOverflow{{\FAB \symbol{"F16C}}} % StackOverflow
\def\faPaper{{\FAFS \symbol{"F1EA}}} % Paper

% Date format
\DTMnewdatestyle{mylastupdate}{%
  \renewcommand*{\DTMdisplaydate}[4]{\DTMtwodigits{##2}.\DTMtwodigits{##3}.##1}\color{date}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-ExtraLight}\fontsize{10pt}{10pt}\selectfont%
  \renewcommand*{\DTMDisplaydate}{\DTMdisplaydate}%
}

% Name command
\newcommand{\namesection}[2]{
	\hspace{-1.7em}\raggedright{\parbox[b]{20em}{\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{20pt}{0cm}\selectfont #1}}
%    \hspace{1em}
    \raggedleft{\parbox[b]{30em}{\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{38pt}{14pt}\selectfont #2}}
   	\vspace{0.5em} 
}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-ExtraLight}\fontsize{18pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Jobtitle command
\newcommand{\workplace}[2]{
\color{subheadings}\raggedright
\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont
\hfill
\color{subheadings}\raggedleft
\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{12pt}{12pt}\selectfont\bfseries {#2} \normalfont
}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Positions command
\newcommand{\position}[2]{	\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{13pt}\selectfont {#1}\normalfont
\hfill
\color{subheadings}\raggedleft\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{13pt}\selectfont {#2\\}\normalfont
}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Positions command
\newcommand{\supervisor}[2]{	\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{13pt}\selectfont {#1}\normalfont
\hfill
\color{subheadings}\raggedleft\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{13pt}\selectfont {#2\\}\normalfont
}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Location command
\newcommand{\supervisoremail}[1]{\hfill \color{primary}\raggedright\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{12pt}\selectfont {#1\\} \normalfont
%\hfill
%\color{primary}\raggedright\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{12pt}\selectfont {#2\\} \normalfont
}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}
