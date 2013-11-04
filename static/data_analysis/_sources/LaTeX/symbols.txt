Symbols
=======

This is not intended to be an exhaustive list of `LaTeX symbols`_, just the ones which
are most likely to be useful. Nearly all of these symbols must be typed while in math mode.

.. _LaTeX symbols: http://www.tex.ac.uk/tex-archive/info/symbols/comprehensive/symbols-a4.pdf

These symbols can be accessed without any special commands:

::
   
   + - = ! / ( ) [ ] < > | ' : < >


Beyond these, the majority of symbols are produced with commands. Commands start with 
``\`` and tell :math:`\LaTeX` to replace the command with the symbol which the
command represents. For example,

::
   
   
   $(\forall \epsilon > 0)(\exists N : n > N \implies d(p_n, p) < \epsilon)$
   


produces :math:`(\forall \epsilon>0)(\exists N:n>N\implies d(p_n,p)<\epsilon)`. Most
Greek letters have a command specifically for them. To differentiate between capital and lowercase, capitalize the initial letter. For example, :code:`\sigma` produces
:math:`\sigma` and :code:`\Sigma` produces :math:`\Sigma`. Some capital letters such
as Alpha, Beta, and Kappa do not have their own symbol - since they are identical to
A, B, and K respectively they may be accessed by just typing the letter. Lowercase phi
has two forms, :code:`\phi` which yields :math:`\phi` and :code:`\varphi` which yields
:math:`\varphi`. The same pattern follows for epsilon, theta, pi, rho, and sigma.


.. table:: **Table 1: Equalities, Inequalities, and Sets**

    =========== ================= ============= ================= ============= ================= ============= =================
    **Command** **Symbol**        **Command**   **Symbol**        **Command**   **Symbol**        **Command**   **Symbol**         
    =========== ================= ============= ================= ============= ================= ============= =================
    \\neq       :math:`\neq`      \\equiv       :math:`\equiv`    \\leq         :math:`\leq`      \\geq         :math:`\geq`      
    \\sim       :math:`\sim`      \\approx      :math:`\approx`   \\gg          :math:`\gg`       \\ll          :math:`\ll`       
    \\subset    :math:`\subset`   \\supset      :math:`\supset`   \\subseteq    :math:`\subseteq` \\supseteq    :math:`\supseteq` 
    \\forall    :math:`\forall`   \\exists      :math:`\exists`   \\propto      :math:`\propto`   \\cong        :math:`\cong`     
    \\in        :math:`\in`       \\ni          :math:`\ni`       \\cap         :math:`\cap`      \\cup         :math:`\cup`      
    \\parallel  :math:`\parallel` \\perp        :math:`\perp`     
    =========== ================= ============= ================= ============= ================= ============= =================

Many of these may be inverted with the \\not command. If used before many commands,
:math:`\LaTeX` renders the negated relation. For example, :code:`\not\subset` produces
:math:`\not\subset` and :code:`\not\sim` produces :math:`\not\sim`. If a symbol does
not have a negated version, then :math:`\LaTeX` will simply superimpose the not symbol,
:math:`\not\;` on it. So :code:`\not a` will become :math:`\not a`.


.. table:: **Table 2: Logic**

    =================== ============= ======================= ================
    **Symbol**          **Command**   **Symbol**              **Command**     
    =================== ============= ======================= ================
    :math:`\models`     \\models      :math:`\neg`            \\neg
    :math:`\implies`    \\implies     :math:`\iff`            \\iff
    :math:`\Rightarrow` \\Rightarrow  :math:`\Leftrightarrow` \\Leftrightarrow
    :math:`\forall`     \\forall      :math:`\exists`         \\exists
    :math:`\land`       \\land        :math:`\lor`            \\lor
    :math:`\emptyset`   \\emptyset    :math:`\varnothing`     \\varnothing
    =================== ============= ======================= ================


Note that it is preferred to use the :code:`\Rightarrow` (:math:`\Rightarrow`) for
"implies" and :code:`\Leftrightarrow` (:math:`\Leftrightarrow`) for "if and only if."
If it feels more natural (and easier) to type :code:`\implies` and :code:`\iff`, then
including these two lines in the preamble  will automatically replace all instances of
:code:`\implies` and :code:`\iff` with their preferred counterparts.

::

     \renewcommand{\implies}{\Rightarrow}
     \renewcommand{\iff}{\Leftrightarrow}


The explanation for the above code can be found on the :code:`\newcommand` page.


