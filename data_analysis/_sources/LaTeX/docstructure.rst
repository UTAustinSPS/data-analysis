.. role:: raw-html(raw)
   :format: html

==================
Document Structure
==================

:raw-html:`<span class="latex">L<sup>A</sup>T<sub>E</sub>X</span>`

LaTeX documents have two main parts: the preamble, and the body.

Useful Structures
=================
The Required Command
--------------------
There is one required command for every LaTeX document, :code:`\documentclass`.
Specifying the class of the document tells LaTeX the basic formatting desired for the
document. There are many document classes, and they are covered on the document classes page.

Body
----
The body of a document begins with the :code:`\begin{document}` command and ends with
the :code:`\end{document}` command. LaTeX treats everything between those
:code:`\begin` and :code:`\end` statements as the :code:`document` environment.

Except comments, everything written the body of a LaTeX document will be
processed during typesetting.


Sections, Subsections, and Subsubsections, Oh My!
-------------------------------------------------
LaTeX provides many commands which make it easy to organize the body of the document using headings. These built-in commands also automatically provide content for the table of contents (should you choose to have one).

The most common section command is :code:`\section{Section Name}`, with "Section Name" replaced with whatever you want the section to be called. These can be further divided with :code:`\subsection{}`, and :code:`\subsubsection{}`. For document class :code:`article`, these are generally the only ones you will need to use. If you are typesetting a :code:`book` or a :code:`report`, there is a heading level above section, :code:`\chapter{}`. The largest section heading level is :code:`\part{}`, and can be used in nearly any document.

There are :code:`\paragraph{}` and :code:`\subparagraph{}` commands. They allow paragraphs to have titles, and look like this:

::
   
   \paragraph{Paragraphs}
   I'm a paragraph!
   \subparagraph{Hey, }
   I'm just a subparagraph.

Using these commands to specify paragraphs is generally unnecessary since most documents don't need to be this structured. A paragraph break can be specified by inserting a plank line between paragraphs. If you want to keep the paragraph heading styling, but want to start the paragraph on it's own line, just insert an empty space as so.

::
   
   \paragraph{Another Paragraph} \hspace{0pt} \\
   I started on a new line!



The Preamble
============
Besides declaring the document class, having a preamble is completely optional. However, having a good preamble can save a lot of time with formatting. Ideally, it should function like a stylesheet for a webpage. The body of the document should have as little formatting as possible, made possible by the preamble.

The preamble contains packages, new commands, and formatting information. Packages include new commands, environments, symbols, and generally increase the functionality of LaTeX far beyond the bare minimum it natively includes. New commands make life easier by creating shortcuts for calling symbols and oft-used symbol and information patterns. 

Packages
--------
Once :raw-html:`L<sup>a</sup>T<sub>e</sub>X` knows what kind of document you are working in, relevant packages should be loaded. The order of packages loaded can matter, particularly if they alter some of the same settings. In this case, the package loaded last usually gets the final say. Packages are loaded with the


:code:`\usepackage{thepackage}` command. 

The :code:`usepackage` command also takes an optional argument which allows for changing some settings on the package. For example, the :code:`geometry` package allows margins to be set using this method. If you want your document to have margins of 1 inch rather than the default by loading the package with :code:`\usepackage[margin=1in]{geometry}`.

More information on packages is included in the packages page.

New Commands
------------
New commands are declared with :code:`\newcommand{}{}`, a command which has two mandatory arguments. The first argument specifies how the command is called, and the second are how LaTeX should interpret the command. Say we like the way :math:`\varepsilon` looks better than :math:`\epsilon`, but don't want to have to type :code:`\varepsilon` every time. By using :code:`\newcommand{\e}{\varepsilon}`, we can create :math:`\varepsilon` by just typing :code:`\e`.

The :code:`\newcommand{}{}` also takes an optional argument which specifies the number of arguments. More information on new commands is available in the new command lesson.

Formatting
----------
Generally, the last part of the preamble should be formatting. Now that packages are
loaded and new commands have been created, there are many options to fiddle with and
none will be overridden by loading packages after specifying custom formatting. Everything
in LaTeX can be customized. Fortunately, specifying the document class
prevents declaring the base formatting from being necessary. Sometimes, packages
allow for easier access to formatting, such as creating custom list levels and
formatting. More information on formatting is in the formatting lesson.

Miscellaneous Actions
---------------------
There are many, many more things that can be useful to have in the preamble. These
include declaring new operators, having an external preamble (to act as a stylesheet
or collection of common commands for many documents), and .

After the \\end{document}
=========================
Nothing after :code:`\end{document}` is used in the output. Common reasons for having
code after :code:`\end{document}` include debugging, testing, and temporary code storage.

Debugging and Testing
---------------------
Sometimes, LaTeX gives obscure errors and references lines which don't
actually contain errors. This is because LaTeX usually doesn't encounter the
errors until it tries to piece together code, such as at the end of an environment,
most commonly when writing math.

Putting :code:`\end{document}` inside of an environment does cause an error itself.
However, LaTeX will have processed all code up to that point so the original
error will still cause an issue. This is because when LaTeX encounters :code:`\end`,
it will typeset everything up to that point. If the only error is that :code:`\end{document}`
is inside an environment, then :code:`\end{document}` is before the error. If not, then
:code:`\end{document}` is after the error. This allows for a line-by-line search to
find the bug.

Code Storage
------------
Sometimes there is part of a document that doesn't fit anywhere inside the document
currently, but might later. Rather than deleting the code or storing it somewhere
else, placing it after :code:`\end{document}` allows for safe storage.

For larger projects, it is a better idea to learn and use version control so nothing
valuable will be lost.
