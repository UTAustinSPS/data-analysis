Approximations
==============
Motivation
----------
In physics, we wish we could explain, undeniably and unequivocably, why the universe
works the way it does, but this is really not feasible. We have things like the
Standard Model and the host of rules we learn in courses and then apply to experiments,
but these really describe a "how" and not a "why" (as Indiana Jones
once said, "if it's truth you're looking for... philosophy class is right down the hall").
We develop models to help characterize how things behave - a particle in a magnetic field,
light near a black hole, planets in orbit. Often, though, we make approximations.

For example, in introductory courses, we do all manner of problems on the surface
of Earth involving the planet's surface gravity acting on an experiment. In these
problems, we often will do things like take the acceleration due to gravity
to be constant, or that the objects under inspection in the lab have no gravitational
effect on one another, or that air resistance is "negligible", or that motion
is non-relativistic, or that we have no friction. While a purist may cringe at these
notions, in reality, given the right constraints, these are all reasonable. For example,
the gravitational force between objects in a lab setting (say, 1kg balls separated by
a meter) is many orders of magnitude (powers of ten) smaller than the gravitational
force between the objects and the Earth (something like 10 orders of magnitude). In
most cases, this means if we ignore that contribution, we might expect a a deviation
in our result from what we calculate at maybe the 10th decimal place. The fact of the
matter is, we often can't measure things that precisely, and may not even desire to do so.
If acceleration due to gravity is :math:`9.81\frac{m}{s^2}` rather than :math:`9.82\frac{m}{s^2}`,
we probably won't notice. It doesn't change results, so we don't mind. Even in cases where
we might start to see differences, a simpler model may allow us to do more (taking
more complicated integrals, etc.), even if we start getting answers that could be
wrong by 10%. Often, we'd rather have a good approximation of reality and get an
answer quickly (or at all) than to arrive at something we can't calculate save
numerical methods.

We can make many physical approximations to a system for ease in understanding, but
if we want a reliable model, we may include more information, but turn to
mathematics to help our understanding. For a simple pendulum, we take that
the force on a simple weight on a string is :math:`mg\sin\theta`, but then
use the "small angle approximation" and say this is very nearly :math:`mg\theta`.
We dig through the math, sove a differential equation (or, just know the solution)
and arrive at the solution that :math:`\theta(t)=A\sin(\omega t),~L\omega^2=g`.
If we hadn't used that approximation for this fairly easy-to-describe situation,
we end up having to use the inverse of an elliptic integral
(the inverse of :math:`F(\phi,m)=\int_0^\phi(1-m\sin^2\theta)^{-1/2}d\theta`, given
:math:`m`). Try it yourself or ask a computer, and you'll find that we cannot evaluate
the expression exactly. It's not a matter of not being smart enough nor having the fastest
computer - there is no analytical form. So, we rely on pre-computed tables, or having
a computer numerically approximate the solution. This is fine, but means that
even for a simple pendulum, we have no exact solution (and that's in a frictionless
vacuum!).

Instead, we learn techniques for making approximations and learn when they can be applied.
The small angle approxmimation is great and makes life easy, but is it valid when
:math:`\theta=.1`? :math:`\theta=.5`? :math:`\theta=1.5`? And how do we decide
what is valid and not?

The short answer is, "it depends." We often care about order of magnitude only,
or we might want to be accurate within a factor of 2, or maybe we need
to be correct within 10% (or less). We may select our level of approximation
based on the instrumentation we have available. If we have 1 significant figure,
maybe we can tolerate an order of magnitude argument in the end result - we'll
truncate our result to a single significant figure anyway (we cannot reasonably
report more significant digits than our worst measurement), so maybe our mathematical
model can tolerate simpler expressions that we can evaluate analytically to hopefully
characterize overall trends in behavior.

Taylor Expansion
----------------
One of the most powerful tools we have as physicists is the Taylor series expansion.
First, we'll address the theory and where such an expansion is valid, then talk
about some applications.

Assume we have a function :math:`f(x)` that has infinite continuous derivatives near a point
:math:`x=x_0`, where :math:`x_0-\delta_-<x<x_0+\delta_+` bounds the region where the function
has infinite continuous derivatives (in many cases, this region is all of the real numbers).
Then, for :math:`x\in(x_0-\delta_-,~x_0+\delta_+)`

.. math::

	f(x)&=\sum_{i=0}^n\left(\frac{(x-x_0)^i}{i!}\frac{d^if(x)}{dx^i}\middle|_{x=x_0}\right)
	+R_{n+1}(x)\\
	R_{n+1}(x)&=\frac{(x-x_0)^{n+1}}{(n+1)!}\frac{d^{n+1}f(x)}{dx^{n+1}}|_{x=c}

