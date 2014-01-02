Mathematical Logic
==================
While not part of this course, sometimes we find it useful for optimization's sake, to
apply conditions to functions (particularly for something like the :code:`RegionPlot`,
or for evaluating complicated functions like integrals). While logic can be broken into
many sub-fields, each rich with history and modern research, we'll focus on a small
subset that's relevant here, with a less-formal introduction than one might
find in a discrete mathematics, number theory, or set theory textbook.

Boolean Algebra
---------------
Some of the useful constructs are those found in Boolean algebra. In Boolean algebra,
we have values true (denoted :math:`\top`) and false (denoted :math:`\perp`). These
comprise the entire domain, but we can create functions on these nevertheless.
To describe them, we'll often use a "truth table" which essentially shows the
rules for how the functions behave based on the values of the arguments.

For example, let's look at conjunction (otherwise known as "and", and denoted :math:`\wedge`):

.. table:: Truth Table for Conjunction

	============= ============= ==================
	:math:`A`     :math:`B`     :math:`A\wedge{B}`
	============= ============= ==================
	:math:`\top`  :math:`\top`  :math:`\top`
	:math:`\top`  :math:`\perp` :math:`\perp`
	:math:`\perp` :math:`\top`  :math:`\perp`
	:math:`\perp` :math:`\perp` :math:`\perp`
	============= ============= ==================

Thus, :math:`A\wedge{B}` is only true when both :math:`A` and :math:`B` are true, and false
otherwise. We also have disjunction (known as "or", denoted :math:`\vee`), implication
(denoted :math:`\rightarrow`, generally stated in English as :math:`A\rightarrow{B}` meaning
"if A is true, then B is true"), negation (known as "not", denoted :math:`\neg`), and
biconditional (known as "equality", denoted :math:`\leftrightarrow` or :math:`=` or
:math:`\equiv`):

.. table:: Truth Table for Other Functions

	============= ============= ================== ======================= =============== ===========================
	:math:`A`     :math:`B`     :math:`A\vee{B}`   :math:`A\rightarrow{B}` :math:`\neg{A}` :math:`A\leftrightarrow{B}`
	============= ============= ================== ======================= =============== ===========================
	:math:`\top`  :math:`\top`  :math:`\top`       :math:`\top`            :math:`\perp`   :math:`\top`
	:math:`\top`  :math:`\perp` :math:`\top`       :math:`\perp`           :math:`\perp`   :math:`\perp`
	:math:`\perp` :math:`\top`  :math:`\top`       :math:`\top`            :math:`\top`    :math:`\perp`
	:math:`\perp` :math:`\perp` :math:`\perp`      :math:`\top`            :math:`\top`    :math:`\top`
	============= ============= ================== ======================= =============== ===========================

We can, of course, combine these functions. They do have an order of operations, with
negation evaluated first, then conjunction and disjunction (at the same time), then
implication and equality. As in more familiar algebraic rules, we can employ parentheses
to group operations so that they are evaluated in the order we desire. For example:

.. table:: Example Truth Table Calculation
	
	============= ============= ============= ================ ========================= ==========================================
	:math:`A`     :math:`B`     :math:`C`     :math:`A\vee{B}` :math:`(A\vee{B})\vee{C}` :math:`\neg\left((A\vee{B})\vee{C}\right)`
	============= ============= ============= ================ ========================= ==========================================
	:math:`\top`  :math:`\top`  :math:`\top`  :math:`\top`     :math:`\top`              :math:`\perp`
	:math:`\top`  :math:`\top`  :math:`\perp` :math:`\top`     :math:`\top`              :math:`\perp`
	:math:`\top`  :math:`\perp` :math:`\top`  :math:`\top`     :math:`\top`              :math:`\perp`
	:math:`\top`  :math:`\perp` :math:`\perp` :math:`\top`     :math:`\top`              :math:`\perp`
	:math:`\perp` :math:`\top`  :math:`\top`  :math:`\top`     :math:`\top`              :math:`\perp`
	:math:`\perp` :math:`\top`  :math:`\perp` :math:`\top`     :math:`\top`              :math:`\perp`
	:math:`\perp` :math:`\perp` :math:`\top`  :math:`\perp`    :math:`\top`              :math:`\perp`
	:math:`\perp` :math:`\perp` :math:`\perp` :math:`\perp`    :math:`\perp`             :math:`\top`
	============= ============= ============= ================ ========================= ==========================================

