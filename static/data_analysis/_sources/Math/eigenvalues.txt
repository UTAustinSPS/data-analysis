Eigenvalue Problems
===================
Note: If you are familiar with eigenvalue problems from linear algebra, waves, or quantum mechanics, you can
likely skip this section or treat it as a refresher.

Matrices are a powerful tool in many fields, often representing data in a compact way, and occasionally
providing us a mathematical construct for other interesting properties of whatever we're looking at. One
particular tool is the eigenvalue/eigenvector problem, which has broad uses, particularly in physics. First,
we'll look at what the problem is, solve an example problem, then briefly talk about some applications.

The problem
-----------
We will consider the problem of having the square matrix :math:`A` (dimensions :math:`n\times{n}`) and
wanting to solve the equation

.. math::

	A\bf{x}=\lambda\bf{x}

where :math:`\bf{x}` is an n-row column vector, and :math:`\lambda` is some scalar.
This may look impossible
to start (we have an unknown scalar and a whole range of vectors - how can we know how many
solutions there
are, much less figure out what they are?), but we can apply some critical thinking and come up with a
procedure to solve it.

First of all, we know the equation above will always be true for :math:`\bf{x}=\bf{0}`, where :math:`\bf{0}`
is the column vector with n rows and each element equal to 0. This is often considered the "trivial" case,
as it usually ends up not being useful physically. We can introduce another matrix, however, called :math:`I`,
known as the n-dimensional identity matrix:

.. math::

	I=\left(\begin{array}{ccccc}
	1 & 0 & 0 &  & 0 \\
	0 & 1 & 0 & \cdots & 0 \\
	0 & 0 & 1 &  & 0 \\
	  & \vdots & & \ddots & \vdots \\
	0 & 0 & 0 & \cdots & 1
	\end{array}\right)

If we use normal matrix multiplication, we have that :math:`I{\bf{x}}=\bf{x}` for any matrix (and thus column
vector) :math:`\bf{x}`.

Thus, we want to solve the problem:

.. math::

	A{\bf{x}}=\lambda{I}\bf{x}

Now, we can subtract :math:`\lambda{I}\bf{x}` from both sides, giving:

.. math::

	A{\bf{x}}-\lambda{I}{\bf{x}}=(A-\lambda{I}){\bf{x}}=\bf{0}

If we take the non-trivial case, the only non-zero solutions for :math:`\bf{x}` require
that :math:`\left|A-\lambda{I}\right|=0`. Then, we can solve for all values :math:`\lambda`
that satisfy the equation (this will give an n-degree polynomial to solve), which are our
eigenvalues. We can then solve for :math:`\bf{x}` to get the eigenvectors.

Example calculation
-------------------
Consider the following matrix:

.. math::

	A=\left(\begin{array}{ccc}
	1 & 0 & 0 \\
	0 & 2 & 0 \\
	0 & 1 & 3
	\end{array}\right)

Looking to our equations above, we want to solve:

.. math::

	\left|A-\lambda{I}\right|=\left|\begin{array}{ccc}
	1 - \lambda & 0 & 0 \\
	0 & 2 - \lambda & 0 \\
	0 & 1 & 3 - \lambda
	\end{array}\right|=0

Taking the determinant gives us what's known as the "characteristic polynomail":

.. math::

	(1 - \lambda)(2-\lambda)(3-\lambda)=0

which is easily solved for :math:`\lambda=1,2,3`. These are the eigenvalues of the matrix :math:`A`,
collectively known as the spectrum of :math:`A`. Now, we'll calculate the eigenvectors, which are, again
the column vectors :math:`\bf{x}` that satisfy:

.. math::

	A\bf{x}=\lambda\bf{x}

Let's start with :math:`\lambda=1`. We'll let :math:`x_i` be the element of :math:`\bf{x}` in the
:math:`i^\textrm{th}` row.

.. math::

	\left(\begin{array}{ccc}
	1 & 0 & 0 \\
	0 & 2 & 0 \\
	0 & 1 & 3
	\end{array}\right)
	\left(\begin{array}{c}
	x_1 \\
	x_2 \\
	x_3
	\end{array}\right)
	=
	1\cdot
	\left(\begin{array}{c}
	x_1 \\
	x_2 \\
	x_3
	\end{array}\right)

If we treat this as a simple system of equations, we get the following:

.. math::

	1\cdot{x_1}=1\cdot{x_1}

	2\cdot{x_2}=1\cdot{x_2}

	1\cdot{x_2}+3\cdot{x_3}=1\cdot{x_3}

