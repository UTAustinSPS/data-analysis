Lists, Tables, and Matrices
===========================
Often, we would like to do more than just store individual values, particularly
when we start wanting to analyze experimental data. As such, we would like
a way to analyze datasets all at once (finding the mean, standard deviation, etc.),
and may want to do even more. We'll now take a look at some of the ways we can
do this in *Mathematica*.

Lists
-----
Lists are a convenient way of storing linear data. For example, we might
want to store the results of several runs of an experiment (in Modern Lab,
maybe the Gamma-Gamma experiment with total number of photons captured in a given
time interval). We can do this fairly simply:
::

	data={21, 24, 25, 32, 31, 22, 18}

To access the elements of :code:`data`, we apply the indexing operator:
::

	data[[1]]
	data[[1;;2]]
	data[[2;;4]]
	data[[{1,3,5}]]

prints
::

	21
	{21, 24}
	{24, 25, 32}
	{21, 25, 31}

We can perform operations on lists as well, many of which can be extremely powerful:
::

	{1, 2, 3, 4, 5}^2
	Length[{4}] (*Length of list*)
	Total[{1,2,3,4,5}] (*Sum of all elements*)
	Mean[{0,1,2}] (*Arithmetic average of list*)
	Norm[{1,1,1,1}] (*The norm of the list - think the norm of a vector*)
	Dot[{0,1},{1,0}] (*Dot product of the given vectors*)
	Union[{1,2,3},{3,4,5}] (*Union of the two sets*)
	{0, 2, 4} + {4, 2, 0} (*Vector addition*)

prints
::

	{1, 4, 9, 16, 25}
	1
	15
	1
	2
	0
	{1, 2, 3, 4, 5}
	{4, 4, 4}

The above examples show some useful functions on lists. Applying a simple arithmetic
operators on scalars applies the operation to each element and returns that list.
Many desired functions often exist within *Mathematica* without having to re-create them
by hand: :code:`Length` is just the number of elements in the list, :code:`Mean` is
the arithmetic average of the elements, :code:`Norm` is the mathematical norm
:math:`||list||`, :code:`Dot` takes the the dot (inner) product of the two lists, and
:code:`Union` treats the lists as sets and takes the union. Many other useful functions
exist (many can be found
`here <http://reference.wolfram.com/mathematica/guide/ListManipulation.html>`__). The last
example above shows that the addition operator for lists can also be applied
to add each :math:`i^\textrm{th}` element and return the resultant list.

Tables
------
Tables are just lists created by the :code:`Table` command which is easy to use and effective
for producing sequences:

::

	Table[i,{i,1,10}]
	Table[i^2,{i,5}]
	Table[i, {i, {3, 2, 4}}]
	list = {2, 3, 4};
	Table[list[[i]]^2, {i, Length[list]}]
	Table[{i, list[[i]]^2}, {i, Length[list]}]

is

::

	{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	{1, 4, 9, 16, 25}
	{3, 2, 4}
	{4, 9, 16}
	{{1, 4}, {2, 9}, {3, 16}}

Essentially, :code:`Table` accepts some function over the domain given and will then
create the list of the elements in the sequence over the given elements in the domain.
The second example shows that given :code:`{i, N}`, the domain is :math:`i\in[1, N]`.
The third example shows that the elements to use can be given explicitly as well.
The last examples combine what we learned about lists above to show how easily
different concepts and structures in *Mathematica* can be combined.

Matrices
--------
Just as tables are actually just lists, lists are in fact matrices:

::

	{{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}

is the matrix :math:`\left(\begin{array}{ccc} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{array}\right)` in the same way that

::

	{{1, 2, 3}}

is the row vector :math:`\left(\begin{array}{ccc}1 & 2 & 3\end{array}\right)` and

::

	{{1}, {2}, {3}}

is the column vector :math:`\left(\begin{array}{c}1\\2\\3\end{array}\right)`.

We have many operations on matrices at our disposal too. For example:

::

	m = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
	Transpose[m]
	Det[m]
	m . m
	MatrixPower[m, 2]
	Eigenvalues[m]

is

::

	{{1, 4, 7}, {2, 5, 8}, {3, 6, 9}}
	0
	{{30, 36, 42}, {66, 81, 96}, {102, 126, 150}}
	{{30, 36, 42}, {66, 81, 96}, {102, 126, 150}}
	{3/2 (5 + Sqrt[33]), 3/2 (5 - Sqrt[33]), 0}

where :code:`Transpose[m]` computes the matrix transpose :math:`m^\intercal`
(:code:`ConjugateTranspose[m]` takes the transpose then converts each value
to its complex conjugate, giving :math:`m^\dagger`), :code:`Det[m]` computes the
determinant :math:`|m|`, :code:`m . m` computes the matrix product
(generally, when :math:`A` has dimensions :math:`m\times{n}`, :math:`B` has dimensions
:math:`n\times{p}`, this gives :math:`AB=A\times{B}` which has dimensions :math:`m\times{p}`, such that
:math:`(AB)_{i,j}=\sum_{k=1}^{n}A_{i,k}B_{k,j}`), :code:`MatrixPower[m, n]` computes
:math:`m^n=m\times m\times m\times \ldots \times m`, and :code:`EigenValues[m]`
gives the eigenvalues of the matrix :math:`m`.

.. admonition:: Eigenvalues
	:class: note
	
	If you keep hearing the term "eigenvalues" or "eigenvectors" around the physics department
	but aren't sure what they are, there's a quick tutorial in the appendix about it.
	You might need to brush up on matrices a little beforehand. The tutorial
	can be found `here <../Math/eigenvalues.html>`__.