One way to create functions as seen above is to use what is known as disjunctive normal
form. We use many terms of conjunctions (possibly negating individual variables) that are
then "or"ed together. For example, :math:`A\vee (B\wedge\neg{C})\vee\neg{B}`. For any function,
we can easily create a DNF function that has the same behavior:

1. Create a truth table for the function.
2. For each row that evaluates to true, create a term that is the conjunction
   of all the variables (if true in that row, add the non-negated version;
   if false, add the negated version).
3. Create the disjunction of all the terms.

Using the process above, we can, for example create a function for truth table

.. table:: Unknown Function

		============= ============= =============
		:math:`A`     :math:`B`     :math:`f(A,B)`
		============= ============= =============
		:math:`\top`  :math:`\top`  :math:`\top` 
		:math:`\top`  :math:`\perp` :math:`\top`
		:math:`\perp` :math:`\top`  :math:`\perp`
		:math:`\perp` :math:`\perp` :math:`\perp`
		============= ============= =============

Thus, :math:`f(A,B)=(A\wedge{B})\vee(A\wedge\neg{B})`.

We can simplify expressions using a few rules (some of which could be derived from
others, but presented for ease of evaluation)

1. :math:`A\wedge\neg{A}=\perp`
2. :math:`A\vee\neg{A}=\top`
3. :math:`A\wedge(B\vee{C})=(A\wedge{B})\vee(A\wedge{C})`
4. :math:`A\vee(B\wedge{C})=(A\vee{B})\wedge(A\vee{C})`
5. :math:`A\vee{B}\vee{C}=(A\vee{B})\vee{C}=A\vee(B\vee{C})`
6. :math:`A\wedge{B}\wedge{C}=(A\wedge{B})\wedge{C}=A\wedge(B\wedge{C})`
7. :math:`A\vee{B}=B\vee{A}`
8. :math:`A\wedge{B}=B\wedge{A}`
9. :math:`A\vee\top=\top`
10. :math:`A\wedge\top=A`
11. :math:`A\vee\perp=A`
12. :math:`A\wedge\perp=\perp`
13. :math:`A\rightarrow{B}=B\vee\neg{A}`
14. :math:`(A\leftrightarrow{B})=(A\wedge{B})\vee(\neg{A}\wedge\neg{B})`
15. :math:`\neg(A\wedge{B})=\neg{A}\vee\neg{B}`
16. :math:`\neg(A\vee{B})=\neg{A}\wedge\neg{B}`
17. :math:`\neg(\neg{A})=A`

Thus, our function is

.. math::

	f(A,B)&=(A\wedge{B})\vee(A\wedge\neg{B})\\
	&=A\wedge(B\vee\neg{B})~~~~{\small{\textrm{(rule 3)}}}\\
	&=A\wedge\top~~~~{\small{\textrm{(rule 2)}}}\\
	&=A~~~~{\small{\textrm{(rule 10)}}}

.. admonition:: Practice Problem: Creating Boolean Expressions

	Find a combination of the functions above that produces the following truth table:

	.. table:: Problem

		============= ============= ============= ================
		:math:`A`     :math:`B`     :math:`C`     :math:`f(A,B,C)`
		============= ============= ============= ================
		:math:`\top`  :math:`\top`  :math:`\top`  :math:`\perp`
		:math:`\top`  :math:`\top`  :math:`\perp` :math:`\top`
		:math:`\top`  :math:`\perp` :math:`\top`  :math:`\top`
		:math:`\top`  :math:`\perp` :math:`\perp` :math:`\top`
		:math:`\perp` :math:`\top`  :math:`\top`  :math:`\top`
		:math:`\perp` :math:`\top`  :math:`\perp` :math:`\perp`
		:math:`\perp` :math:`\perp` :math:`\top`  :math:`\perp`
		:math:`\perp` :math:`\perp` :math:`\perp` :math:`\perp`
		============= ============= ============= ================

	Hint: We can easily craft a DNF solution then simplify it, especially including
	rules for things like implication or biconditional.

Adding Predicates
-----------------
Now that we have the rules for evaluating the truth of a logical statement, we might
find it more useful to delve to the other side of the problem - how do we create
the variables used in a Boolean expression as used above? We can create predicates,
that is, functions that take some arbitrary value and return true or false. For example,
we could have a function :math:`Sunny(d)` which is true if :math:`d` is a day and the weather
was sunny on that day. We don't necessarily care how such a function is implimented
(maybe it sends a survey and waits for replies, maybe it uses the National Weather
Service, maybe it just guesses), but we can start learning more complicated things, by
adding predicate-based rules.

