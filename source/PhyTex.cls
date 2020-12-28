\NeedsTeXFormat{LaTeX2e}[2020-10-01]
\ProvidesClass{PhyTex}[2001/05/25 Standard LaTeX minimal class]

\renewcommand\normalsize{\fontsize{10pt}{12pt}\selectfont}

\setlength{\textwidth}{6.5in}
\setlength{\textheight}{8in}

\pagenumbering{arabic}  % but no page numbers are printed because:
\pagestyle{empty}       % this is actually already in the kernel

\RequirePackage{Version}