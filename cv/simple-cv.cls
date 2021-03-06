\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simple-cv}[2016/10/28 at15's custom CV class]
% based on https://www.sharelatex.com/blog/2011/03/27/how-to-write-a-latex-class-file-and-design-your-own-cv.html
% https://tex.stackexchange.com/questions/9908/difference-between-loadclass-and-loadclasswithoptions
\LoadClassWithOptions{article}
% \LoadClass[12pt]{article}
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
\geometry{left=1.0cm, top=1.0cm, right=1.0cm, bottom=1.0cm, footskip=.5cm}

\newcommand{\name}[1]{
  \centerline{\Large{#1}}
}

% reduce subsection spacing https://tex.stackexchange.com/questions/53338/reducing-spacing-after-headings
\titlespacing{\section}{0pt}{10pt}{5pt}
\titlespacing{\subsection}{0pt}{4pt}{4pt}


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
