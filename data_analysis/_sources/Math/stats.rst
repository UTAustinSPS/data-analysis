Probability and Statistics
==========================
Here, we'd like to review a few topics in probability and statistics.

Notation
--------
Throughout this section, we're going to use :math:`P(X)` as the "probability that X is true."
For example, :math:`P(x<5)` might apply to some sort of distribution. In some cases, shorthand
will be used: :math:`P(H)` might be "probability of a coin getting heads."

Now, we can make these more complicated. :math:`P(A\&B)=P(AB)=P(A\wedge B)=P(A\cap B)` is the probability
of having both :math:`A` and :math:`B` be true. :math:`P(A\vee B)=P(A+B)=P(A\cup B)` is the probability
of having :math:`A` or :math:`B` (or both) be true. Finally, :math:`P(A|B)` is the probability
of having :math:`A` be true *GIVEN* that :math:`B` is true. We'll come back to that last one
frequently.

Independence
------------
An important aspect of probability is knowing whether variables are *independent*. There are
two equivalent notions of this property. Events :math:`A` and :math:`B` are independent if and
only if:

.. math::

	P(A|B)=P(A)&~\mathrm{and}~P(B|A)=P(B)\\
	P(A\cap B)&=P(A)P(B)

For an example, let's take :math:`P(H\cap H)` - the odds of getting heads then heads with a fair
coin. We expect these events to be independent. Flipping the coin once has no impact on the
next flip. In fact, even with an unfair coin (say, :math:`P(H)=.6`), we can assume independence.

.. admonition:: Practice Problem: Independence Considerations

	Let's consider a few situations. Determine whether events :math:`A` and :math:`B` are
	independent.

	* :math:`A=` probability that it's raining, :math:`B=` probability the grass is wet.
	* :math:`A=` probability that it's raining, :math:`B=` probability the roads are slick.
	* :math:`A=` probability that a die rolls a 3, :math:`B=` probability a die rolls a 4.
	* :math:`A=` probability that your computer crashes, :math:`B=` probability the computer is more than 10 years old.

We can extend this notion of independence to more traditional variables too. In this case, we 
can say that if we have variables :math:`x` and :math:`y`, then for ALL :math:`a` and :math:`b`,
:math:`x` and :math:`y` are independent iff :math:`x<a` and :math:`y<b` are independent. In 
effect, this means that if we measure :math:`x`, it has no bearing on what we'll measure for :math:`y`.

If we have a fair coin, then any time we flip it, we have a :math:`p=.5` probability
of getting heads (and thus a :math:`q=1-p=.5` probability of getting tails). With this
notion of independence, we note that :math:`P(H)=p=q=P(T)`, and furthermore that
:math:`P(H|H)=P(H)`. Stated another way, if we get heads once, the chance our next
flip is heads is the same as it is at any time.

Our only two event outcomes are :math:`H` and :math:`T`, so :math:`P(H\cup T)=P(H)+P(T)=1`.

If we have several flips in succession, the probability of a given sequence
is just the probability of each flip multiplied together: :math:`P(HHTH)=P(H)\cdot P(H)\cdot P(T)\cdot P(H)`.

Things get more interesting if we look at the total number of heads after N flips. We'll
come back to this in the next section.

.. admonition:: Practice Problem: Casino Craps

	The game craps is based on the idea of rolling two dice, and totalling the values on the
	face-up side. For example, if one die shows a 3 and the other a 4, the "score" is 7. These
	dice rolls are independent events, so we could roll one die, record its value, then roll it
	again. So here, we have :math:`P(1)=P(2)=P(3)=P(4)=P(5)=P(6)=1/6`. And the events
	are independent so :math:`P(A|B)=P(A)`.

	Can we use this to come up with the probability of getting each possible score (2-12)? If we
	roll a die, then roll it again, we can note the odds of it getting a particular sequence as
	:math:`P(2\&5)` (to get a 2 then a 5 for a total of 7). This is different from :math:`P(5\&2)`
	which gets a 5 first then a 2, for the same total. What are the odds of getting a 4? Of a 7?

	If you feel ambitious, using the rule for a "Pass line bet" (see the Wikipedia page
	`here <http://en.wikipedia.org/wiki/Craps#Line_bets>`_), what's the chance of winning after
	one turn? Losing after one turn? Winning in exactly 2 turns? The rest is tedious to calculate,
	but the odds are clearly never in your favor. It's no wonder why Sky Masterson in *Guys and Dolls* sings a song about luck during the pivotal craps game in the show.

