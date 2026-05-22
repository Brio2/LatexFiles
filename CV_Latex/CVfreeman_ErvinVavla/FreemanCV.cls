%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Freeman Curriculum Vitae
% Class File
% Version 3.0 (September 3, 2021)
%
% This class originates from:
% https://www.LaTeXTemplates.com
%.
% Authors:
% Vel (vel@LaTeXTemplates.com)
% Alessandro Plasmati
%
% License:
% CC BY-NC-SA 4.0 (https://creativecommons.org/licenses/by-nc-sa/4.0/)
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	CLASS CONFIGURATION
%----------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{FreemanCV}[2021/09/03 Freeman CV Class v3.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} % Pass through any extra options specified to the base class
\ProcessOptions\relax % Process class options

\LoadClass{article} % Load the base class

%----------------------------------------------------------------------------------------
%	REQUIRED PACKAGES AND MISC CONFIGURATIONS
%----------------------------------------------------------------------------------------
\usepackage{comment}
\usepackage{etoolbox} % Required for conditional logic and changing commands

\setlength{\parindent}{0pt} % Paragraph indentation

\usepackage{supertabular} % Required for the supertabular environment which allows tables to span multiple pages so sections with tables correctly wrap across pages

\usepackage{extsizes} % Allows using more default font sizes as a class option

\usepackage{fontawesome} % for \faCircle
\usepackage{tikz} 

%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------

\usepackage[
	a4paper, % Paper size
	top=1.75cm, % Top margin
	bottom=2.25cm, % Bottom margin, the standard is 1.75 but got modified to give space to the footer
	left=1.5cm, % Left margin
	right=1.5cm, % Right margin
	footskip=1cm, % Space from the bottom margin to the baseline of the footer
	headsep=0.5cm, % Space from the top margin to the baseline of the header
	headheight=1cm, % Height of the header
	%showframe % Uncomment to show frames around the margins for debugging purposes
]{geometry}

%----------------------------------------------------------------------------------------
%	COLUMN LAYOUT
%----------------------------------------------------------------------------------------

\usepackage{paracol} % Required for creating multi-column layouts that can span pages automatically

\AtBeginEnvironment{paracol}{\setlength{\parindent}{0pt}} % Paracols have default paragraph indentation and this overrides it to the template default of no indentation

\setlength\columnsep{0.05\textwidth} % Amount of horizontal space between the columns

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage{fontspec} % Required for specifying custom fonts under XeLaTeX

\defaultfontfeatures{Ligatures=TeX} % To support LaTeX ligatures (e.g. `` and --)
\defaultfontfeatures{Path=Fonts/} % Specify the location of font files

% The serif font used by default or explicitly with \textrm{}/\rmfamily
\setmainfont{EBGaramond}[
	UprightFont=*-Regular.ttf,
	BoldFont=*-Bold.ttf,
	BoldItalicFont=*-BoldItalic.ttf,
	ItalicFont=*-Italic.ttf,
	SmallCapsFont=*-SC.ttf
]

% The sans serif font used explicitly with \textsf{}\sffamily
\setsansfont{LibertinusSans}[
	UprightFont=*-Regular.otf,
	BoldFont=*-Bold.otf,
	ItalicFont=*-Italic.otf
]

\newfontfamily{\cursivefont}{freebooterscript} % New font family for the cursive font Freebooter Script

%\newfontfamily{\FA}{FontAwesome} % Create a new font family for FontAwesome icons
%\input{Fonts/fontawesomesymbols-xeluatex.tex} % Load a file to create shortcuts to the icons, see icon examples and their shortcuts in fontawesome.pdf in the Fonts folder
%%
\usepackage{amsmath}
%%
%----------------------------------------------------------------------------------------
%	HEADERS & FOOTERS
%----------------------------------------------------------------------------------------

\usepackage{fancyhdr} % Required for customizing headers and footers
\pagestyle{fancy} % Enable custom headers and footers

\renewcommand{\headrulewidth}{0pt} % Remove the default rule under the header
\renewcommand{\footrulewidth}{0.4pt} % Add a rule under the footer (optional)

\fancyhf{} % Clear default headers/footers by default, add headers and footers in the template file as per the example

\renewcommand{\footrule}{
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %inserisco la data corrente:
    \vskip -5pt % if negative moves text farther from the horizontal line
    \hbox to \headwidth{% %inserisco blocco testo di larghezza pari a quello del foglio
        \hspace{0.05cm}\today\hfil % Text on the left
    }%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \vskip 2pt % Moves the horizontal line closer to or farther from the text above
    \hrule height \footrulewidth width \headwidth %disegna una riga di ampiezza e con un acerta alrghezza
    \vskip 2pt % Standard skip to ensure alignment with the footer content
}
% Define the footer content
\fancyfoot[L]{%
    \parbox{\textwidth}{%
         I authorize the processing of my personal data in accordance with Legislative Decree 196 of June 30, 2003,\\ and Article 13 of the GDPR.
    }%
} % Left-aligned text in the footer
\fancyfoot[C]{} % Center-aligned text in the footer
\fancyfoot[R]{%
    \raisebox{-1.5\baselineskip}{% Adjust the vertical position of the image
        \includegraphics[width=0.18\textwidth]{NomeCognomePDF.PNG} % Image in the right footer
    }%
}

%----------------------------------------------------------------------------------------
%	SECTIONS
%----------------------------------------------------------------------------------------

\usepackage[nobottomtitles*]{titlesec} % Required for modifying sections, the nobottomtitles* pushes section titles to the next page when they are close to the bottom of the page

\renewcommand{\bottomtitlespace}{0.05\textheight} % The minimal space required from the bottom margin so a section title isn't moved to the next page

\titleformat
	{\section} % Section type being modified
	[block] % Section layout type, can be: hang, block, display, runin, leftmargin, rightmargin, drop, wrap, frame
	{\color{headings}\scshape\LARGE\raggedright} % Text formatting of the whole section, i.e. label and title
	{} % Section label (e.g. number) and its formatting
	{0pt} % Horizontal space between the section label and title
	{} % Code before the section title
	[\color{black}\titlerule] % Code after the section title

\titlespacing*{\section}{0pt}{0pt}{5pt} % Spacing around section titles, the order is: left, before and after

%------------------------------------------------

\titleformat
	{\subsection} % Section type being modified
	[block] % Section layout type, can be: hang, block, display, runin, leftmargin, rightmargin, drop, wrap, frame
	{\itshape} % Text formatting of the whole section, i.e. label and title
	{} % Section label (e.g. number) and its formatting
	{0pt} % Horizontal space between the section label and title
	{} % Code before the section title
	[] % Code after the section title

\titlespacing*{\subsection}{0pt}{8pt}{3pt} % Spacing around section titles, the order is: left, before and after

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

\usepackage[usenames, svgnames]{xcolor} % Required for defining and using custom colors

\definecolor{text}{HTML}{2b2b2b} % Main document text color, off-black
\definecolor{headings}{HTML}{701112} % Dark red color for headings
\definecolor{shade}{HTML}{F5DD9D} % Peach color for the contact information box
\definecolor{linkcolor}{HTML}{641c1d} % 25% desaturated headings color for links

\color{text} % Set the default text color

%----------------------------------------------------------------------------------------
%	LINKS
%----------------------------------------------------------------------------------------

\usepackage{hyperref} % Required for links

\hypersetup{
	colorlinks=true, % Whether to color the text of links
	urlcolor=linkcolor, % Color for \url and \href links
	linkcolor=linkcolor, % Color for \nameref links
}

%----------------------------------------------------------------------------------------
%	CUSTOM COMMANDS
%----------------------------------------------------------------------------------------

%\jobentry
% #1	{Nov 2023 -- Feb 2024} % Duration
% #2	{} % FT/PT (full time or part time)
% #3	{Red Propulsion} % Employer
% #4	{GUI developer} % Job title
% #5	{Learned Qt Creator and CPP to develop the initial graphical user interface.} 

% Command for adding a new job entry (work experience)
\newcommand{\jobentry}[5]{
	{\raggedleft\textsc{#1\expandafter\ifstrequal\expandafter{#2}{}{}{\hspace{6pt}\footnotesize{(#2)}}}\\[0.05cm]\par}  % Duration and conditional full time/part time text
	\expandafter\ifstrequal\expandafter{#3}{}{}{{\raggedright\large #3}\\} % Employer
	\expandafter\ifstrequal\expandafter{#4}{}{}{{\raggedright\large\textit{\textbf{#4}}}\\[4pt]} % Job title
	\expandafter\ifstrequal\expandafter{#5}{}{}{#5} % Description
	\medskip % Vertical whitespace
}

% Command for entering a new qualification (education)
\newcommand{\qualificationentry}[6]{
	\textsc{#1} & \textbf{#2}\\ % Duration and degree
    \expandafter\ifstrequal\expandafter{#3}{}{}{& \small \text{#3}\\} 
    % Department
	\expandafter\ifstrequal\expandafter{#4}{}{}{& \textit{#4}\\} % Institution
	\expandafter\ifstrequal\expandafter{#5}{}{}{& {\small\textsc{#5}}\\} % Thesis,Honors, achievements or distinctions (e.g. first class honors)
	\expandafter\ifstrequal\expandafter{#6}{}{}{& \footnotesize{#6}\\[3pt]} % Department
}

% Command for entering a new qualification (education)
\newcommand{\qualificationentrySecondType}[6]{
	\textsc{#1} & \textbf{#2}\\[-0.375cm] % Duration and degree
    \expandafter\ifstrequal\expandafter{#3}{}{}{& \small \text{#3}\\} 
    % Department
	\expandafter\ifstrequal\expandafter{#4}{}{}{& \textit{#4}\\} % Institution
	\expandafter\ifstrequal\expandafter{#5}{}{}{& {\small\textsc{#5}}\\} % Thesis,Honors, achievements or distinctions (e.g. first class honors)
	\expandafter\ifstrequal\expandafter{#6}{}{}{& \footnotesize{#6}\\[3pt]} % Department
}

% Command for adding a new job entry (project experiences)
\newcommand{\project}[5]{%
%\hspace{-0.25cm} % Adjust the value to shift the table to the left
\parbox{\textwidth}{% Ensures each project occupies the full width
\begin{tabular}{@{}p{1.5cm}p{5.75cm}@{}} % Fixed-width for the first column
    % First row: Year and Title
    {\makebox[1.5cm][r]{\textsc{#1}}} & \textbf{#2} \\ 
    % Second row: Type of project
    \expandafter\ifstrequal\expandafter{#3}{}{}{& \textit{#3} \\} 
    % Third row: Implementation
    \expandafter\ifstrequal\expandafter{#4}{}{}{& {#4} \\} 
    % Fourth row: Description
    \expandafter\ifstrequal\expandafter{#5}{}{}{& \small{#5} \\} 
\end{tabular}%
}%
\medskip % Consistent vertical spacing between projects
}

% Command for entering a separate table row -- used for any section that uses a two column table for alignment
\newcommand{\tableentry}[3]{
	\textsc{#1} & #2 \expandafter\ifstrequal\expandafter{#3}{}{\\}{\\[5pt]} % First the heading, then content, then a conditional insertion of whitespace if the third parameter has any content in it

}


% Command for entering a publication as a short DOI (digital object identifier) string to the publication, a link is automatically created
\newcommand{\doipublication}[4]{
	#1 & % Year
	\href{http://dx.doi.org/#2}{\expandafter\ifstrequal\expandafter{#3}{firstauthor}{\textbf{doi:#2}}{doi:#2}}% DOI string and if "firstauthor" is entered for the 3rd argument, this makes the DOI string bold indicating a first author publication
	\expandafter\ifstrequal\expandafter{#4}{}{\\}{\\[5pt]} % Conditional insertion of whitespace if the 4th parameter has any content in it
}

\newcommand{\icon}[3]{\makebox(#2, #2){\textcolor{#3}{\csname fa#1\endcsname}}}	%icon shortcut
\newcommand{\icontext}[4]{ 						%icon with text shortcut
	\vcenteredhbox{\icon{#1}{#2}{#4}} \vcenteredhbox{\textcolor{#4}{#3}}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      LanguageLevel
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define the custom command \LanguageLevel
    
\newcommand{\LanguageLevel}[1]{%  %funzione per disegnare cerchi bianchi e rossi, prende una variabile in ingresso (cioè [1])
A$1$ \,
    \begin{tikzpicture}[baseline={(0, -0.125)}]  % Adjust baseline to align with text
        % disegna sei cerchi bianchi
        \foreach \i in {1, 2, 3, 4, 5, 6} {
            \filldraw[fill=white, draw=black] (\i*0.44, 0) circle (0.15cm);
        }

        % Parte intera di #1
        \pgfmathtruncatemacro{\fullcircles}{floor(#1)}

        % Controlla se #1 è frazionario: 0 se intero, 1 se ha .5
        \pgfmathtruncatemacro{\halfcircle}{2*(#1-\fullcircles)}

        % Cerchio successivo da riempire a metà
        \pgfmathtruncatemacro{\nextcircle}{\fullcircles + 1}

        % Draw full red circles
        \ifnum\fullcircles>0
            \foreach \i in {1, ..., \fullcircles} {
                \filldraw[fill=headings!60!red, draw=black] (\i*0.44, 0) circle (0.15cm);
            }
        \fi

        % Draw half red circle if #1 is fractional
        \ifnum\halfcircle=1
            \begin{scope}
                \clip (\nextcircle*0.44-0.15, -0.15) rectangle (\nextcircle*0.44, 0.15);
                \filldraw[fill=headings!60!red, draw=black] (\nextcircle*0.44, 0) circle (0.15cm);
            \end{scope}
            \draw[draw=black] (\nextcircle*0.44, 0) circle (0.15cm);
        \fi

    \end{tikzpicture}%
    \, C$2$
}