The second equation can only be true for :math:`x_2=0`. If we plug this in to the third
equation, we find that :math:`x_3=0` as well. We know that the the first equation will be
true for any :math:`x_1`, which presents a problem - which should we choose? By convention,
we choose to work with unit vectors, which is to say that:

.. math::

	\|{\bf{x}}\|=\sqrt{\sum_{i=1}^N x_i^2}=1

With this, we have :math:`x_1^2+0+0=1`. We'll take the positive root to define

.. math::

	{\bf{x}_1}=\left(\begin{array}{c}
	1 \\ 0 \\ 0
	\end{array}\right)

However, we recognize that for any scalar :math:`c`, we have:

.. math::

	A(c{\bf{x}_1})=c\cdot{A}{\bf{x}_1}=c\lambda_1{\bf{x}_1}=1\cdot{c}{\bf{x}_1}=c{\bf{x}_1}

which says that if :math:`v` is an eigenvector of :math:`A`, then :math:`cv` is also an
eigenvector of :math:`A`. As such, we can use any convention for stating what eigenvectors
we choose. Often, the convention is that for at least one element, :math:`x_i=1`.

.. admonition:: Practice Problem 1

	Work through this process for :math:`\lambda=2` and :math:`\lambda=3` to familarize yourself
	with the process of solving eigenvalue problems. Then try the whole process for a new matrix
	:math:`B=\left(\begin{array}{ccc}
	1 & 2 & 0 \\
	2 & -1 & 1 \\
	4 & 0 & 3
	\end{array}\right)`.

.. admonition:: Practice Answers 1
	:class: note

	You should have found that for matrix :math:`A`:

	:math:`\begin{array}{l}
	\lambda = 1 \Rightarrow {\bf{x}} = \left(\begin{array}{c}1 \\ 0 \\ 0 \end{array}\right) \\
	\lambda = 2 \Rightarrow {\bf{x}} = \left(\begin{array}{c}0 \\ 1 \\ -1 \end{array}\right)\\
	\lambda = 3 \Rightarrow {\bf{x}} = \left(\begin{array}{c}0 \\ 0 \\ 1 \end{array}\right)
	\end{array}`

	For matrix :math:`B`, you should arrive at:

	:math:`\begin{array}{l}
	\lambda = 1 \Rightarrow {\bf{x}} = \left(\begin{array}{c}1 \\ 0 \\ -2\end{array}\right) \\
	\lambda = 1 + 2\sqrt{2} \Rightarrow {\bf{x}} = \left(\begin{array}{c}1 \\
	\sqrt{2} \\ 2(1+\sqrt{2}) \end{array}\right)\\
	\lambda = 1 - 2\sqrt{2} \Rightarrow {\bf{x}} = \left(\begin{array}{c}1 \\ -\sqrt{2} \\
	-2(\sqrt{2}-1)\end{array}\right)
	\end{array}`

Application: Spring oscillation
-------------------------------
For a concrete example of how to apply our newly-learned techniques to a problem, let's look at
a simple Hooke's law spring. This section does require knowing some calculus for full understanding.
For this section, we'll define 

.. math::

	\dot{x}=\frac{dx}{dt}

For a one-dimensional Hooke's law spring, we know that the force is directly proportional to the
displacement from equilibrium, but in the opposite direction. That is,

.. math::

	F=m\cdot a=m\cdot\ddot{x}=-k\cdot x

If we take :math:`w=\sqrt{\frac{k}{m}}`, we have :math:`\ddot{x}=-w^2x`. This is a second-order
differential equation which is generally pretty hard to solve (consider if we had a damped spring!).
But this is all differential equations! How in the world is our eigenvalue problem going to help us?

The only way that it could help is if we could find some way to talk about matrices instead of 
derivatives. If we could do that, maybe we could then solve our problem. If we could just get
this problem to look like a first-order differential equation, then we can use normal
tricks to solve that equation and find a solution for :math:`x(t)`. After trying different ideas for a while,
we might think about taking the derivative of some vector. In fact, what about:

.. math::

	\frac{d}{dt}\left(\begin{array}{c}x \\ \dot{x}\end{array}\right)=
	\left(\begin{array}{c}\dot{x} \\ \ddot{x}\end{array}\right)

Is that really helping our case? Well, if we had some way to have the right-hand side be some square
matrix times the vector we were taking the derivative of and have that be equal to a constant, we'd be home
free. But all that does is set up a system of equations. Let's see if we can figure out which system:

.. math::

	\frac{d}{dt}\left(\begin{array}{c}x \\ \dot{x}\end{array}\right)=
	\left(\begin{array}{c}\dot{x} \\ \ddot{x}\end{array}\right)=
	\left(\begin{array}{cc}a_{1,1} & a_{1,2} \\ a_{2,1} & a_{2,2}\end{array}\right)
	\left(\begin{array}{c}x \\ \dot{x}\end{array}\right)

