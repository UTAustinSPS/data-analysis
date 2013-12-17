Functions and Graphing
======================
======================

Functions
=========
We've talked about a data-based way of looking at storage in *Mathematica* with lists, matrices,
tables, etc. But one other form of "storage" we can consider is functions. *Mathematica*
allows us to define functions in a very similar way to how we might write down a function
in mathematics. If we want to define some function :math:`f(x)=x^2+\frac{11}{x}`, we can
simply write:
::

	f[x_] := x^2+11/x

There are some important differences here. The first is the underscore (:code:`_`) character
on the left-hand side that is absent on the right-hand side. That tells *Mathematica* that
the :code:`x` in the function definition is a dummy variable.

.. sidebar:: The Smart Dummy Variable

	As we saw above, we want to define functions with variables with an underscore at the end.
	What happens if we leave that out? Or what if we leave out the colon in before the
	equals sign? Well, we then effectively create different expressions
	based on the variables we use to define the "function". For example:
	::

		ClearAll[f,g,h,i,x,y,z,i,p,u];
		f[x] = x^2
		g[y] := y + 5
		g[z] := z + 7
		h[u_] = u * 8
		i = 7 * p

	Each "function" has a different behavior. 

	:code:`f` applied to anything other than the variable :code:`x` will not be evaluated.
	This is because we only defined the function for :code:`x`. If we try to evaluate
	:code:`f[x]`, we do get :code:`x^2`. But if instead we first define :code:`x=2`, :code:`f[x]`
	can no longer be evaluated, since :code:`f` is not defined for argument 2.

	f/g??????????????????



We can easily apply functions to other functions as well:

::

	g[x_]:=x/11;
	g[f[x]]

will print:

::
	
	x^2/11+1/x

We can base functions on other functions (built-in or user-created) too. There are many built-in
functions which take functions as arguments.

.. admonition:: Example: Calculus
	:class: note

	One particularly useful realm for user-created functions is taking their integrals and
	derivatives. We can take a derivative :math:`\frac{d}{dx}` of a function :math:`f(x)`
	by using:

	::

		D[f[x], x]

	Where we have defined :code:`f[x_]:= ...`. *e.g.*, :code:`f[x_]:=x^2` will have
	:code:`D[f[x], x]=2x`. Of course, because these are dummy functions, we can
	use any variable name we want in the derivative: :code:`D[f[y], y]` = :code:`2y`.

	We can also take integrals (both definite and indefinite).

	We'll use the same command in both cases. To take the indefinite integral, we'll use:

	::

		Integrate[f[x], x]

	That will, for example, given :code:`f[x_]:=x^2`, have
	:code:`Integrate[f[x], x]=x^3/3`. If we'd rather take the definite integral,
	we can use:

	::

		Integrate[f[x], {x, a, b}]

	where :code:`a` and :code:`b` are the limits of integration: :math:`\int_a^bf(x)dx`.

Graphing
========
Until this point, we have largely just dealt with numbers and functions. Now, let's take
a look at expressing data more graphically, and how to customize the display for different
scenarios.

Basic Graphing Utilities
------------------------
First, let's look at graphing functions in two-dimensions, with some basic customization
features. The simplest is :code:`Plot[f[x], {x, a, b}]`, which will plot the function
:math:`f(x)` from :math:`x=a` to :math:`x=b`, with :math:`x` on the horizontal axis
and :math:`f(x)` on the vertical axis, selecting an automatic, appropriate range
for :math:`f(x)`. For example, for :math:`f(x)=\sin(x),~x\in[0, 2\pi]`,
we have :code:`Plot[Sin[x], {x, 0, 2 Pi}]`, which will produce:

.. figure:: Figures/sinx_simple.png
	:alt: sin(x)
	:align: center

	Simple plot for :math:`f(x)=\sin(x)`.

While we might be able to tell what's going on in the graph above, that's not
always going to be the case. For example, we might want to have some basic labels on the
graph, for the axes and for a title. Turns out, this is very easy to do with our friend from
the
`Evaluating Symbolic Expressions <structure.html#evaluating-symbolic-expressions>`_
section, the rule operator (:code:`->`). Many functions allow for optional arguments
using the name of the argument and the rule operator to the desired value. For example,
with the :code:`Plot` function above, we might want to label axes. We do that with the
:code:`AxesLabel` argument:

::

	Plot[Sin[x], {x, 0, 2 Pi}, AxesLabel->{"x","f(x)"}]

which will create:

.. figure:: Figures/sinx_axes.png
	:alt: sin(x)
	:align: center

	Plot for :math:`f(x)=\sin(x)`, with labeled axes.

We can further add a title to the graph (:code:`PlotLabel->"My Title"`), define a different
range for the plot (:code:`PlotRange -> {{xmin, xmax}, {ymin, ymax}}`), select the
color and style of the line (:code:`PlotStyle->[Green, Dashed, Thin]`), and label the functions
we're graphing (:code:`PlotLegends->"Expressions"` - a special option that gives the function
definitions). We can actually plot more than one function at a time too by providing a list
of functions as the first argument (all functions of the same variable). If we do that,
then for the :code:`PlotStyle`, we will find it helpful to provide instead a list of the styles.
So, for example, we could have:

::

	Plot[{Sin[x], Cos[x]},
         {x, 0, 2 Pi},
         AxesLabel -> {"x", "f(x)"} ,
         PlotLabel -> "My Title",
         PlotRange -> {{0, 3 Pi}, {-1.5, 1.5}},
         PlotStyle -> {
            {RGBColor[0.900082, 0.425655, 0.093112], Dashed, Thin},
            {RGBColor[0, 1, 0], DotDashed, Thick}},
         PlotLegends -> "Expressions"]

.. figure:: Figures/sinx_special.png
	:alt: sin(x) and cos(x)
	:align: center

	Plot for :math:`f(x)=\sin(x),~g(x)=\cos(x)`, with options specified above.

asdf