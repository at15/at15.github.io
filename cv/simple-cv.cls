\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simple-cv}[2016/10/28 at15's custom CV class]
% based on https://www.sharelatex.com/blog/2011/03/27/how-to-write-a-latex-class-file-and-design-your-own-cv.html
\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage{geometry}
\RequirePackage[hidelinks,unicode]{hyperref}
\hypersetup{%
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={}
}

% switch off page number
\pagenumbering{gobble}
\geometry{left=1.8cm, top=1.0cm, right=1.8cm, bottom=2.0cm, footskip=.5cm}

\newcommand{\name}[1]{
  \centerline{\Large{#1}}
}
% \newcommand{\contact}[5]{
%     \centerline{#1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
%     {\Large} #4 \ {\Large} #5}
% }

\titleformat{\section}         % Customise the \section command
  {\large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}


\titleformat{\subsection}
  {\raggedright}
  {}{0em}
  {}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}



\newcommand{\workitems}[3]{
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}
}