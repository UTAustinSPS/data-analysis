The Gaussian Distribution
=========================
The Gaussian distribution, otherwise known as the "normal distribution" or "bell curve",
is a powerful tool for data analysis, as it is ubiquitous, following from physical principles.

.. figure:: Figures/paranormal.jpg
	:alt: Normal Distribution
	:align: center

	Freeman, Matthew. "A visual comparison of normal and paranormal distributions."
	*Journal of Epidemiology and Community Health.* 2006 January; 60(1): 6.

The Function
------------
The Gaussian distribution is based on two parameters: the mean of the distribution, and the
standard deviation of the distribution. The arithmetic mean (simple average) is denoted
by :math:`\mu`, and the standard deviation by :math:`\sigma`, which can be calculated by:

.. math::

	\mu=\frac{\sum_{i=1}^Nx_i}{N}\\ \\
	\sigma^2=\frac{\sum_{i=1}^N(x_i-\mu)^2}{N}

where :math:`N` is the total number of elements in our dataset, and :math:`x_1,~x_2,~...,~x_N` are
each of the values in our dataset.

Once we have :math:`\mu` and :math:`\sigma`, we can define the Gaussian distribution for those
parameters:

.. math:: Gaussian Distribution Function

	G(x)={\mathcal{N}}_{\mu,~\sigma}(x)=
	\frac{1}{\sigma\sqrt{2\pi}}\exp{-\frac{(x-\mu)^2}{2\sigma^2}}

(Here, I'm using :math:`G(x)` as shorthand for a fully parameterized normal distribution).

As we saw in the `Manipulate <../Mathematica/animations.html#manipulate>`_ section,
we plot :math:`G(x)` for various values of :math:`\mu` and :math:`\sigma` to get a feel for
how the function behaves:

.. raw:: html

	<script type="text/javascript" src="http://www.wolfram.com/cdf-player/plugin/v2.1/cdfplugin.js"></script>
	<script type="text/javascript">
	var cdf = new cdfplugin();
	cdf.setDefaultContent('<a href="http://www.wolfram.com/cdf-player/"><img src="../_images/manipulate.png"></a>');
	cdf.embed('../_images/manipulate.cdf', 439, 369);
	</script>

.. figure:: Figures/manipulate.cdf
	:width: 0px
	:height: 0px

.. figure:: Figures/manipulate.png
	:width: 0px
	:height: 0px

But this still doesn't tell us what this distribution means. In the form given above (we could
easily provide :math:`f(x)=\int{G(x)dx}` instead, or other variant), we have a probability
density function. That means that the probability of obtaining result :math:`x^*` is
:math:`G(x^*)`. Furthermore, the probability of having a result :math:`x^*\in[a,b]` is
exactly :math:`\int_a^bG(x)dx`. So, if we integrate over all possible values of :math:`x`,
we should arrive at probability :math:`\int_{-\infty}^\infty G(x)dx=1`, which is indeed the case (
the sum over the entire sample space of a probability density function needs to be :math:`1` - how
could we have a notion of a "probability" if the odds of getting any result added up to anything
other than :math:`100\%`?).

It may not be immediately obvious, but some properties that are convenient for the normal
distribution are that the peak is at :math:`x=\mu`, and that the points of inflection
(where the second derivative :math:`\frac{d^2G(X)}{dx^2}` changes sign) are at
:math:`x=\mu\pm\sigma`. As it is symmetric about :math:`x=\mu`, the probability
:math:`x<\mu` is :math:`P(x<\mu)=\int_{-\infty}^\mu G(x)dx=.5=\int_\mu^\infty G(x)dx=P(x>\mu)`.

If we take the limit as the standard deviation goes to zero, we arrive at the Dirac delta function
:math:`\delta(x-\mu)` that is zero everywhere except being infinite at :math:`x=\mu`. This can be
integrated to create a step function that is zero if :math:`x<\mu` and 1 if :math:`x\geq\mu`.


Applications
------------
FIXME

 

.. raw:: html

	<script type="text/javascript" src="http://www.wolfram.com/cdf-player/plugin/v2.1/cdfplugin.js"></script>
	<script type="text/javascript">
	var cdf = new cdfplugin();
	cdf.setDefaultContent('<a href="http://www.wolfram.com/cdf-player/"><img src="../_images/normal_converge.png"></a>');
	cdf.embed('../_images/normal_converge.cdf', 575, 400);
	</script>

.. figure:: Figures/normal_converge.cdf
	:width: 0px
	:height: 0px

.. figure:: Figures/normal_converge.png
	:width: 0px
	:height: 0px