For example, if we have our :math:`Sunny(d)` predicate, another predicate named
:math:`Hot(d)` which is true iff (read "if and only if") :math:`d` is a day
and it was hot that day, a further predicate :math:`Hat(d)` that is true
iff people should wear a hat on day :math:`d`, we can add a rule:

.. math::

	Sunny(d)\wedge{Hot(d)}\rightarrow{Hat(d)}

which says that if it is sunny and hot, then people should wear hats. Note: by the
way we have defined impliation, this does not mean the converse (if people
should wear hats, it is sunny and hot). This may not seem profound, but if we could
contact the weather service any time we wanted, but had no idea when to wear a hat,
we would now be able to protect ourselves from the sun better. In practice, when we have
rules that are true for reasons outside of the ones for Boolean expressions listed above
(like for the hat example, we knew we should wear one when it is sunny and hot to
protect ourselves from the sun), we can add these rules and start "learning" things by
creating new theorems that are useful.

Adding Numbers
--------------
For us, the most useful application for predicates is working with numbers. We have many
relations defined for numbers: :math:`<`, :math:`>`, :math:`\leq`, :math:`\geq`,
and :math:`=` which take in two numbers and return true or false;
:math:`+`, :math:`-`, :math:`*`, :math:`/`, :math:`^\wedge`, :math:`\%` and many
more that take in numbers and produce other numbers. So, we might
have a predicate :math:`P(x,y)=(x\leq{y})\vee(x*y<0)`.

Quantifiers, Domains, and Bound Variables
-----------------------------------------
Before we can talk about properties of relations (helpful for proving things), we must
introduce the concept of quantifiers. There are exactly two of them, and they are fairly
straightforward.

:math:`\forall` is the "universal quantifier" that means "for all". So, we might have
a statement :math:`\forall{x}:(x<0)\vee(x\geq0)`. That means, for all :math:`x` in the
domain we are working with (the real numbers, natural numbers, rational numbers, etc.),
:math:`x` is either less than zero or greater or equal to zero (which tells us
nothing about the value of :math:`x`, but is a true statement).

:math:`\exists` is the "existential quantifier" that means "there exists". Here, we might
have a statement :math:`\exists{x}:x^2=25`. That means that there exists an :math:`x`
in the domain that, when squared, equals 25. Note that both :math:`x=5` and :math:`x=-5`
satisfy this (depending on whether we allow negative numbers). The existence quantifier
just cares that there is at least one case in which the expression is true.

Instead of assuming a domain based on the problem at hand, we can specify it exactly
using :math:`\in`. :math:`\in` is true iff the argument on the left-hand side is
a an element of the set given as the argument on the right-hand side.
Some sets that are useful are:

