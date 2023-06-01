\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{colle}[2022/09/20 colle]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage[margin=2cm]{geometry}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{microtype}
\RequirePackage{unicode-math}
\setmainfont{TeX Gyre Pagella}
\setmathfont{TeX Gyre Pagella Math}
\RequirePackage{multicol}
\RequirePackage{enumerate}
\RequirePackage{xcolor}
\pagestyle{empty}
\setlength{\parindent}{0pt}

\newcounter{exonumber}
\setcounter{exonumber}{0}
\newcommand{\exo}{\addtocounter{exonumber}{1}\subsubsection*{\textsc{Exercice} \theexonumber}\normalsize}
\newcommand{\corr}{\subsubsection*{\textsc{Corrigé}}\scriptsize}

\newcommand{\Eleve}{eleve}
\newcommand{\eleve}[1]{\renewcommand{\Eleve}{#1}}

\newcommand{\Titre}{titre}
\newcommand{\titre}[1]{\renewcommand{\Titre}{#1}}

\renewcommand{\maketitle}{{\LARGE\bfseries\Titre}\hfill\Eleve\medskip
    \hrule\ \\[-.5em]}

\linespread{1.3}

\newcommand\tw{\texttt}

\newcommand\barmin[1]{\overline{#1\vphantom{b}}\,}
\newcommand\barmaj[1]{\overline{#1\vphantom{X}}}
\newcommand\card{\textrm{Card}}

% Environnement pmatrice pour des écritures serrées
\newenvironment{pmatrice}{
    \renewcommand\arraystretch{0.7}\begin{pmatrix}
        }
        {
    \end{pmatrix}\renewcommand\arraystretch{1}
}

% Point et coordonnées dans le plan
\newcommand\repaff{\left(\ O \ ; \ I\ ; \ \ J\ \right)}
% Repère du plan
\newcommand\rep{\left(O \ ; \ \vv{\imath}, \ \vv{\jmath}\right)}
% Repère de l'espace
\newcommand\repe{\left(O \ ; \ \vv{\imath}, \ \vv{\jmath}, \ \vv{k} \right)}
\newcommand\pc[3]{#1\left( #2 \ ; \ #3 \right)}
% Point du plan et ses coordonnées dépendant du nom.
\newcommand\pcf[1]{\pc{#1}{x_{#1}}{y_{#1}}}
\newcommand\pce[4]{\textrm{#1}\left( #2 \ ; \ #3 \ ; \ #4 \right)}
\newcommand\pcfe[1]{\pc{#1}{x_{#1}}{y_{#1}}{z_{#1}}}


% Vecteur du plan et coordonnées
\newcommand\vc[3]{\vv{#1}\begin{pmatrice} #2 \\ #3 \end{pmatrice}}
\newcommand\vce[4]{\vv{#1}\begin{pmatrice} #2 \\ #3 \\ #4 \end{pmatrice}}
\newcommand\cc[2]{\begin{pmatrice} #1 \\ #2 \end{pmatrice}}
\newcommand\cce[3]{\begin{pmatrice} #1 \\ #2 \\ #3 \end{pmatrice}}
\newcommand\norme[1]{\| \vv{#1} \|}
\newcommand\ps[2]{\ensuremath{\vv{#1}\cdot\vv{#2}}}
\newcommand\anglo[2]{\left( \vv{#1}  , \ \vv{#2} \right)}
\newcommand\N{\ensuremath{\mathbf{N}}}
\newcommand\Z{\ensuremath{\mathbf{Z}}}
\newcommand\D{\ensuremath{\mathbf{D}}}
\newcommand\Q{\ensuremath{\mathbf{Q}}}
\newcommand\R{\ensuremath{\mathbf{R}}}
\newcommand\C{\ensuremath{\mathbf{C}}}

\newcommand\oio[2]{\left]#1\ ;\ #2\right[}
\newcommand\oif[2]{\left]#1\ ;\ #2\right]}
\newcommand\fio[2]{\left[#1\ ;\ #2\right[}
\newcommand\fif[2]{\left[#1\ ;\ #2\right]}
\newcommand\iif[1]{\left]-\infty\ ;\ #1\right]}
\newcommand\iio[1]{\left]-\infty\ ;\ #1\right[}
\newcommand\fii[1]{\left[#1\ ;\ +\infty\right[}
\newcommand\oii[1]{\left]#1\ ;\ +\infty\right[}
\newcommand{\e}{\textrm{e}}
\newcommand\courbe[1]{\ensuremath{\mathcal{C}_{#1}}}

\newcommand\bis{$^{\textrm{\footnotesize bis}}$}
\newcommand\eme{$^{\textrm{e}}$\ }
\newcommand{\er}{$^{\textrm{er}}$\ }
\newcommand{\ere}{$^{\textrm{re}}$\ }

