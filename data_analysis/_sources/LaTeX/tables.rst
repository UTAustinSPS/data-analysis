============================
Tables, Arrays, and Matrices
============================
In text mode, tables are created using the :code:`tabular` environment. The analagous structure for math mode is the :code:`array` environment. There is also an envoronment in math mode specifically for matrices, :code:`matrix`.

The Tabular Environment
=======================
Like any environment, the tabular environment is started with :code:`\begin{tabular}{}` and ended with :code:`\end{tabular}`. It takes one mandatory arguments and one optional argument. The mandatory argument tells LaTeX how to format the columns.

Columns


-------------------
Packages for Tables
-------------------

:code:`longtable`
-----------------
Sometimes the native :code:`tabular` environment just doesn't cut it. For example, LaTeX typesets the entire :code:`tabular` environment in one page, but sometimes it is okay for tables to be split between pages or to go on for multiple pages. In this case, declar :code:`\usepackage{tabular}` in the preamble and use :code:`\begin{longtable}` and :code:`\end{longtable}` just as you would with the :code:`tabular` environment.




The Matrix Environment
======================

This works much like the previous two environments, but the matrix environemt is specifically designed for mathematical matrices. Note that there are several modified versions of the matrix environment which may come in handy.
::

    \begin{matrix}{1&0\\0&1}\end{matrix}
    \begin{pmatrix}{1&0\\0&1}\end{matrix}
    \begin{bmatrix}{1&0\\0&1}\end{matrix}
    \begin{Bmatrix}{1&0\\0&1}\end{matrix}
    \begin{vmatrix}{1&0\\0&1}\end{matrix}
    \begin{Vmatrix}{1&0\\0&1}\end{matrix}
    

The smallmatrix environment is useful for creating inline matrices which do not disrupt line spacing.
::

    The identity matrix, $\begin{matrix}1&0\\0&1\end{matrix}$
    The identity matrix, $\begin{smallmatrix}1&0\\0&1\end{smallmatrix}$