Expectation Values
------------------
What some of the above amounts to is a kind of grander question. Instead of asking what
the probabilty of all kinds of different scenarios is, we often just want an overall
answer. This might be how often I should win a game. Or how much money I should make
playing the lottery. Or where I expect a particle to be found. This is the notion of
an expectation value.

If I have N possible scenarios, I have a probability each one will occur and the value I measure
if it occurs. To find my expected value, I multiply each of these and take the sum:

.. math::

	\langle F\rangle=\sum_{i=1}^NF_iP(i)

For example, with rolling a die, the average value of a roll (which is not particularly useful in 
practice) is:

.. math::

	1*P(1)+2*P(2)&+3*P(3)+4*P(4)+5*P(5)+6*P(6)=\\
	&1/6(1+2+3+4+5+6)=\\
	&21/6=3.5

Note that this expected value isn't actually a possible value to see on a die roll.
No standard die has a "3.5" on one side. But, on average, that's what I anticipate
to see. So if I rolled 100 dice and the average were 5, I would know that they are likely
unfair. How unfair? Well, we can use our previous definition of standard deviation as
:math:`\sigma_x^2=\left\langle x^2\right\rangle-\left\langle x \right\rangle^2`. In this
case, :math:`x` is just the value seen on the die. So,
:math:`\left\langle x\right\rangle=3.5`. Doing the same calculation for :math:`x^2` yields:

.. math::

	1*P(1)+4*P(2)+9*P(3)+16*P(4)+25*P(5)+36*P(6)=91/6\approx15.2

So this gives a standard deviation as :math:`\sigma=\sqrt{15.2-3.5^2}=1.72`.

If I took the average of many samples :math:`f=\Sigma_{i=1}^nx_i/n` all drawn from
the same distribution, then my mean stays the same (:math:`\Sigma_{i=1}^n\mu/n=n\mu/n=\mu`)
but the standard deviation will be :math:`\sigma/\sqrt{n}` (see the 
`Combining Distributions <Analysis/gaussian.html#combining-distributions>`_ section). So
if we roll 100 dice, the average value is still 3.5, but with a deviation of
0.17. That means if the mean of our sample of 100 dice is more than :math:`3*0.71=0.51` away from 3.5 (so
smaller than 3 or greater than 4), we expect something to be seriously wrong (see the 
`Z-scores <Analysis/gaussian.html#z-scores-p-values-and-confidence-intervals-oh-my>`_ section).

We can extend this *discrete* notion of events to a *continous* "probability density function".
Let's say we have some variable :math:`x` that can have any value between :math:`-\infty` and 
:math:`\infty`. Then, the probability density function :math:`\rho(x)` satisfies:

.. math::

	1&=\int_{-\infty}^\infty\rho(x)dx\\
	P(a<x<b)=\int_a^b\rho(x)dx

So, our notion of an expected value of some function :math:`f(x)` is:

.. math::

	\langle{f}\rangle=\int_{-\infty}^\infty f(x)\rho(x)dx

.. admonition:: Classical Expectations
	:class: note

	The math above works in a classical picture of the world. In the quantum picture,
	things aren't quite as simple. We have wavefunctions, which form a probability
	density function when we take the square of the norm: :math:`\psi^*(x)\psi(x)`.
	And when we apply operators, we can no longer simply multiply them. In this case,
	the expected value is
	:math:`\langle{\hat{F}}\rangle=\int_{-\infty}^\infty\psi^*(x)\hat{F}\psi(x)dx`.
	The difference is that the operator :math:`\hat{F}` may have derivatives or other
	operations in it, such that :math:`\psi^*(x)\hat{F}\psi(x)` is not necessarily
	the same as :math:`\hat{F}\psi^*(x)\psi(x)`. PHY 373 teaches more about this
	concept, but the difference between classical and quantum computations
	here is worth noting.

