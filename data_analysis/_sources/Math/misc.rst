Miscellaneous Math
==================
Throughout this textbook, we mix examples from many spheres of knowledge, from basic mechanics
to differential equations to topics in quantum mechanics. Here, we provide brief
introductions to some of these topics. These may not be sufficient for full understanding,
but should suffice as a "rough idea" which can then be expanded through supplemental work
in other courses or online.

Summation Notation
------------------
When we have an expression such as :math:`\sum_{i=0}^Na_i`, this is a shorthand for
taking the sum of all values :math:`a_i` for :math:`i=~0,~1,~...,~N`. We can introduce
an index variable as above, which takes all consecutive values from its initial value
to the final value listed. We have a similar notation for the product of elements
as :math:`\Pi_{i=0}^Na_i`. We will sometimes use shorthand for these, as :math:`\sum_ia_i`,
which say to take the sum over all possible values of :math:`i`.

Partial Differentiation
-----------------------
In physics, we frequently run into two different kinds of differentiation: total derivatives
and partial derivatives. The former is denoted :math:`\frac{df}{dx}` (derivative of :math:`f`
with respect to :math:`x`), and for any other variables upon which :math:`f` is based, we include
their derivatives by the chain rule:

.. math::

	f(x,~y)&=\sin(xy)\\ \\
	\frac{df}{dx}&=\frac{d\left(\sin(xy)\right)}{dx}\\
	&=\cos(xy)\frac{d(xy)}{dx}\\
	&=\cos(xy)(x\frac{dy}{dx}+y)

Whereas we can take the partial derivative, denoted :math:`\frac{\partial f}{\partial x}`:

.. math::

	f(x,~y)&=\sin(xy)\\ \\
	\frac{\partial f}{\partial x}&=\frac{\partial\left(\sin(xy)\right)}{\partial x}\\
	&=\cos(xy)\frac{\partial(xy)}{\partial x}\\
	&=\cos(xy)y

Dirac Delta
-----------
The Dirac delta function, named after creator Paul Dirac, is defined as:

.. math::

	\delta(x)=\left\{\begin{array}{cc}
	0 & x\neq0 \\
	\infty & x=0
	\end{array}\right.

In particular, :math:`\delta(x)` satisfies the following:

.. math::

	\int_{-\infty}^\infty\delta(x)dx=1
	\int_{-\infty}^\infty\delta(x-c)f(x)dx=f(c)

Function Arguments as a Vector
------------------------------
Often, to simplify matters, we employ a shorthand notation for a collection of variables, data,
etc. as a vector. For example, we could have function :math:`f(x,~y,~z,~...)`, which is fine, but
to reduce the visual complexity, we can instead define it as a functon of several variables
:math:`f(x_1,~x_2,~...,~x_n)`. Presuming these are all real values, this means that
:math:`f:\mathbb{R\rightarrow R\rightarrow R\rightarrow \cdots \rightarrow R\rightarrow R}`,
in that if we apply just the first argument, we get back a function that needs all the rest then
produces a value. But, if we know that we'll always apply all values, why not just apply
them all at once? We let :math:`\overline{x}=(x_1,~x_2,~...,~x_n)` be a vector containing all the
values (or symbolic expressions) we want to apply to the function, then apply it as
:math:`f(\overline{x})`. This does change :math:`f` slightly, to be a function defined as
:math:`f:(\mathbb{R\rightarrow R\rightarrow \cdots \rightarrow R})\rightarrow R`, which is to
say a function that takes all the arguments and produces a result. We then abuse this notation
and will take derivatives with respect to one of the variables :math:`x_i` as
:math:`\frac{df}{dx_i}`, meaning to take the derivative of the function with respect to the
:math:`i^\textrm{th}` variable in its definition. This notation is perhaps more informative if
thought of as applying the "state" of the system to the function, as represented by many
values related to the state. For example, we could have pressure as a function of volume,
temperature, and number of molecules: :math:`P(V,T,N)`, where :math:`V,T,N` all represent
elements of the "state vector" of the system, which can be applied to the function to produce the
pressure.