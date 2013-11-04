==================
Document Structure
==================

:math:`\LaTeX` documents have two main parts: the preamble, and the body.

Preamble
========

The Required Command
--------------------
There is one required command for every :math:`\LaTeX` document, :code:`\documentclass`.
Specifying the class of the document tells :math:`\LaTeX` the basic formatting desired for the
document. There are many document classes, and they are covered on the document classes page.

Packages
--------
Once :math:`\LaTeX` knows what kind of document this is, relevant packages should be loaded.
Packages include new commands, environments, symbols, and generally increase the
functionality of :math:`\LaTeX` far beyond the bare minimum it natively includes. More
information on packages is included in the packages page.

New Commands
------------
New commands should be specified here. New commands make life easier by creating
shortcuts for calling symbols and oft-used symbol and information patterns. More
information on new commands is available in the new command lesson.

Formatting
----------
Generally, the last part of the preamble should be formatting. Now that packages are
loaded and new commands have been created, there are many options to fiddle with and
none will be overridden by loading packages after specifying custom formatting. Everything
in :math:`\LaTeX` can be customized. Fortunately, specifying the document class
prevents declaring the base formatting from being necessary. Sometimes, packages
allow for easier access to formatting, such as creating custom list levels and
formatting. More information on formatting is in the formatting lesson.

Miscellaneous Actions
---------------------
There are many, many more things that can be useful to have in the preamble. These
include declaring new operators, having an external preamble (to act as a stylesheet
or collection of common commands for many documents), and .

Body
====
The body of a document begins with the :code:`\begin{document}` command and ends with
the :code:`\end{document}` command. :math:`\LaTeX` treats everything between those
:code:`\begin` and :code:`\end` statements as the :code:`document` environment.

Except comments, everything written the body of a :math:`\LaTeX` document will be
processed during typesetting.


After the \\end{document}
=========================
Nothing after :code:`\end{document}` is used in the output. Common reasons for having
code after :code:`\end{document}` include debugging, testing, and temporary code storage.

Debugging and Testing
---------------------
Sometimes, :math:`\LaTeX` gives obscure errors and references lines which don't
actually contain errors. This is because :math:`\LaTeX` usually doesn't encounter the
errors until it tries to piece together code, such as at the end of an environment,
most commonly when writing math.

Putting :code:`\end{document}` inside of an environment does cause an error itself.
However, :math:`\LaTeX` will have processed all code up to that point so the original
error will still cause an issue. This is because when :math:`\LaTeX` encounters :code:`\end`,
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
