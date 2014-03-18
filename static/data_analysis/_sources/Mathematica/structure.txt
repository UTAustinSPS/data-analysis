Document Structure and Syntax
=============================
*Mathematica* largely lacks the kind of structures one might find in other languages. Instead of
having sections like :math:`\LaTeX`, it simply has blocks of code you can execute. And unlike
languages like *Python*, *C*, or *Java*, *Mathematica* will simply execute whatever block of code
is in focus. This eliminates the need for the "boilerplate" code that comes in many languages
of having to set up a particular "main" function to execute, by instead allowing the user
to essentially say "execute these lines". To execute code in *Mathematica*, just hit
"Shift+Enter" with the code in focus (you'll see sections as you type). You don't need
to have the code highlighted to do so. You can have multiple lines to execute at once
by using just "Enter" between them, editing like normal text.

Basic Constructs
----------------
As already seen, assignment of variables is quite easy, with the statement

::

	x = 5

being read as "x is given the value 5". Unlike mathematics where :math:`x=4` is the same as
:math:`4=x`, in *Mathematica*, order matters. When we want to assign a variable, it must be
on the left-hand side, with the value on the right. We'll look at solving equations later, but
for now, we'll just allow variable assignment as written above. 

Variables must start with a letter (or special character - see below), but can be as long
as you'd like, including numbers after the first character. Punctuation generally cannot
be used as a variable name.

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

:code:`f` is now the function :math:`f(x)=x^2` and :code:`e` is an expression. The difference is that if we have defined
a variable :code:`x`, :code:`e` will be that value squared. But :code:`f` is still the function that squares its argument, rather
than giving the square of some pre-defined variable :code:`x`. For example:

::

	f[5]
	e
	x = 3;
	e
	f[4]
	f[y]
	f[x]
	Clear[x];
	f[x]

if executed sequentially will output:

::

	25
	x^2
	9
	16
	y^2
	9
	x^2

One handy part of *Mathematica* is that it supports the use of variables as input to functions (as seen with
:code:`f[y]` above). In that way, it can also handle function composition:

::

	u[x_] := x^2;
	v[x_] := x + 1;
	u[v[y]]

has the output:

::

	(y + 1)^2

Variable names can be any length, and can include numbers (after the first character).
So the following are fine:

::

	yankeeDoodle = 2
	Fi5hF1ngersANDcustard = 16

Throughout the text, we frequently use single-character names for variables for length
(such as using :code:`i` in a sum, or :code:`f[x]` for functions). Just remember, we can
make variables as long as we want - these conventions are just for space.

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

You can also use :code:`%n`, which gives the output of the :math:`n^\textrm{th}` execution, which is
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

:code:`/.` is telling *Mathematica* that you want to apply a particular set of values to variables in 
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

We can make a string from an expression :code:`expr` with :code:`ToString[expr]`, and
*concatenate*, or join together strings with :code:`<>`. For example:

::

	x = 5 ^ 2;
	y = "5 ^ 2 is " <> ToString[x];
	Print[y]

prints :code:`5 ^ 2 is 25` as expected (the :code:`Print` function prints the value, but
just as text, not as full output that could be used in another expression - to see the
same text as Output, we could have left off the semicolon on the definition for :code:`y`).

Finally, we do have some options for what kinds of information we place in our Notebook file
in *Mathematica*. The default is Input (including comments), but we can use the "Format"
option from the menu bar then "Style" to make the current cell a different type, such as Title
or Text. These are great for longer comments, or for presenting your work directly from
*Mathematica* (rather than copying results to something like *PowerPoint*).

Packages
--------
On rare occasions, functions we'd like to have are part of *Mathematica* but not available
by default. To make them available, we can use the :code:`Needs` function, which will
load a "package" (collection of functions) so that we can use them. For example,
to load the "ErrorBarPlots" package, we'll use:

::

	Needs["ErrorBarPlots`"]

Note that in addition to the double-quotes, we need the "backquote" or "backtick" character.
This is different from a single quote :code:`'`, and is usually found at the upper-left
portion of a QWERTY keyboard with the tilde (:code:`~`) character.

Modules
-------
After working with *Mathematica* for a while, you will notice that variables are
defined everywhere. If using complicated programming constructs, we might find it useful
to redefine values for a single function. In general, this is a topic in computer science
known as "scope". This means that we can have a variable :code:`x` in one section of code,
but have a variable defined elsewhere *also named* :code:`x` with a different value.

To see this idea of "scope" in *Mathematica*, we can use a :code:`Module`.
We define the local variables (where the scope is just in one function, not "global" for the
whole document) by placing all our code inside the module:

::

	f[x_]:=x^2
	g[x_]:= Module[{f}, f[y_]:=2^y;f[x]]
	g[x]
	g[3]
	f[x]
	f[3]

prints

::

	2^x
	8
	x^2
	9

What this shows is that no matter if :code:`f` is already defined,
we can redefine it without affecting any of the externally defined versions by using a
:code:`Module`. This is good for
shorthand when building complicated functions, and is necessary 
for creating re-usable functions
for application to many projects (such as creating a package, which is not part of
this course, but can be found in *Mathematica* with the help URL
"tutorial/SettingUpMathematicaPackages").

Special Characters
------------------
Sometimes for readability, we may want to include a special character, such as 
delta (:math:`\delta`) in code to make things more readable. If we wanted
to look at the behavior of a function at :math:`f(x\pm\delta{x})`, wouldn't it be
nice if we could just use :math:`\delta{x}` as a variable? It turns out that we can.
*Mathematica* has Greek, Hebrew, extended Latin and other characters built in. We can access
them by name using :code:`\[delta]`, for example, or by using the "Esc" key on the keyboard,
such as "Esc"+ :code:`delta` +"Esc". Most characters are just symbols to be used like any
other character, but some have additional properties. For example, :code:`\[Transpose]`
can be used as

::

	{{1,2},{3,4}}\[Transpose]

which, when copied into *Mathematica*, will look like :math:`\{\{1,2\},\{3,4\}\}^\top`.
For more, look at the *Mathematica* URL "tutorial/LettersAndLetterLikeForms".