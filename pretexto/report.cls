
% bluereport.cls - Clase personalizada con estilo azul elegante (Versión limpia)
% Autor: Usuario
% Fecha: 2025/09/02

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{report}[2025/09/02 Clase personalizada con estilo azul]

%----------------------------------------
% Basada en article
\LoadClass[12pt,a4paper]{article}

%----------------------------------------
% PAQUETES REQUERIDOS
\usepackage[spanish]{babel}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}     % fuentes con soporte de acentos mejorado
\usepackage{listingsutf8}
\usepackage{textcomp}      % para algunos símbolos de texto
\usepackage{upquote}    
\usepackage{amsmath}
\usepackage{amssymb} 
\usepackage{graphicx}
\usepackage{color}
\usepackage{enumitem}
\usepackage{subfigure} 
\usepackage{float} 
\usepackage{capt-of} 
\usepackage{sidecap} 
\sidecaptionvpos{figure}{c} 
\usepackage{caption} 
\usepackage{commath}
\usepackage{graphicx, amsmath, amsthm, latexsym, amssymb, amsfonts, epsfig, float, enumerate, color, listings, graphicx, fancyhdr}
\usepackage{cancel} 
\usepackage[table,xcdraw]{xcolor}
\usepackage{anysize} 
\usepackage{listings}
\usepackage{xcolor}  % Para colores
\usepackage{booktabs}
\usepackage{pgfgantt}
\usepackage{pdflscape}
\usepackage[utf8]{inputenc}
\usepackage[colorlinks=true,plainpages=true,citecolor=blue,linkcolor=black]{hyperref}
\usepackage{fancyhdr} 
\usepackage{url}
\usepackage{appendix}
\usepackage[style=ieee, backend=biber]{biblatex}
\usepackage[inkscapelatex=false]{svg}

%----------------------------------------
% PALETA DE COLORES
\definecolor{dkgreen}{rgb}{0,0.6,0} 
\definecolor{gray}{rgb}{0.5,0.5,0.5} 
\definecolor{verde}{rgb}{0.18,0.549,0.2}
\definecolor{rojo}{rgb}{1, 0.302, 0.431}
\definecolor{black}{rgb}{0, 0, 0}
\definecolor{blue}{rgb}{0, 0.4648, 0.71}
\definecolor{charcoal}{RGB}{54,69,79}
\definecolor{primaryblue}{HTML}{38a3a1}

\definecolor{codegreen}{rgb}{0,0.6,0}          % Verde para comentarios
\definecolor{codegray}{rgb}{0.5,0.5,0.5}       % Gris para números de línea
\definecolor{codepurple}{rgb}{0.58,0,0.82}     % Púrpura para strings
\definecolor{backcolour}{rgb}{0.98,0.98,0.99}  % Color de fondo
\definecolor{keywordcolor}{rgb}{0,0.59,0.61}   % Color para palabras clave (class, def, etc.)
\definecolor{titlecolor}{rgb}{0.53,0,0}        % Color para títulos de clases y funciones
\definecolor{stringcolor}{rgb}{0,0.36,0.37}    % Color para strings
\definecolor{commentcolor}{rgb}{0.58,0.65,0.65} % Color para comentarios
\definecolor{primaryblue}{HTML}{38a3a1}

%----------------------------------------
% GEOMETRÍA
%\geometry{a4paper,left=2.5cm,right=2.5cm,top=3cm,bottom=3cm,headheight=15pt,headsep=0.5cm,footskip=1cm}

%----------------------------------------

\marginsize{2cm}{2cm}{2cm}{2cm} % Izquierda, derecha, arriba, abajo

\renewcommand{\appendixname}{Apéndices}
\renewcommand{\appendixtocname}{Apéndices}
\renewcommand{\appendixpagename}{Apéndices} 

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\footnotesize Ingeniería de Software para Sistemas Inteligentes} 
\fancyfoot[C]{\thepage} 
\renewcommand{\footrulewidth}{0.4pt}



% Definir el estilo para el código
\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{commentcolor},
    keywordstyle=\color{keywordcolor},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{stringcolor},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2,
    emph={class,def,__init__,return,import}, % Palabras clave adicionales
    emphstyle=\color{titlecolor},            % Estilo para palabras clave adicionales
    morekeywords={class,def,__init__,return,import}, % Añadir palabras clave
     % ahora añadimos los símbolos faltantes
}
%----------------------------------------
% ENTORNOS PERSONALIZADOS
\newenvironment{definicion}[1][Definición]{%
  \begin{tcolorbox}[
    colback=white,colframe=primaryblue,
    coltitle=white,colbacktitle=primaryblue,
    title=#1,fonttitle=\bfseries,
    boxrule=1pt,arc=3pt
  ]
}{\end{tcolorbox}}

\newenvironment{importante}[1][Importante]{%
  \begin{tcolorbox}[
    colback=white,colframe=purpledark,
    coltitle=white,colbacktitle=purpledark,
    title=#1,fonttitle=\bfseries,
    boxrule=1pt,arc=3pt
  ]
}{\end{tcolorbox}}


\newenvironment{descripcion}[1][Definición]{%
  \begin{tcolorbox}[
    colback=white,colframe=bluedar,
    coltitle=white,colbacktitle=bluedark,
    title=#1,fonttitle=\bfseries,
    boxrule=1pt,arc=3pt
  ]
}{\end{tcolorbox}}

\newenvironment{funcionalidades}[1][Definición]{%
  \begin{tcolorbox}[
    colback=white,colframe=pinkdark,
    coltitle=white,colbacktitle=pinkdark,
    title=#1,fonttitle=\bfseries,
    boxrule=1pt,arc=3pt
  ]
}{\end{tcolorbox}}

%----------------------------------------

