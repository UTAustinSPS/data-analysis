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

being read as "x is given the value 5". Unlike mathematics where :math:`x=4` is the same as
:math:`4=x`, in *Mathematica*, order matters. When we want to assign a variable, it must be
on the left-hand side, with the value on the right. We'll look at solving equations later, but
for now, we'll just allow variable assignment as written above.

Most statements in *Mathematica* produce some kind of output
(the above would output the value 5), but this can be hidden by ending the statement with a semicolon:

::

	x = 5;

We can at any point redefine variables (just do another assignment) or "clear" them, which will
turn them into a symbol again, using the :code:`Clear[x]` command, where :code:`x` is the 
variable we want to clear.

We can easily create functions and expressions of other variables:

::

	f[x_] := x^2
	e = x ^ 2

f is now the function :math:`f(x)=x^2` and e is an expression. The difference is that if we have defined
a variable "x", e will be that value squared. But f is still the function that squares its argument, rather
than giving the square of some pre-defined variable x. For example:

::

	f[5]
	g
	x = 3;
	g
	f[4]
	f[y]
	f[x]

if executed sequentially will output:

::

	25
	x^2
	9
	16
	y^2
	9

One handy part of *Mathematica* is that it supports the use of variables as input to functions (as seen with
:code:`f[y]` above). In that way, it can also handle function composition:

::

	u[x_] := x^2;
	v[x_] := x + 1;
	u[v[y]]

has the output:

::

	(y + 1)^2

Order Matters
-------------
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
each line of code with :code:`In[EXEC_NUM]` and each line of output with :code:`Out[EXEC_NUM]`. That way, when
using the language, you can backtrack what the values of variables/output should be.

However, in this textbook, unless otherwise noted, we will use the convention that all lines are executed
and executed sequentially down the page.

Building on Output
------------------
One construct that can be prone to errors, but can also make things easier to write if you're careful
is similar to the "Ans" feature on many Texas Instruments graphing calculators, which allows you to
load previous results. In *Mathematica*, this is done with the :code:`%` operator:

::

	5
	%^2
	%%^3
	%%%^3

This would print:

::

	5
	25
	125
	625

You can also use :code:`\%n`, which gives the output of the :math:`n^\textrm{th}` execution, which is
even more prone to errors.

Approximations
--------------
We will look at making physical approximations and solving problems numerically later on, but one useful
function to know about is the :code:`N` function. The canonical example of the use of the N function is this:

::

	pi_approx = N[Pi, 8]

which will take the built-in value :math:`\textrm{Pi}=\pi` with 8 digit precision and assigns that value
to "pi_approx". It is a powerful tool to get down to actual values instead of more abstract expressions.

Evaluating Symbolic Expressions
-------------------------------
When we have an expression, such as :code:`x^2`, we need not have :code:`x` defined (as seen above) for *Mathematica*
to run. In fact, *Mathematica* gives us considerable flexibility if we choose not to define :code:`x`, and
instead use the "replacement" operator (:code:`/.`) instead:

::

	g = x^2 + y
	g/.x->5
	g/.x->5/.y->2
	g/.{x->5, y->2}

would output:

::

	x^2 + y
	25 + y
	27
	27

:code:`/.` is telling mathematica that you want to apply a particular set of values to variables in 
the expression. The rule operator (:code:`->`) is stating that the variable on the left hand side should take the value
on the right hand side. You can apply many such substitutions one after another (
:code:`g/.x->5/.y->2`) or
apply many at once using curly braces (:code:`g/.{x->5, y->2}`).

Other Constructs
----------------
Two other constructs that will come in handy are comments and strings.

Comments are human-readable elements of the file that are not evaluated. They
are created by having a :code:`(*` then as much text as you want until a :code:`*)`. For example,

::

	(*Here is some information about why I'm assigning x the value y...*)
	x=y
	(*It can span multiple
	lines too.*)

Another useful consruct are strings. Strings are a way of passing text to *Mathematica*. We'll
end up using strings for display purposes later, but the way we construct them is simple.

::

	x = "This is a string, demarked by double-quotes on either side"

