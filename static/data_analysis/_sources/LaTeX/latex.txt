.. role:: raw-html(raw)
   :format: html

============
Introduction
============
What's a :raw-html:`<span class="latex">L<sup>A</sup>T<sub>E</sub>X</span>`?
============================================================================
:raw-html:`<span class="latex">L<sup>A</sup>T<sub>E</sub>X</span>` ("lah-tech" or "lay-tech") is a text markup language - one that allows the author to precisely specify how layout and content are combined. More precisely, LaTeX is a set of macros for :raw-html:`<span class="latex">T<sub>E</sub>X</span>`, the Turing Award winning typesetting program by Dr. Donald Knuth. It is

- Built for a "minimal amount of effort" for the author to produce high-quality documents
- Totally platform- and time-independent for resultant documents

While stylized as :raw-html:`<span class="latex">L<sup>A</sup>T<sub>E</sub>X</span>`, it is most commonly written as LaTeX (*not* Latex).

What is Used For?
-----------------
Besides making text look good, LaTeX is for

- Digital and hard-copy media
- Hyperlinks and document bookmarks in PDFs
- High-quality non-rasterized fonts for arbitrary-sized printing
- Embedding vector graphics
- Professional presentations

What Does it Look Like?
-----------------------
LaTeX documents are mostly the text you want to display, with additional information for formatting,
images, and other special features. A simple document looks like the following.

.. sidebar:: Hello World

	.. image:: Figures/helloworld.png
	   :scale: 25%
	
	|


::
   
   \documentclass{article}
   \begin{document}
   Hello World!
   \end{document}

The first line says what kind of document we are working with by specifying the document's class as :code:`article`. The article class formatting information like margins, spacing, and font. It also gives information about how the document is structured and defines macros. Every document needs to have a document class. Usually, this is the first line of a LaTeX document.

The second line marks the beginning of the content which will be typeset. The third line is the content of the document, "Hello World!". The last line says to stop typesetting, and ignore everything afterwards.


A more complex document might look like the below. Click on the image to get a better view.

.. sidebar:: A More Complex Example

	.. image:: Figures/latexsimple.png
	   :scale: 42%
	   :alt: Sample Document

	|

::

  \documentclass{article}
  
  \title{This is a title}
  \author{Evan Ott}
  \date{\today}
  
  \begin{document}
  \maketitle
  \begin{abstract}
     This is an abstract.
  \end{abstract}
  \section{A Section}
     \begin{subsection}{A Subsection on Paragraphs}
        Here is a paragraph.
        
        To start a new paragraph, add
        a new line in between or LaTeX assumes it is the same paragraph.
        
        LaTeX        converts              many spaces to         one.
        
        
        
        The same goes for many blank lines. Extra horizontal space between words can be specified with \hspace{0.5in} \textbackslash hspace, and
        \vspace{0.5in}
        
        extra vertical space between paragraphs can be specified with \textbackslash vspace.
     \end{subsection}
   
  \end{document}





Notice that some content for the document was specified *before* the document began. LaTeX stored some information in variables, which were later called. The line :code:`\title{This is a title}` stored :code:`This is a title` as the title of the document. The same thing happens with the :code:`\author{}` and :code:`\date{}` commands. Those variables are stored once, and may be called throughout the document. In this case, they are called with the :code:`\maketitle` command.

The :code:`\begin{abstract}` calls the :code:`abstract` environment, which is automatically formatted for use in scientific journals. The :code:`\section` and :code:`\subsection` commands are formatted to give structure to the body of the document. As will be shown later, they populate the table of contents of the document (if :code:`\tableofcontents` is used). If large text is desired, but not the creation of new sections, refer to the formatting lesson.

Mathematics
===========
By far, one of the most useful features of LaTeX is its ability to beautifully typeset equations. The following example shows of a few of the features LaTeX math modes have.

.. sidebar:: Mathematics in LaTeX

	.. image:: Figures/math.png
	   :alt: Sample Document

	|


::
   
   
   \documentclass{article}
   \usepackage{amsmath}
   \usepackage[paperwidth=5in]{geometry}
   \usepackage[active, tightpage, pdftex]{preview}
   \setlength\PreviewBorder{20pt}
   
   \begin{document}
   
   \begin{preview}
   In LaTeX, math can be typeset inline using dollar signs. This can go from simple
   expressions such as $x^2+1> 0$ to more complex ones such as $\sum_{i=0}^\infty
   \frac{1}{2^i}=2$. Using single dollar signs around expressions invokes math mode.
   
   The align environment, included in the \textbf{amsmath} package is the standard
   for creating equations. Many features of the environment are included in the
   mathematics lesson. Below are the same expressions when typeset in the align
   environment.
   
   \begin{align}
   x^2+1>0\\
   \sum_{i=0}^\infty \frac{1}{2^i}=2
   \end{align}
   
   Notice that despite using the same code, LaTeX typeset both of the equations
   differently. In Equation (1), the spacing between characters is increased. In
   Equation (2), the fraction and summation are enlarged and the limits of the sum
   are above and below the sigma. This happens because LaTeX typesets things
   \textit{based on context}.
   \end{preview}
   
   \end{document}




Example Conventions
===================
Since specifying the document class and beginning/ending the document are required for every document, in general those will not be included in examples if not relevant. For all cases, unless noted otherwise, documents will assume the below.

::

  \documentclass{article}
  
  \begin{document}
  \end{document}


As displayed in the previous sections, examples will be cropped to show only the relevant portions of the rendered page rather than the entire document. For simple cases, this can be done in LaTeX with the :code:`preview` package.

::

  % Preamble
  \documentclass{article}
  \usepackage[active, tightpage, pdftex]{preview}
  \setlength\PreviewBorder{20pt}

  % Body
  \begin{preview}
  % Insert Content Here
  \end{preview}


The preview package and environment is useful for debugging, too, as only the content within the :code:`preview` environment is typeset. If no errors arise when typesetting a part of the document, then the problem is (probably) not in those lines of code.


The Power of Templates
======================
Before going off to write your own LaTeX documents, you may want to create a template document to base your others on. They can get quite long, and it is easier to copy and paste from an old document rather than remembering to type all of the commands and include all of the necessary packages every time. Several samples of templates for various uses are included on the templates page. Refer to the installation page for instructions on making new templates with TeXworks.





























