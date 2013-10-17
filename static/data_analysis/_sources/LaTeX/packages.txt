Packages
========
Packages are sets of commands, environments, and formatting which expand LaTeX.

Common Packages and What they Do
--------------------------------
.. table:: **Table 1: Equalities, Inequalities, and Sets**

    =============== =======================================================================
    Package         What it does
    =============== =======================================================================
    amsfonts        fonts for math typesetting
    amsmath         math environments and symbols
    amssymb         symbols
    amsthm          customizable environments for theorems and other similar objects
    booktabs        improvements to the various table typesetting enviornments
    enumitem        list customization
    fancyhdr        page headers and footers
    geometry        page formatting options
    graphics        the \\includegraphics command, which allows for including graphics
    graphicx        an expanded version of the graphics package
    hyperref        create hyperlinks to facilitate moving through the pdf
    kbordermatrix   makes adding column and row labels to matrices easy
    microtype       plays with spacing between letters and words to reduce visual obtrusion
    natbib          flexible version of the \\cite command
    pgffor          for loops
    pgfplots        high quality 2D and 3D plots
    siunitx         typesetting SI units made easy
    subfigure       include multiple figures and tables in one figure
    tikz            diagram editor
    verbatim        an environment to display raw text
    xcolor          colored text and symbols
    xspace          smart spacing for macros, commands don't unnecessarily eat whitespace
    =============== =======================================================================
    


Optional Package Arguments
--------------------------
For the geometry package, it has an optional argument which can be filled with formatting options. By far, the most common use is::

  \usepackage[margin=1in]{geometry}


Natively, LaTeX uses very wide margins, and the above command narrows them to increase the amount of content per page.















