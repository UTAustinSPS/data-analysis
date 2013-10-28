Document Structure and Syntax
=============================
*Mathematica* largely lacks the kind of structures one might find in other languages. Instead of
having sections like :math:`\LaTeX`, it simply has blocks of code you can execute. And unlike
languages like *Python*, *C* or *Java*, *Mathematica* will simply execute whatever block of code
is in focus. This eliminates the need for the "boilerplate" code that comes in many languages
of having to set up a particular "main" function to execute, by instead allowing the user
to essentially say "execute these lines".

Basic Constructs
----------------
As already seen, assignment of variables is quite easy, with the statement

::

	x = 5

being read as "x is given the value 5". Most statements in *Mathematica* produce some kind of output
(the above would output the value 5), but this can be hidden by ending the statement with a semicolon:

::

	x = 5;

We can easily create expressions of other variables and functions:

::

	f[x_] := x^2
	e = x ^ 2

f is now the function :math:`f(x)=x^2` and e is an expression. The difference is that if we have defined
a variable "x", e will be that value squared. But f is still the function that squares its argument, rather
than giving the square of some pre-defined variable x. For example:

::

	f[5]
	x = 3
	g
	f[4]
	f[y]
	f[x]

if executed sequentially will output:

::

	25
	3
	9
	16
	y^2
	9

One handy part of *Mathematica* is that it supports the use of variables as input to functions (as seen with
f[y] above). In that way, it can also handle function composition:

::

	u[x_] := x^2;
	v[x_] := x + 1;
	u[v[y]]

has the output:

::

	(y + 1)^2

Ordering Matters
----------------
Although *Mathematica* allows the user to execute lines in any order, this can lead to complications.
For example:

::

	x = 5;
	x ^ 2
	x = 2;

In the above example, if the statements are executed in the order above (as in most other
programming languages), the value 25 would be printed. But, if we instead execute the last statement
then the middle statement, the value 4 would be printed. As such, it is typically useful to not re-use
variables within a program, or at the very least to separate the blocks of code such that you
always fix the value before using it.

Fortunately, the *Mathematica* application shows you the order in which statements were run by indexing
each line of code with "In[EXEC_NUM]" and each line of output with "Out[EXEC_NUM]". That way, when
using the language, you can backtrack what the values of variables/functions should be.