for some :math:`c` between :math:`x` and :math:`x_0` (note that if :math:`f(x)` has
:math:`n+1` continuous derivatives, this still holds, but the choice of :math:`c` is
not necessarily clear). If we take the limit as :math:`n\rightarrow\infty`, we
arrive at the familiar infinite Taylor series:

.. math::

	f(x)=\sum_{i=0}^\infty\left(\frac{(x-x_0)^i}{i!}\frac{d^if(x)}{dx^i}\middle|_{x=x_0}\right)=
	f(x_0)+(x-x_0)f'(x_0)+(x-x_0)^2\frac{f''(x_0)}{2!}+\cdots
	
While this formulation of :math:`f(x)` is useful for many reasons, one that is most useful
is our ability to truncate to just the first few terms of the summation, noting that
we introduce error on the order of :math:`R_{n+1}(x)`, which for values near :math:`x=x_0`
can be extremely small. So, we can use an approximated version of :math:`f(x)` to learn
about the behavior of the function, often avoiding impossible integrals or other
mathematical hurdles.

First-Order Approximation
-------------------------
"First-order approximation" is a phrase ubiquitous to physics. Problems are often
solved "to first order" or results approximated to first order. But what does it mean?
Well, it's quite simple. A "first-order approximation" is simply shorthand for
a "first-order Taylor polynomial approximation". Using the Taylor expansion
of a relevant function, we let :math:`f(x)=f(x_0)+(x-x_0)f'(x_0)`, often considering
the case where :math:`x_0=0`. Some examples follow (some taken to second-order
when degree 1 has coefficient 0).

.. table:: Table 1: Useful Taylor Polynomial Approximations

	======================================== =============================================== ===========
	Function                                 Approximation                                   :math:`x_0`
	======================================== =============================================== ===========
	:math:`(1\pm x)^n`                       :math:`1\pm{nx}`                                0
	:math:`\sin{x}`                          :math:`x`                                       0
	:math:`\cos{x}`                          :math:`1-\frac{x^2}{2}`                         0
	:math:`e^{kx}`                           :math:`1+kx`                                    0
	:math:`\ln{x}`                           :math:`-1+x`                                    1
	:math:`\ln(1-x)`                         :math:`-x`                                      0
	:math:`x^x`                              :math:`1+x\ln{x}`                               0
	:math:`\Gamma(x)` (Gamma function)       :math:`1-\gamma(x-1);~\gamma=0.5772157...`      1
	:math:`\zeta(x)` (Riemann-zeta function) :math:`-\frac{1}{2}\left(1 + \ln(2\pi)x\right)` 0
	:math:`\textrm{erf}(x)` (Error function) :math:`\frac{2x}{\sqrt{\pi}}`                   0

	======================================== =============================================== ===========

For an example of how good these approximations are, we can numerically solve
for when the function and the approximation differ by more than 10%:

.. table:: Table 2: Calculation of 10% Error for :math:`{\Large\frac{f_\approx(x)-f(x)}{f(x)}}=0.1,~x=x_0+\Delta{x}`

	======================= =========== ========================= ===================
	:math:`f(x)`            :math:`x_0` :math:`f_\approx(x)`      :math:`|\Delta{x}|`
	======================= =========== ========================= ===================
	:math:`\sin{x}`         0           :math:`x`                 :math:`0.749`
	:math:`\sin{x}`         0           :math:`x-x^3/6`           :math:`1.664`
	:math:`\cos{x}`         0           :math:`1-x^2/2`           :math:`1.053`
	:math:`(1+x)^2`         0           :math:`1+2x`              :math:`0.462`
	:math:`(1+x)^3`         0           :math:`1+3x`              :math:`0.243`
	:math:`(1+x)^4`         0           :math:`1+4x`              :math:`0.166`
	:math:`(1+x)^{-1}`      0           :math:`1-x`               :math:`0.316`
	:math:`(1+x)^{-2}`      0           :math:`1-2x`              :math:`0.173`
	:math:`(1+x)^{-3}`      0           :math:`1-3x`              :math:`0.120`
	:math:`\ln{x}`          1           :math:`-1+x`              :math:`0.193`
	:math:`\ln{1-x}`        0           :math:`-x`                :math:`0.206`
	:math:`x^x`             0           :math:`1+x\ln{x}`         :math:`1.445`
	:math:`\Gamma(x)`       1           :math:`1-\gamma(x-1)`     :math:`0.342`
	:math:`\textrm{erf}(x)` 0           :math:`2x/\sqrt{\pi}`     :math:`0.545`
	======================= =========== ========================= ===================

