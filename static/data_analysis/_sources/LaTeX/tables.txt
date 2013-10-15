Tables, Arrays, and Matrices
============================

The Tabular and Array Environments
----------------------------------





The array environment is a version of the tabular environment for math mode.






The Matrix Environment
----------------------

This works much like the previous two environments, but the matrix environemt is specifically designed for mathematical matrices. Note that there are several modified versions of the matrix environment which may come in handy.::

    \begin{matrix}{1&0\\0&1}\end{matrix}
    \begin{pmatrix}{1&0\\0&1}\end{matrix}
    \begin{bmatrix}{1&0\\0&1}\end{matrix}
    \begin{Bmatrix}{1&0\\0&1}\end{matrix}
    \begin{vmatrix}{1&0\\0&1}\end{matrix}
    \begin{Vmatrix}{1&0\\0&1}\end{matrix}
    

The smallmatrix environment is useful for creating inline matrices which do not disrupt line spacing.::

    The identity matrix, $\begin{matrix}1&0\\0&1\end{matrix}$
    The identity matrix, $\begin{smallmatrix}1&0\\0&1\end{smallmatrix}$

