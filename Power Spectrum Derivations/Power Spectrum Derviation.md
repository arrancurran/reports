# Power spectrum analysis for quartic potential

## Power spectrum for quadratic trap

Langevin equation for single colloid of radius, $a$ and mass, $m$, in a trap of strength, $k$ and a solvent of viscosity, $\eta$ and Brownian noise, $\xi$,

$m\"x(t) + \gamma \.x(t) + k x(t) = \xi$

Noting system is overdamped, so neglect inertia ($m\ddot x(t)\rightarrow 0$) and that $\tilde{\dot x}(t)=i\omega\tilde{x}(t)$

$\therefore i \omega \gamma \tilde{x}(t) + k \tilde{x}(t) = \tilde{\xi}$

$\therefore \tilde{x}(t) = \frac{\tilde{\xi}}{i \omega \gamma + k }$

$\therefore S_x(\omega) = \langle \tilde{x}(t) \tilde{x}(t)^* \rangle = \frac{\tilde{\xi}}{i \omega \gamma + k }$

#### Single Trap Power Spectrum no intertia
$\therefore S_x(\omega) = \frac{\tilde{\xi}^2}{\gamma^2(\omega_c^2 + \omega^2) }$

### With Interia

Similarly, if the system is underdamped and inertia becomes significant then,

$\therefore - \omega^2 m \tilde{x}(t) + i \omega \gamma \tilde{x}(t) + k \tilde{x}(t) = \tilde{\xi}$

Let $\Omega = \sqrt{k / m}$ and $\Gamma=\gamma / m$

$\therefore - \omega^2 \tilde{x}(t) + i \omega \Gamma \tilde{x}(t) + \Omega^2 \tilde{x}(t) = \tilde{\xi}$

$\therefore \tilde{x}(t)= \frac{\tilde{\xi}}{ \Omega^2 - \omega^2 + i \omega \Gamma }$

$\therefore S_x(\omega) = \frac{\tilde{\xi}^2}{ (\omega^2 -\Omega^2)^2 + \omega^2 \Gamma^2 }$

Noting that $\tilde{\xi}^2 \equiv \langle \tilde{\xi} \tilde{\xi}^* \rangle \equiv S_\xi(\omega) = \frac{\Gamma K_B T }{\pi m}$

#### Single Trap Power Spectrum with intertia

$\therefore S_x(\omega) = \frac{ K_B T}{ \pi k} \frac{ \Omega^2 \Gamma } {( \omega^2 -\Omega^2 )^2 + \omega^2 \Gamma^2 }$


## Power Spectrum for Quartic Trap

Underdamped quartic potential, $U(x) = \Delta U \left( \left(\frac{x(t)}{r} \right)^2 - 1 \right)^2$

$\therefore \gamma \.{x}(t) + \frac { \partial U(x) }{\partial x}  =\xi$

This is a nonlinear ODE

$\gamma \.{x}(t) - \left( \frac{4 \Delta U x(t) (d^2 - x(t)^2 )}{d^4}\right) =\xi$

$\langle \hat x^*(\nu)\hat x(\nu)\rangle = \frac{k_B T}{\pi k}\frac{f_c}{\nu^2+f_c^2} + \frac{d^2}{4\pi}\frac{2 f_h}{\nu^2+(2 f_h)^2}.$
