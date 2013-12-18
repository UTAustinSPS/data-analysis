.. role:: raw-html(raw)
   :format: html

============
Introduction
============
What's a :raw-html:`<span class="latex">L<sup>A</sup>T<sub>E</sub>X</span>`?
============================================================================
:raw-html:`<span class="latex">L<sup>A</sup>T<sub>E</sub>X</span>` ("lah-tech" or "lay-tech") is a text markup language - one that allows the author to precisely specify how layout and content are combined. More precisely, LaTeX is a set of macros for :raw-html:`<span class="latex">T<sub>E</sub>X</span>` the Turing Award winning typesetting program by Dr. Donald Knuth. It is

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

::
   
   \documentclass{article}
   \begin{document}
   Hello World!
   \end{document}



This produces the following document:


The first line says what kind of article we are working with. It contains formatting information like margins, spacing, and font. It also gives information about how the document is structured. Every document needs to have a document class. Usually, this is the first line of a LaTeX document.

The second line is the beginning of the content which will be typeset. The third line is the content of the document. The last line says to stop typesetting, and ignore everything afterwards.

Since specifying the document class and beginning/ending the document are required for every document, in general those will not be included in examples if not relevant.

A more complex document might look like this:

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


Which produces something like

.. image:: Figures/looklike.jpg
   :alt: Sample Document



Notice that some content for the document was specified *before* the document began. LaTeX stored some information in variables, which were later called. The line :code:`\title{This is a title}` stored :code:`This is a title` as the title of the document. The thing happens with the :code:`\author{}` and :code:`\date{}` commands. Those variables are stored once, and may be called throughout the document. In this case, they are called with the :code:`\maketitle` command.



















