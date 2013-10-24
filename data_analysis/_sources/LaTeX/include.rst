======================================
Inputting and Including External Files
======================================
There are two similar commands to tell LaTeX to read a local external file, \\input and \\include.

Both tell LaTeX to read and typeset everything in an external document before continuing. They can be used to remove clutter from documents and streamline the process of creating more documents, acting as easy to make and edit pseudo-packages.

Differences between \\include and \\input
=========================================
There are a few main differences between \\include and \\input.

When told to \\input a file, LaTeX acts as if the text from the external file was copied and pasted into the current document, but when told to \\include the file, LaTeX will start a new page before and after the external content. As such, \\include cannot appear in the preamble since the document has not started yet, but \\include tells LaTeX to start new pages. So \\input can be used in nearly any location as a way to insert content, but \\include must be by itself.

The \\input command can be nested, but \\include cannot. So if document1 has an input command to document2, and document 2 has an input command to document3, then everything in document3 will be input to document1 also.

Generally, \\include would be used to make having chapters of a book in separate files, with one central document which typesets every chapter.

How to Use
==========
The syntax for using \\include and \\input is identical. To input document1.tex then include document2.tex, the commands would be ::

  \input{document1}
  \include{document2}


One use of \\input is to have a standard preamble document. Rather than needing a lengthy template to include common packages and user-defined formatting and commands, the preamble of a document could look as follows.::

  \documentclass{article}
  \include{preamble}
  \begin{document}


This is particularly useful for using LaTeX for homework, since each document for a given class probably needs the same preamble. It is also helpful for working on many documents in the same directory, since updating the preamble file updates all of the documents, rather than having to manually edit the preamble in each file.

Common Problems
===============
If a referenced document contains \\end{document}, inputting or including the document will cause LaTeX to stop typesetting once it reaches \\end{document}.