Well, we know that :math:`\ddot{x}=-w^2x`. So, :math:`\ddot{x}=a_{2,1}x+a_{2,2}\dot{x}=-w^2x` which
gives :math:`a_{2,1}=-w^2,~a_{2,2}=0` since that is the only way for the statement to hold for all :math:`x`.

And let's take a look at the first row of the matrix. :math:`\dot{x}=a_{1,1}x+a_{1,2}\dot{x}` must hold
for all :math:`\dot{x}`, so we arrive at :math:`a_{1,1}=0,~a_{1,2}=1`. Now we're in business:

.. math::

	\frac{d}{dt}\left(\begin{array}{c}x \\ \dot{x}\end{array}\right)=
	\left(\begin{array}{cc}0 & 1 \\ -w^2 & 0\end{array}\right)
	\left(\begin{array}{c}x \\ \dot{x}\end{array}\right)

Now, we have our formulation. But what would it mean for :math:`\left(\begin{array}{cc}0 & 1 \\
-w^2 & 0\end{array}\right)\left(\begin{array}{c}x \\
\dot{x}\end{array}\right)=	\lambda\left(\begin{array}{c}x \\
\dot{x}\end{array}\right)`? The meaning is not so obvious. However, we have now totally eliminated
:math:`\ddot{x}` from our system of equations. That means that if we were to solve this new formulation,
we would end up with equations based solely on :math:`w`, which is a constant, :math:`\lambda`, which
is a scalar we'll solve for, then :math:`x` and :math:`\dot{x}`. That sounds like a system of first-order
differential equations, which we'll likely be able to solve - certainly more easily than trying to solve
the first formulation of the problem which was a second-order differential equation. So, let's use the hammer
that is the eigenvalue problem process on the nail of this problem and see if it helps us out.

.. math::

	\left|\left(\begin{array}{cc}0 & 1 \\ -w^2 & 0\end{array}\right) - 
	\lambda\left(\begin{array}{cc}1 & 0 \\ 0 & 1\end{array}\right)\right|=
	\left|\left(\begin{array}{cc}-\lambda & 1 \\ -w^2 & -\lambda\end{array}\right)\right|=
	\lambda^2+w^2=0

This gives us :math:`\lambda=\pm{iw}`, where :math:`i=\sqrt{-1}`. Because these solutions are so
similar, for the moment, let's try to solve for the eigenvectors at the same time:

.. math::

	\begin{array}{l}\left(\begin{array}{cc}0 & 1 \\ -w^2 & 0\end{array}\right)
	\left(\begin{array}{c}x_\pm \\ \dot{x_\pm}\end{array}\right)=
	\pm{iw}\left(\begin{array}{c}x_\pm \\ \dot{x_\pm}\end{array}\right)
	\\ \\
	\textrm{or,}
	\\ \\
	\dot{x_\pm}=\pm{iw}x_\pm
	\end{array}

This is just a simple equation that says that the derivative of some function is a constant times that
function. At this point, our hammer has done its job, now it's time to stain, coat, and finish the 
masterpiece. While not trivial the above gives the elementary result:

.. math::

	x_\pm=A_{\pm}e^{\pm{iwt}}

That's good, but can we get a better result? Let's go back to our first statement of the problem. We can
easily see that :math:`\ddot{x_\pm}=-w^2x_\pm` through substitution. But, if we take :math:`x_H=x_++x_-`,
we also get that :math:`\ddot{x_H}=-w^2x_H`. That means that :math:`x_H` is an eigenfunction as well,
and is more general than :math:`x_+` or :math:`x_-`. That means that the general solution to our
problem is:

.. math::

	x_H=Ae^{iwt}+Be^{-iwt}

where :math:`A` and :math:`B` would be determined through initial conditions or other information.
However, if we apply Euler's formula (the one relevant to the euation above [
:math:`e^{\pm{ix}}=\cos(x)\pm{i}\sin(x)`
]), and let :math:`C=A+B,~D=(A-B)i`, we arrive at the solution:

.. math::

	x_H=C\cos(wt)+D\sin(wt)

For the most familar form, we take :math:`A^2=C^2+D^2,~A\cos\phi=C,~A\sin\phi=D`, then
:math:`x_H=A(\cos(wt)\cos\phi+\sin(wt)\sin\phi)`. Employing the trignometric identity
:math:`\cos(\alpha-\beta)=\cos\alpha\cos\beta+\sin\alpha\sin\beta`, we finally arrive at:

.. math::

	x(t)=A\cos(wt-\phi)