- :math:`\mathbb{N}`, the natural numbers. These are the numbers starting at 0
  or 1 (depending on whether you're a physicists, mathematician, or computer scientist),
  that are generated by the successor relation :math:`{\textrm{succ}}(n)=n+1`. So,
  :math:`\mathbb{N}=\{0,1,2,...\}`. Note, that the natural numbers do not include
  an "infinity" (:math:`\infty`): :math:`\infty` must satisfy
  :math:`\forall{x\in\mathbb{N}}:x\leq\infty`, stating that :math:`\infty` must be the
  largest of the natural numbers. But, with our successor relation, we just add 1, and
  make a bigger one. Thus, each natural number must be finite.
- :math:`\mathbb{Z}`, the integers. These are the numbers created by extending the natural
  numbers to the negatives (many ways to generate them). So,
  :math:`\mathbb{Z}=\{..., -2, -1, 0, 1, 2, ...\}`, similarly not including positive or
  negative infinity.
- :math:`\mathbb{Q}`, the rational numbers. These are the numbers of the form
  :math:`\frac{p}{q}` where :math:`p\in\mathbb{Z}` and :math:`q\in(\mathbb{Z}\backslash\{0\})`
  (meaning :math:`q` is any integer except 0).
- :math:`\mathbb{R}`, the real numbers. These are any number along the continuous number line.
  So along with any rational number, we include numbers that cannot be expressed as fractions
  such as :math:`\pi`, :math:`\sqrt{2}`, or :math:`e`. For physics, this is usually the
  domain we are interested in, as physical quantities are generally taken to be
  continuous (not always the case, of course).

We can also employ the idea of a range of values such as :math:`[0,1)` which is the set of
all numbers between 0 and 1 along the number line (real numbers), including 0 but excluding 1.
So, we might have a statement such as

.. math::
	
	\forall{x\in\mathbb{N}}\forall{y\in\mathbb{R}}\exists{z\in\mathbb{R}}:x+y=z

which just says that if we take any natural number :math:`x` and any real number :math:`y`
and add them, we get another real number :math:`z`.

In these formulae, we have the consideration of scope, much as we have seen in
*Mathematica* with local variables in a :code:`Module` (see 
`Modules <../Mathematica/structure.html#Modules>`_). When we introduce a variable
using a quantifier, that defines where it is "bound" in that if we say
:math:`\forall{x\in[0,1)}:P(x,y)`, :math:`x` is bound to the statement, and is
given to be in the range :math:`[0,1]`. :math:`y`, however, is "free", in that we
have placed no restriction on it in this statement, meaning that the statement is
dependent upon the value given to :math:`y`.

Properties of Relations
-----------------------
We can talk about properties for the binary relations above (such as :math:`<`) using the
language we've built up. Let :math:`R` be a binary relation that produces a truth value
and let :math:`xRy` represent applying the function to arguments :math:`x` and :math:`y`
(think if :math:`R` is :math:`<`, then we'd say :math:`x<y`).

- Reflexivity: :math:`\forall{x}:xRx`. For example, :math:`=` since :math:`x=x` is
  trivially true for any :math:`x`. But, :math:`xRy\equiv x^2>y` is not reflexive over the
  real numbers, since for :math:`0<x<1,~x^2<x`.
- Symmetry: :math:`\forall{x}\forall{y}:xRy\rightarrow{yRx}`. For example,
  :math:`xRy\equiv x<5\wedge y<5` is symmetric, but :math:`xRy\equiv x<y` is not,
  since if :math:`2<5` is true, we know that :math:`5<2` is false.
- Asymmetry: :math:`\forall{x}\forall{y}:xRy\rightarrow\neg{yRx}`. For example,
  :math:`xRy\equiv{x<y}` is asymmetric. But, :math:`xRy\equiv{x=y}` is not.
- Antisymmetry: :math:`\forall{x}\forall{y}:xRy\wedge yRx\rightarrow x=y`. For example,
  :math:`xRy\equiv{x\leq{y}}` is antisymmetric. But, :math:`xRy\equiv x<5\wedge y<5` is not.
- Transitivity: :math:`\forall{x}\forall{y}\forall{z}:xRy\wedge yRz\rightarrow xRz`. For example,
  :math:`xRy\equiv{x<y}` is transitive. But, :math:`xRy\equiv{\gcd(x,y)=1}` is not (
  :math:`\gcd(2,3)=1,~\gcd(3,10)=1` but :math:`\gcd(2,10)=2`).
- Totality: :math:`\forall{x}\forall{y}:xRy\vee{yRx}`. For example, :math:`xRy\equiv{x\leq{y}}`
  is total. But, :math:`xRy\equiv{x<y}` is not (:math:`5<5` is false).

There are other such properties of binary relations as well. Equivalence relations are
those that are reflexive, symmetric, and transitive (like :math:`=`). Partial order relations
are those that are reflexive, antisymmetric, and transitive (like :math:`=` and :math:`\leq`).
Total order relations are those that are partial orders and total.

While each of these properties are obvious for familiar examples, they are worth considering when
trying to create relations to apply assumptions or bound problems. If we don't do so carefully,
sometimes *Mathematica* may not be able to solve problems in a useful way. A small example
is

::

	Solve[Cos[x] == 0, x]

which gives
::

	{{x -> ConditionalExpression[-(\[Pi]/2) + 2 \[Pi] C[1], C[1] \[Element] Integers]}, 
	{x -> ConditionalExpression[\[Pi]/2 + 2 \[Pi] C[1], C[1] \[Element] Integers]}}

But, if we restrict the problem:

::

	Solve[{Cos[x] == 0, x > 0, x < 2 Pi}, x]

which gives :code:`{{x -> \[Pi]/2}, {x -> (3 \[Pi])/2}}`. In this case, *Mathematica* could
solve the original problem, but did so very generally, overcomplicating the expression
if we just want a couple solutions for :math:`x\in(0,2\pi)`.