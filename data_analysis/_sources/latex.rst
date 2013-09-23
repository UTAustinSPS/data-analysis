.. raw:: html

   <h1>LaTeX</h1>

Introduction (What's a :math:`\LaTeX`?)
------------
:math:`\LaTeX` ("lah-tech" or "lay-tech") is a markup language - one that allows the author to
more precisely (and easily) specify how layout and content are combined. :math:`\LaTeX` (which should
be written that way whenever possible) is based on Turing Award Winner Dr. Donald Knuth's :math:`\TeX`
typesetting system:

- Built for a "minimal amount of effort" for the author to produce high-quality documents
- Be totally platform- and time-independent for resultant documents

What is Used For?
-----------------
Besides making text look good, :math:`\LaTeX` is for

- Digital and hard-copy media
- Hyperlinks and document bookmarks in PDFs
- High-quality non-rasterized fonts for arbitrary-sized printing
- Embedding vector graphics

What Does it Look Like?
-----------------------
:math:`\LaTeX` documents are mostly the text you want to display, with additional information for formatting,
images, and other special features. A simple document looks like the following.

::

   \documentclass{article}
   \title{This is a title}
   \author{Evan Ott}
   \date{\today}
   \begin{document}
   \maketitle
   \begin{abstract}
      This is my abstract.
   \end{abstract}
   \section{This is a section}
      \begin{subsection}{This is a subsection}
         Here is my paragraph.
         Isn't it fun.
      \end{subsection}
   \end{document}
Which produces something like
.. raw:: html
   
   <img src="latex_example.jpg" alt="Example">

