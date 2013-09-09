\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{borgar}[2013/09/07 v0.1 Gymnasiearbetet Malmö Borgarskola]

\LoadClass[a4paper,12pt]{article}

\RequirePackage[a4paper,margin=2.5cm]{geometry}
\linespread{1}

\def \@title { [TITLE] }
\def \@subtitle { [SUBTITLE] }
\def \@author { [AUTHOR] }
\def \@supervisor { [SUPERVISOR] }
\def \@semester { [SEMESTER] }

\renewcommand{\title}[1]{ \def \@title { #1 } }
\newcommand{\subtitle}[1]{ \def \@subtitle { #1 } }
\renewcommand{\author}[1]{ \def \@author { #1 } }
\newcommand{\supervisor}[1]{ \def \@supervisor { #1 } }
\newcommand{\semester}[1]{ \def \@semester { #1 } }

%define title page layout
\renewcommand{\maketitle}{%
	\clearpage
	\thispagestyle{empty}
	\begin{flushleft}
		Gymnasiearbete (100 p) \hfill Handledare:\\
		Malm\"o Borgarskola \hfill \@supervisor\\
		\@semester
	\end{flushleft}
	\topskip0pt
	\vspace*{\stretch{.4}}
	\begin{center}
		\textbf{{\Huge { \@title }}}\\[9pt]
		{\Large { \@subtitle }}
	\end{center}
	\vspace*{\fill}
	\begin{flushright}
		F\"orfattare:

		\@author
	\end{flushright}
	\newpage
}