.. table:: **Table 3: Operators**

    =========== ================= ============= ================= ============= ================= ============= =================
    **Command** **Symbol**        **Command**   **Symbol**        **Command**   **Symbol**        **Command**   **Symbol**       
    =========== ================= ============= ================= ============= ================= ============= =================
    \\pm        :math:`\pm`       \\mp          :math:`\mp`       \\times       :math:`\times`    \\div         :math:`\div`
    \\cdot      :math:`\cdot`     \\ast         :math:`\ast`      \\vee         :math:`\vee`      \\wedge       :math:`\wedge`
    \\oplus     :math:`\oplus`    \\otimes      :math:`\otimes`   \\circ        :math:`\circ`     \\bullet      :math:`\bullet`
    =========== ================= ============= ================= ============= ================= ============= =================



.. table:: **Table 4: Arrows and Dots**

    =============== ====================== ================= ======================== =================== =========================== ================ =======================
    **Command**     **Symbol**             **Command**       **Symbol**               **Command**         **Symbol**                  **Command**      **Symbol**         
    =============== ====================== ================= ======================== =================== =========================== ================ =======================
    \\to            :math:`\to`            \\gets            :math:`\gets`            \\rightarrow        :math:`\rightarrow`         \\leftarrow      :math:`\leftarrow`
    \\mapsto        :math:`\mapsto`        \\leftrightarrow  :math:`\leftrightarrow`  \\rightleftharpoons :math:`\rightleftharpoons`  \\leadsto        :math:`\leadsto`
    \\leftharpoonup :math:`\leftharpoonup` \\leftharpoondown :math:`\leftharpoondown` \\rightharpoondown  :math:`\rightharpoondown`   \\rightharpoonup :math:`\rightharpoonup`
    \\uparrow       :math:`\uparrow`       \\downarrow       :math:`\downarrow`       \\updownarrow       :math:`\updownarrow`
    \\ldots         :math:`\ldots`         \\cdots           :math:`\cdots`           \\vdots             :math:`\vdots`              \\ddots          :math:`\ddots`
    =============== ====================== ================= ======================== =================== =========================== ================ =======================


.. table:: **Table 5: Math Mode Accents**
    
    ============= ==================== =============== ====================== ================= ========================= ============== =====================
    **Command**   **Symbol**           **Command**     **Symbol**             **Command**       **Symbol**                **Command**    **Symbol**         
    ============= ==================== =============== ====================== ================= ========================= ============== =====================
    \\hat{a}      :math:`\hat{a}`      \\check{a}      :math:`\check{a}`      \\dot{a}          :math:`\dot{a}`           \\ddot{a}      :math:`\ddot{a}`
    \\bar{a}      :math:`\bar{a}`      \\vec{a}        :math:`\vec{a}`        \\tilde{a}        :math:`\tilde{a}`         
    ============= ==================== =============== ====================== ================= ========================= ============== =====================


Many arrow commands have a counterpart which is referenced by capitalizing the first letter.
For example, :code:`\uparrow` produces :math:`\uparrow` and :code:`\Uparrow` produces
:math:`\Uparrow`

Miscellaneous math symbols.

.. table:: **Table 7: General Math Symbols**

    =========== ================= ============= ================= ============= ================= ============= =================
    **Command** **Symbol**        **Command**   **Symbol**        **Command**   **Symbol**        **Command**   **Symbol**       
    =========== ================= ============= ================= ============= ================= ============= =================
    \\infty     :math:`\infty`    \\aleph       :math:`\aleph`    \\hbar        :math:`\hbar`     \\ell         :math:`\ell`
    \\imath     :math:`\imath`    \\jmath       :math:`\jmath`    \\Re          :math:`\Re`       \\Im          :math:`\Im`
    \\nabla     :math:`\nabla`    \\Delta       :math:`\Delta`    \\partial     :math:`\partial`  
    =========== ================= ============= ================= ============= ================= ============= =================

Some symbols are natively used to perform commands, and so need to be referenced
with a specific character sequence.

.. table:: **Table 8: Command Symbols**

    =========== ================= ============= ================= ============= ================= ============= =================
    **Command** **Symbol**        **Command**   **Symbol**        **Command**   **Symbol**        **Command**   **Symbol**       
    =========== ================= ============= ================= ============= ================= ============= =================
    \\$         :math:`\$`        \\&           :math:`\&`        \\%           :math:`\%`        \\#           :math:`\#`
    =========== ================= ============= ================= ============= ================= ============= =================


In some cases :code:`\$` will not work, in which case it can be replaced with
:code:`\textdollar`.










