Document Structure and Syntax
=============================
*Mathematica* largely lacks the kind of structures one might find in other languages. Instead of
having sections like :math:`\LaTeX`, it simply has blocks of code you can execute. And unlike
languages like *Python*, *C* or *Java*, *Mathematica* will simply execute whatever block of code
is in focus. This eliminates the need for the "boilerplate" code that comes in many languages
of having to set up a particular "main" function to execute, by instead allowing the user
to essentially say "execute these lines".

Ordering Matters
----------------
Although *Mathematica* allows the user to execute lines in any order, this can lead to complications.
For example:

FIXME

Fortunately, the *Mathematica* application shows you the order in which statements were run by indexing
each line of code with "In[EXEC_NUM]" and each line of output with "Out[EXEC_NUM]". That way, when
using the language, you can backtrack what the values of variables/functions should be.

Basic Constructs
----------------
As already seen, assignment of variables is quite easy, with the statement

::

	x = 5

being read as "x is given the value 5". Most statements in *Mathematica* produce some kind of output
(the above would output the value 5), but this can be hidden by ending the statement with a semi-colon:

::

	x = 5;



