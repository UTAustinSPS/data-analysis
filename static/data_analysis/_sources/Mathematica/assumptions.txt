Applying Assumptions
====================
In some cases, we run into problems evaluating functions on symbolic expressions.
For example, if we want to evaluate :math:`\int_0^1e^{x^k}dx` as a function of :math:`k`,
we can do:

::

	Clear[k];
	Integrate[Exp[x^k], {x, 0, 1}]

which gives

::

	ConditionalExpression[
		((-1)^(-1/k) (Gamma[1/k] - Gamma[1/k, -1]))/k,
		Re[k] > 0]

This tells us that that integral evaluates to the first expression if the real part of :math:`k`
is greater than 0. If we know nothing about :math:`k`, then this is the best we can do. But, if
we knew something about :math:`k`, for example, that :math:`k>1`, we can incorporate that
information into the integral, sometimes obtaining better results:

::

	Integrate[Exp[x ^k], {x, 0, 1}, Assumptions -> {k > 1}]

::

	((-1)^(-1/k) (Gamma[1/k] - Gamma[1/k, -1]))/k

While not much of an improvement, the expression is at least cleaner to use and look at. In more
complicated scenarios, we can take an unsolvable problem and make it solvable.

.. admonition:: Example: Hydrogen Atom
	:class: note

	One great example (perhaps familiar to those who have taken quantum mechanics) employs
	the solution to the hydrogen atom. A derivation of the solution can be found
	in sections 4.1 and 4.2 in *Introduction to Quantum Mechanics (Second Edition)* by
	David J. Griffiths. The wavefunction for hydrogen is based on three "quantum numbers"
	:math:`n,~l,~m` specifying an electron orbital, as may be familiar from chemistry courses.
	In terms of spherical coordinates :math:`r,~\theta,~\phi`, we have:

	.. math::

		\small
		\psi_{nlm}(r,~\theta,~\phi)=
		\sqrt{\left(\frac{2}{na_0}^3\right)
		\frac{(n-l-1)!}{2n[(n+l)!]^3}}
		e^{-r/na_0}
		\left(\frac{2r}{ra_0}\right)^l
		\left[L_{n-l-1}^{2l+1}(2r/na_0)\right]
		Y_l^m(\theta,~\phi)

	which is a function of the Bohr radius (:math:`a_0`),
	Laguerre polynomials (:math:`L_{q-p}^{p}(x)`), 
	and spherical harmonics (:math:`Y_l^m(\theta,~\phi)`) [yes, this very
	complicated function is the solution to the hydrogen atom, arguably
	the simplest real system].

	With such a (normalized) wave function, one thing we can do is calculate
	expected values of physical quantities with

	.. math::

		\langle X\rangle=\int_\tau\psi^*X\psi d\tau

	where :math:`X` is the quantity (defined in quantum mechanical terms - see Griffiths),
	:math:`\tau` is the coordinate space, :math:`\psi^*` is the complex conjugate
	of the wavefunction, and :math:`\langle X\rangle` is the expected value of :math:`X`.

	In *Mathematica*, we can define the hydrogen wavefunction using built-in functions:

	::

		hydrogen[n_, l_, m_, r_, t_, p_] :=
 			Sqrt[(2/(n a0))^3   (n - l - 1)!/(2 n ((n + l)!)^3)] *
  			Exp[-r/(n a0)] *
  			(2 r/(n a0))^l*
  			LaguerreL[n - l - 1, 2 l + 1, 2 r/(n a0)]*
  			SphericalHarmonicY[l, m, t, p]

  	then, for example, calculate :math:`\langle r\rangle` for the :math:`\psi_{200}`
  	state with

  	::

  		Integrate[
 			r^2 Sin[t] *
 			Conjugate[hydrogen[2, 0, 0, r, t, p] ] *
 			r *
 			hydrogen[2, 0, 0, r, t, p],
 			{r, 0, Infinity},
 			{t, 0, Pi},
 			{p, 0, 2 Pi}]

 	which gives the complicated

 	::

 		ConditionalExpression[-((3 a0^12 (3 - 14 Sign[a0]^2 +
 			3 Sign[a0]^4))/(
  			16 Abs[a0]^5 Re[a0]^6 Sign[a0]^14)),
  			Re[a0] > 0]

  	This is because we have not defined :math:`a_0`, the Bohr radius (:math:`a_0=0.0529nm`).
  	It has been left undefined simply to allow for any choice of units in the calculation.
  	But whatever units we choose, we know :math:`a_0>0`. So, we can apply that assumption:

  	::

  		Integrate[
 			r^2 Sin[t] *
 			Conjugate[hydrogen[2, 0, 0, r, t, p] ] *
 			r *
 			hydrogen[2, 0, 0, r, t, p],
 			{r, 0, Infinity},
 			{t, 0, Pi},
 			{p, 0, 2 Pi},
 			Assumptions->{a0>0}]

 	which now gives simply

 	::

 		(3 a0)/2

:code:`Integrate`, :code:`D` and other math functions are the most common places to use the
:code:`Assumptions` option, along with the :code:`Simplify` and :code:`FullSimplify` commands
which can help reduce symbolic expressions, even when special functions are allowed.