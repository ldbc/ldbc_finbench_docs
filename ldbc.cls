\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ldbc}

\ProcessOptions
\LoadClass[11pt,oneside,openany,a4paper]{book}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{epsfig}
\RequirePackage{color}
\RequirePackage{url}
\RequirePackage{ifthen}
\RequirePackage{amssymb}
\RequirePackage{longtable}
\RequirePackage{tgtermes}
\RequirePackage{relsize}
\RequirePackage[T1]{fontenc}
\RequirePackage{lastpage}
\RequirePackage{multirow}
\RequirePackage{xspace}

\newif\if@contributor

% Utility commands for writing to .aux file
\newcommand{\auxwrite}[1]{\protected@write\@auxout{}{#1}}
\newcommand{\writelabel}[3]{\auxwrite{\string\newlabel{#1}{{#2}{#3}}}}

% Information about the deliverable

\newcommand{\wpIDText}{WPx}
\newcommand{\WP}[1]{\renewcommand{\wpIDText}{WP#1}}
\newcommand{\wpTitleText}{Set WP title using WPTitle}
\newcommand{\WPTitle}[1]{\renewcommand{\wpTitleText}{#1}}

\newcommand{\delIDText}{D<xxx>}
\newcommand{\delID}[1]{\renewcommand{\delIDText}{D#1}}
\newcommand{\delNameText}{Specify deliverable name using delName}
\newcommand{\delName}[1]{\renewcommand{\delNameText}{#1}}

\newcommand{\dueContractualText}{M12}
\newcommand{\dueDate}[1]{\renewcommand{\dueContractualText}{#1}}
\newcommand{\dueActualText}{M12}
\newcommand{\submissionDate}[1]{\renewcommand{\dueActualText}{#1}}
\newcommand{\keywordsText}{}
\newcommand{\keywords}[1]{\renewcommand{\keywordsText}{#1}}

\newcounter{dissemination-level}
\newcommand{\dissPU}{\setcounter{dissemination-level}{1}}
\newcommand{\dissRE}{\setcounter{dissemination-level}{2}}
\newcommand{\dissPP}{\setcounter{dissemination-level}{3}}
\newcommand{\dissCO}{\setcounter{dissemination-level}{4}}
\newcommand{\disseminationLevelText}[1][\value{dissemination-level}]{%
  \ifthenelse{#1=1}{Public (PU)}{%
  \ifthenelse{#1=2}{Restricted to group (RE)}{%
  \ifthenelse{#1=3}{Restricted to programme (PP)}{%
  \ifthenelse{#1=4}{Consortium (CO)}{}}}}%
}

\newcounter{nature-level}
\newcommand{\natR}{\setcounter{nature-level}{1}}
\newcommand{\natP}{\setcounter{nature-level}{2}}
\newcommand{\natD}{\setcounter{nature-level}{3}}
\newcommand{\natO}{\setcounter{nature-level}{4}}
\newcommand{\natureText}[1][\value{nature-level}]{%
  \ifthenelse{#1=1}{Report (R)}{%
  \ifthenelse{#1=2}{Prototype (P)}{%
  \ifthenelse{#1=3}{Demonstrator (D)}{%
  \ifthenelse{#1=4}{Other (O)}{}}}}%
}

\newcommand{\authorText}{[names of main authors]}
\renewcommand{\author}[1]{\renewcommand{\authorText}{#1}}

\newcommand{\authorPartnerText}{names of main authors (with partner names in parentheses)}
\newcommand{\authorPartner}[1]{\renewcommand{\authorPartnerText}{#1}}

\newcommand{\contributorText}{[names of contributors]}
\newcommand{\contributor}[1]{\renewcommand{\contributorText}{#1}\@contributortrue}

\newcommand{\reviewerOneText}{[name]}
\newcommand{\reviewerOne}[1]{\renewcommand{\reviewerOneText}{#1}}

\newcommand{\reviewerTwoText}{[name]}
\newcommand{\reviewerTwo}[1]{\renewcommand{\reviewerTwoText}{#1}}

\newcommand{\responsibleAuthorText}{name}
\newcommand{\responsibleAuthor}[1]{\renewcommand{\responsibleAuthorText}{#1}}

\newcommand{\responsiblePartnerText}{partner}
\newcommand{\responsiblePartner}[1]{\renewcommand{\responsiblePartnerText}{#1}}

\newcommand{\responsibleEmailText}{email address}
\newcommand{\responsibleEmail}[1]{\renewcommand{\responsibleEmailText}{#1}}

\newcommand{\responsiblePhoneText}{phone number}
\newcommand{\responsiblePhone}[1]{\renewcommand{\responsiblePhoneText}{#1}}


\newcommand{\documentUrlText}{}
\newcommand{\documentUrl}[1]{\renewcommand{\documentUrlText}{#1}}

\newcommand{\abstractText}{}
\newcommand{\abstract}[1]{\renewcommand{\abstractText}{#1}}

\newcommand{\execSummaryText}{}
\newcommand{\execSummary}[1]{\renewcommand{\execSummaryText}{#1}}

\newcommand{\versionLogText}{}
\newcommand{\lastVersionText}{}
\newcommand{\versionLog}[1]{\renewcommand{\versionLogText}{#1}}
\newcommand{\versionLogEntry}[4]{%
    #1 \T & \@spacer{}#2 & \@spacer{}\parbox[t]{4.6cm}{\raggedright #3 \B} & \@spacer{}\parbox[t]{6.6cm}{\raggedright #4 \B} \\%
    \hline%
}
\newcommand{\lastVersion}[1]{\renewcommand{\lastVersionText}{#1}}
\newcounter{isfinal}
\setcounter{isfinal}{0}
\newcommand{\final}{\setcounter{isfinal}{1}}

% Page sizes and general layout for the 'report' variant

\renewcommand\RSlargest{50pt}

\newcommand{\normalLayout}{%
    \setlength{\hoffset}{-.5cm}%
    \setlength{\textwidth}{17.0cm}%
    \setlength{\evensidemargin}{0cm}%
    \setlength{\oddsidemargin}{0cm}%
    %
    \setlength{\textheight}{24.5cm}%
    \renewcommand{\headrulewidth}{0.2pt}%
    \renewcommand{\footrulewidth}{0.2pt}%
}
\normalLayout
\clubpenalty=9999
\widowpenalty=9999
\raggedbottom

% Header setup

\newcommand{\ldbcfinbenchdocversion}{0.0.1-SNAPSHOT}
\newcommand{\ldbcfinbenchdoctitle}{The LDBC Financial Benchmark -- version \ldbcfinbenchdocversion}
\delName{The LDBC Financial Benchmark \\ (version \ldbcfinbenchdocversion)}

\newcommand{\mainmatterheadingr}{\relscale{.92}}
\newcommand{\mainmatterheadingl}{\relscale{.92}\ldbcfinbenchdoctitle}
\pagestyle{fancy}
\fancyhead{}
\fancyhead[LO,RE]{\nouppercase{\leftmark}}
\fancyhead[RO,LE]{\nouppercase{\rightmark}}
\fancyfoot{}
\fancyfoot[LO,RE]{\mainmatterheadingl}
\fancyfoot[RO,LE]{Page \thepage{} of \pageref*{LastPage}}

% Customizations of the book style

% this command is overridden so that it does not kill the headers and footers
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                \global\@topnum\z@
                \@afterindentfalse
                \secdef\@chapter\@schapter}
\renewcommand\mainmatter{%
    %\if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  %\pagenumbering{arabic}
}


% this command is overridden so that it formats the chapter as I want
\def\@makechapterhead#1{{\noindent \normalfont\Large\scshape \thechapter \space #1}\par \vskip 15\p@}
\def\@makeschapterhead#1{{\noindent \normalfont\Large\scshape #1}\par \vskip 15\p@}
\renewcommand\section{\@startsection {section}{1}{\z@}{-3.5ex \@plus -1ex \@minus -.2ex}{2.3ex \@plus.2ex}{\normalfont\Large}}
\renewcommand{\bibname}{References}
\renewcommand\contentsname{Table of Contents}
\renewcommand*\l@chapter[2]{%
\ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
    \parindent \z@ \rightskip \@pnumwidth
    \parfillskip -\@pnumwidth
    \leavevmode \scshape
    \advance\leftskip\@tempdima
    \hskip -\leftskip
    #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \penalty\@highpenalty
    \endgroup
\fi}

% The title page

% two arguments: counter and value
\newcommand{\boolTick}[2]{\ifthenelse{\value{#1}=#2}{$\boxtimes$}{$\Box$}}

\def\@spacer{\hspace*{2mm}}

\newcommand{\ldbcdatatitlepage}{%
    \normalLayout%
    \setlength{\voffset}{-2.15cm}%
    \thispagestyle{empty}%
    \noindent \setlength{\unitlength}{1mm}%
    \begin{center}%
        \hspace{.5mm}
        \includegraphics[height=7cm]{figures/ldbc-logo.pdf} \hfill
    \end{center}%
    {\vspace{1.8cm}%
        \newcommand\T{\rule{0pt}{4.5mm}}%
        \newcommand\B{\rule[-2.5mm]{0pt}{0pt}}%
        \LARGE
        \begin{tabular}{c}\hspace*{16.6cm}\\[9mm]%
          \hline\Huge\relscale{1.05}%
          \parbox{16cm}{\vspace{3mm}\centering\bfseries \T \delIDText{} \delNameText \B} \\[3mm]%
        \hline%
        \end{tabular}%

        \vspace{2cm}
        {
        \begin{center}
        The specification was built on the source code available at \\
        \url{https://github.com/ldbc/ldbc_finbench_docs}
        \end{center}
        }

        \vspace{1cm}%
        \normalsize%
        \newpage%
        \normalLayout%
        \chapter*{Abstract}%
		\abstractText
        \newpage%
        \chapter*{Executive Summary}%
        \execSummaryText%
        \newpage%

    } %\newpage \normalLayout \fancyhead[OL,EL]{\mainmatterheadingl}\fancyhead[OR,ER]{\mainmatterheadingr}%
}

\renewcommand{\maketitle}{%
    \frontmatter%
    \pagenumbering{arabic}%
    \ldbcdatatitlepage%
    \tableofcontents%
    \mainmatter%
}

\newcommand{\ie}{i.e.\@\xspace}
\newcommand{\Ie}{I.e.\@\xspace}
\newcommand{\eg}{e.g.\@\xspace}
\newcommand{\Eg}{E.g.\@\xspace}
\newcommand{\etal}{et al.\@\xspace}
\newcommand{\etc}{etc.\@\xspace}
\newcommand{\vs}{vs.\@\xspace}
\newcommand{\viz}{viz.\@\xspace}
