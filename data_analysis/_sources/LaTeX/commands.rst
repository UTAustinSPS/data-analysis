===============================
Commands and Special Characters
===============================
Commands are what LaTeX uses to translate plain text into a formatted document. Also known as control sequences, commands usually begin with a backslash, :code:`\ `.


Using Commands
==============
Commands generally fall into one of two categories: commands which take arguments, and those which do not. Arguments are data given to the command in order for it to run. Most commands which do not take arguments are symbols, such as :code:`\epsilon`. Others, such as the ubiquitous :code:`\begin`, always take an argument. Some, like the :code:`\newcommand` command, take two required arguments and one optional argument.

Optional arguments are included in square brackets. Optional arguments are not necessary for the command to be evaluated, and add more functionality to otherwise limited arguments.

The square root command, :code:`\sqrt{x}`, can be made into an arbitrary root by using its optional argument :code:`\sqrt[10]{x}`. 



Special Characters
==================
Nine special characters within LaTeX are

::
   
   \ { } $ ^ _ % ~ # &


See the symbols page for the correct ways to typeset these in documents. If used incorrectly can cause LaTeX to give very cryptic errors.

Backslash
---------
The :code:`\ ` is used to designate a command. Alphabetic characters and curly and square braces following the backslash are parsed into a command. See below for details. The double backslash, :code:`\\`, is used to start new lines. It is bad form to use it to start new lines in text mode - only use it in the align environment. To start new paragraphs, just insert a blank line. If the succeeding line should not be indented, use :code:`\noindent` before the first word of the line.

Curly Braces
------------
The :code:`{` and :code:`}` create tokens from the enclosed text. Normally, each character is a single token passed to the interpreter one at a time. When placed in curly braces, the text within the curly braces becomes one token. For example in :code:`\begin{align}`, they tell the :code:`begin` command to begin the :code:`align` environment by passing a token containing the information :code:`align`. In order to typeset fractions (which requires the :code:`\frac` command), curly braces need to be placed around numerators and denominators of more than one character or else the interpreter will assume only the first and second non whitespace characters following :code:`\frac` are the numerator and denominator respectively. So :code:`\frac1234` creates :math:`\frac1234`, while :code:`\frac{12}{34}` creates :math:`\frac{12}{34}`. This is because rather than accepting 1 and 2 as tokens, the curly braces pass 12 and 34 as tokens to fill the two arguments which :code:`\frac` takes. While it is faster to type :code:`\frac xy`, it is preferred to use :code:`\frac{x}{y}` to improve readability. Note that the :code:`xy` in the former requires a space after :code:`\frac`, as otherwise the interpreter will search for the :code:`\fracxy` command, which does not exist.

Dollar Sign
-----------
The :code:`$` is mainly used to invoke inline math mode. Inline equations require dollar signs before and after. Think of them as binary switches, where each one changes the state of the switch. A very common error in LaTeX is to have an odd number, causing the interpreter to interpret math code as regular text and text as math. The dollar sign is a control sequence, a shorthand stand in for :code:`\begin{math}`. For every situation I have encountered, just using dollar signs is sufficient.

Caret and Underscore
--------------------
The :code:`^` and :code:`_` are used to create superscripts and subscripts respectively. They are considered control sequences, and act on the following token. They only work in math mode. Since LaTeX does not include native subscripts and superscripts in text mode, I use these commands as a workaround.

::
   
   %Preamble
   \newcommand{\subs}[1]{$_{\text{#1}}$}
   \newcommand{\supe}[1]{$^{\text{#1}}$}


To use, pass the desired token to the appropriate command. For example, :code:`a\subs{0}` will produce :math:`\text{a}_\text{0}` and :code:`a\supe{0}` will produce :math:`\text{a}^\text{0}`.

Percent
-------
The percent symbol creates comments. Everything following the percent sign on the same line will not be typeset.

Tilde
-----
The tilde is a non-breaking space character. It is a typography tool which prevents the insertion of a line break between tokens. So :code:`water~main` will never allow the words water and main to be placed on separate lines. More accurately, between the tokens :code:`r` and :code:`m` as LaTeX will not normally break the words water and main into multiple lines. The non-breaking space also cannot be enlarged or shrunk, so it will force a standard space size. Normally, LaTeX automatically modifies individual spaces to justify the text.

Poundsign
---------
The poundsign is essential for creating new commands, indicating where the arguments of a command to be placed. See the New Commands lesson for more information.

Ampersand
---------
This is used within the align environments defined in the :code:`amsmath` package. They allow equations to be precisely aligned. When just one ampersand is used in each line of equations, the characters immediately succeeding the ampersands will have their left sides lined up. There are more complex relations when more than one ampersand is used per line, and these are described in the :code:`amsmath` package lesson.


