====================
Mathematics in LaTeX
====================

LaTeX has a math mode designed to format mathematics. It can be invoked on the
same line as text by enclosing the mathematics in dollar signs: :code:`$your 
math here$`. This is called "inline" math.
::
   
   The positive real root of $x^4-16=0$ is $x=2$.
   
The positive real root of :math:`x^4-16=0` is :math:`x=2`.

Basic Typesetting
=================

The most common typesetting needs in mathematics is the superscript and the 
subscript. These can be accessed using the caret :code:`^` and the underscore 
:code:`_`.
::
   
   Consider the sequence $(x_i)$ where $x_i = 2^x$.

Consider the sequence :math:`(x_i)` where :math:`x_i = 2^x`.

These only work for a single character, so
::
   
   A gigabyte contains $2^30$ bytes. Let $x_ij=x_ji$.


actually returns: A gigabyte contains :math:`2^30` bytes. Let :math:`x_ij=x_ji`

To tell LaTeX that more than one character should be typeset as a superscript
or subscript, enclose the desired text in braces.
::
   
   A gigabyte contains $2^{30}$ bytes. Consider a matrix $A$ where 
   $a_{ij}=a_{ji}$.

This gives the desired result: A gigabyte contains :math:`2^{30}` bytes.
Let :math:`a_{ij}=a_{ji}`.

There is a native equation environment, displaymath, which can be invoked by 
encasing math inside double dollar signs or :code:`\[`, and :code:`\]`. It can 
typeset up to one line of math at a time.

::
   
   \begin{document}
   $$e=\sum_{i=0}^\infty \frac{1}{i!}$$
   \[
   \sum_{i=0}^\infty x^i = \frac{1}{1-x}
   \]

Both invoke the displaymath environment, and so are nearly identical. The only
difference is that :code:`$$` math :code:`$$` makes a call to TeX and 
:code:`\[` stuff :code:`\]` makes a call to LaTeX. It is not recommended to use 
these environments except when minimal control is needed. The environments 
provided by the :code:`amsmath` package are much more robust and flexible. The 
most common replacement environment from :code:`amsmath` is :code:`align`, or 
:code:`align*` if you do not want individual lines to be numbered. As with all 
environments, these are opened and closed with :code:`\begin{}` and 
:code:`\end{}`. Just place the desired environment name between the braces. For 
example:
::

   \begin{align*}
   e&=\sum_{i=0}^\infty \frac{1}{i!}\\
   &=\lim_{n\rightarrow\infty}\left(1+\frac{1}{n}\right)^n
   \end{align*}

produces:

.. math::

   e&=\sum_{i=0}^\infty \frac{1}{i!}\\
   &=\lim_{n\rightarrow\infty}\left(1+\frac{1}{n}\right)^n

Everything that works in :code:`displaymath` works in :code:`align`. The main 
advantage of :code:`align` is that it can display many lines of mathematics at 
once, aligning them based on the location of the :code:`&` in each line.
   
Advanced Mathematics
====================

The :code:`amsmath` package is essential whenever more than just the 
basics are required. As mentioned above, most people use :code:`amsmath` for 
the :code:`align*` environment. Since :code:`amsmath` is not natively included 
in LaTeX, you must include the line :code:`\usepackage{amsmath}` in the 
preamble in order to use any of its functionality.

Equation Line Numbering
-----------------------
The :code:`align` environment allows 
