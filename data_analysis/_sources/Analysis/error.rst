Error Analysis
==============
Introduction
------------
In physics courses, we spend most of our time getting "the answer" - solving equations
we know for a final result (numerical or symbolic). This is great on paper, but
when it comes to experiments, we always have sources of error. Instrumentation can only provide
results with a certain precision (roughly, how close together measurements are) and accuracy
(roughly, how close the result is to reality), and as such, any time we run an experiment
in the lab (or even when running simulations), we need to report the error in our measurement.

Often, we will run an experiment many times given the same setup (even if
we are trying several variants, we'll run each several times), then report the
mean of our measurements

.. math::

	\mu=\langle{x}\rangle=\sum_{i=1}^Nx_i/N

along with the standard deviation

.. math::

	\sigma=\sqrt{\frac{\sum_{i=1}^N(x_i-\mu)^2}{N-1}}

The :math:`N-1` is not for the true (population) standard deviation, but is a
statistical correction based on taking a sample from a population (otherwise
we would use :math:`N`). For more, peruse chapter 4 of Dawson Baker's
"Physics Skill Manual" available
`here <http://www.ph.utexas.edu/~sps/resources/skillmanual.pdf>`_.

:math:`\sigma` is also known as the root-mean-square (take the square root of the
squared distance from the mean), and can alternatively be defined by:

.. math::

	\sigma=\sqrt{\langle(x-\langle{x}\rangle)^2\rangle}&=
	\sqrt{\langle{x^2}-2x\langle{x}\rangle+\langle{x}\rangle^2\rangle}\\
	&=\sqrt{\langle{x^2}\rangle-2\langle{x}\rangle\langle{x}\rangle+\langle{x}\rangle^2}\\
	&=\sqrt{\langle{x^2}\rangle-\langle{x}\rangle^2}

This is well and good for quantities we measure directly. But what about if we
then compute other quantities from those measurements? We need to be able to report our
uncertainty in those values as well (for an example, see below). But how do we do that?

Well, let's say that we have some function :math:`f` over N variables
:math:`x_1,~x_2,~...,~x_N` that is the quantity we want to compute. To compute the average,
we just take

.. math::

	\langle{f}\rangle&=f(\langle{x_1}\rangle,~\langle{x_2}\rangle,~...,~\langle{x_N}\rangle)\\
	&=f(\langle{\overline{x}}\rangle)

Where :math:`\langle{\overline{x}}\rangle` represents the average of each variable applied
as an averaged vector (just shorthand).
But what about the uncertainty? For that, if we can assume that the variables are independent
of one another, we can use the following equation:

.. math::

	\sigma_f^2=\sum_{i=1}^N \sigma_{x_i}^2\left(\frac{\partial f}{\partial x_i}\middle|_{
	\langle{\overline{x}}\rangle}\right)^2

This says that we add the variances (square of the standard deviation) of each variable,
multiplied by the square of the partial derivative of the function with respect to that
variable, applying the average values of all variables as necessary.
If the variables are not independent of one another, we must look at the covariance
as well:

.. math::

	\sigma_f^2=\sum_{j=1}^N\sum_{i=1}^N
	\sigma_{x_i}\sigma_{x_j}\left(
	\frac{\partial f}{\partial x_i}\middle|_{
	\langle{\overline{x}}\rangle}\right)\left(
	\frac{\partial f}{\partial x_j}\middle|_{
	\langle{\overline{x}}\rangle}\right)

(yes, the covariances add twice). This is the error propagation equation, and is how we are able
to report the error in a computed quantity.

Example: Watermelon Drop
------------------------
Here at the Physics Department of the University of Texas at Austin, we often drop watermelons
from the physics, math, and astronomy building (Robert Lee Moore Hall), as it extends 61.5 meters
above the ground. When we drop the watermelons, we often time the descent to approximate
:math:`g`, the acceleration due to gravity. To do this, we first assume that the only massive
sobjects are the
watermelon and the Earth, so that we can just have the single force of Earth's gravity acting
on the watermelon (in practice, other sources are indeed negligible). Since the watermelon
will not be relativistic, we can just use Newtonian gravity:

.. math::

	\overrightarrow{F}=-G\frac{M_E M_w}{r^2}\hat{r}=M_w \overrightarrow{a_w}

or,

.. math::

	|a_w|=G\frac{M_E}{r^2}

where :math:`r` changes by 61.5m relative to Earth's radius of ~6371km. With such a small change,
we can take a first-order approximation, centered at 6371km:

.. math::

	|a_w(r)|\approx9.810\frac{m}{s^2}-3.080\times10^{-6}\frac{1}{s^2}(r-6371000m)

And if we take the difference in :math:`|a_w|` between :math:`r=6371061.5m` and
:math:`r=6371000m`, we get a difference of :math:`-0.00019\frac{m}{s^2}`, which is
totally negligible relative to the first term, so we can assume that the acceleration is constant
over the course of the fall (note: we cheated here a bit by plugging in the known values for
the mass and radius of earth, but only to show that the acceleration due to gravity can be
considered constant, making the standard approximation in nearly every introductory physics
course).

With our acceleration being constant, we can easily integrate over time twice to get that

.. math::

	y(t)=y_0+v_0t-\frac{1}{2}gt^2

where away from Earth's surface is considered positive and :math:`g` is the acceleration due to
gravity. We further will state that the initial velocity of the watermelon is 0, and the height
is 61.5m. So, now we have that :math:`y(t)=61.5-.5gt^2`.

So if we have some set of times for when :math:`y=0` (i.e., the watermelon explodes on impact
with the ground), we can easily rearrange this to solve for :math:`g`

.. math::

	g_{obs}(t)=\frac{123m}{t^2}

So, our data is just time but we want to get acceleration due to gravity.
Let's say we had the times :download:`here <Figures/timedata.csv>`. 

The average of these values is :math:`\langle{t}\rangle=3.48s`,
and the unbiased estimator for standard
deviation (computed with the :math:`N-1` correction, as above) is :math:`\sigma_t=0.058s`.
We have that

.. math::

	g=\frac{123m}{(3.48s)^2}=10.16\frac{m}{s^2}\\
	\frac{\partial g}{\partial t}=-\frac{246m}{t^3}

So we have 

.. math::

	\left.\frac{\partial g}{\partial t}\middle|_{\langle{t}\rangle}\right.=-5.78\frac{m}{s^3}

and 

.. math::

	\sigma_g&=\sigma_t^2\left(\frac{\partial g}{\partial t}
	\middle|_{\langle{t}\rangle}\right)^2\\
	&=(0.058s)^2\left(-5.78\frac{m}{s^3}\right)^2=0.11\frac{m}{s^2}

So, we can report our result for :math:`g` in the compact form:
:math:`10.16\pm0.11 \frac{m}{s^2}`, which says that the mean is 10.16 m/s^2 and
the standard deviation is 0.11 m/s^2.