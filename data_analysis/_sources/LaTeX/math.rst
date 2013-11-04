Mathematics in LaTeX
====================

:math:`\LaTeX` has a math mode designed to format mathematics. It can be invoked on the
same line as text by enclosing the mathematics in dollar signs: :code:`$your math here$`.
::
   
   \documentclass{article}
   \begin{document}
   The positive real root of $x^4-16=0$ is $x=2$.
   \end{document}

The positive real root of :math:`x^4-16=0` is :math:`x=2`.

Basic Typesetting
-----------------

The most common typesetting needs in mathematics is the superscript and the subscript.
These can be accessed using the caret :code:`^` and the underscore :code:`_`.
::
   
   Consider the sequence $(x_i)$ where $x_i = 2^x$

These only work for a single character, so
::
   
   A gigabyte contains $2^30$ bytes. Let $x_ij=x_ji$.


actually returns: A gigabyte contains :math:`2^30` bytes. Let :math:`x_ij=x_ji`

To tell :math:`\LaTeX` that more than one character should be typeset as a superscript
or subscript, enclose the desired text in braces.
::
   
   A gigabyte contains $2^{30}$ bytes. Consider a matrix $A$ where $a_{ij}=a_{ji}$.

This gives the expected result of: A gigabyte contains :math:`2^{30}` bytes.
Let :math:`x_{ij}=x_{ji}`.

There is a native equation environment, displaymath, which can be invoked by encasing 
math inside double dollar signs or :code:`\[`, and :code:`\]`.

::
   
   \documentclass{article}
   \begin{document}
   $$e=\sum_{i=0}^\infty \frac{1}{i!}$$
   \[
   \sum_{i=0}^\infty x^i = \frac{1}{1-x}
   \]
   \end{document}

Both invoke the displaymath environment, and so are nearly identical. The only
difference is that :code:`\$\$` math :code:`\$\$` makes a call to :math:`\TeX` and 
:code:`\[`stuff :code:`\]` makes a call to :math:`\LaTeX`. It is not recommended to
use these environments except when minimal control is needed. The environments provided
by the amsmath package are much more robust and flexible.

Advanced Mathematics
--------------------

The amsmath and mathtools packages are essential whenever more than just the basics are required.