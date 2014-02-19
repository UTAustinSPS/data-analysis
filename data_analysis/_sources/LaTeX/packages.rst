=============
Packages List
=============
Packages are sets of commands, environments, and formatting which expand :math:`\LaTeX`.

Common Packages and What they Do
================================
.. table:: **Table 1: Equalities, Inequalities, and Sets**

    =============== ==============================================================================
    Package         What it does
    =============== ==============================================================================
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
    placeins        Includes \\FloatBarrier, which allows you to keep figures from moving too much
    pgffor          for loops
    pgfplots        high quality 2D and 3D plots
    siunitx         typesetting SI units made easy
    subfigure       include multiple figures and tables in one figure
    tikz            diagram editor
    verbatim        an environment to display raw text
    xcolor          colored text and symbols
    xspace          smart spacing for macros, commands don't unnecessarily eat whitespace
    =============== ==============================================================================
    


Optional Package Arguments
==========================
For the geometry package, it has an optional argument which can be filled with formatting options. By far, the most common use is
::

  \usepackage[margin=1in]{geometry}


Natively, LaTeX uses very wide margins, and the above command narrows them to increase the amount of content per page.

Package explanations
====================
siunitx
-------
Makes typesetting units very easy in math mode.

For the examples, it is assumed the package is loaded.
subfigure
---------


tikz
----
`This is the best introduction to tikz I have seen. <http://cremeronline.com/LaTeX/minimaltikz.pdf>`__. The tikz package allows you 
draw diagrams with code. This can be handy for drawing simple diagrams, and one mastered the package opens up with its ability to 
procedurally generate diagrams.

verbatim
--------
Adds the :code:`verbatim` environment. The verbatim environment is initialized like any other environment, with :code:`\\begin{verbatim}`. 
It is a special environment in that once in the environment, LaTeX will only recognize one command, :code:`\\end{verbatim}`. LaTeX will 
also read all text literally, so extra spaces and endlines will be typeset.

For example:

::
   
   \begin{verbatim}
   \begin{verbatim}
   \@@!^{
   \end{document} 
   Some text
   \begin{document
   \end{verbatim}


The above text produces no errors even though it would appear that it should cause problems. Since it is within the environment, even the second
:code:`\\begin{verbatim}` is typeset as text.

See `Verbatim text <https://en.wikibooks.org/wiki/LaTeX/Paragraph_Formatting#Verbatim_text>`__
for a fuller explanation.

xcolor
------
Allows you to make your documents colorful. After loading the package, you can use commands such as :code:`\\textcolor{gree}{this text is green}`
or :code:`{\\color{blue}{and this text is blue}}`. This package has many commands, pre-defined colors, and even ways to define new colors. Check
`xcolor's page on the LaTeX wikibook <https://en.wikibooks.org/wiki/LaTeX/Colors>`__ for great coverage.

xspace
------
When LaTeX processes commands, it records everything from the backslash to the 
next non-alphabetic character. Unfortunately, this means some commands have
unusual behavior when you try to put spaces after them. To remove this behavior,
include \xspace after commands. For example:

::
   
   \newcommand{\UT}{University of Texas\xspace}


The `documentation <http://mirror.math.ku.edu/tex-archive/macros/latex/required/tools/xspace.pdf>`__ is uncharacteristically well-written - check it out if you 
are interested. It begins with an excellent example showing how to use the \xspace command when creating new commands.

