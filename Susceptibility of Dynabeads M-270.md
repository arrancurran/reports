# Susceptibility of Dynabeads M-270

## Magnetic Gradient

According to Langevin, a paramagnetic colloid will experience a continuous force $F$ due to a magnetic gradient $\.B_x$.

$ m\"x(t) = \mu_x \.B_x - \gamma \.x(t) + \xi $

Where $\gamma$ is the viscous drag and is equal to $6 \pi \nu a = 2.64\cdot10^{-8}$

Neglecting $m\"x(t)$ and $\xi$ and rearranging for the magnetic moment, $\mu_x$,

$\mu_x = {\gamma \.x(t) \over \.B_x} $.

## Measurments

Setting the coil driver to $1.954 A$ with one cored coil and one empty coil we get $27.3$ and $11.4$ $mT$ on either side of a Hellma cell. So $\.B=1.28mT$ and $B(x=0) = 19.35 mT$, taking $x=0$ to be the centre of the Hellma cell.

Sixty minutes of data was taken at $10 Hz$.

#### Tracking Issue

I had some tracking issues with the Matlab trck() function, stopping me analyzing the entire data set in one.

## Result

For the first 3 colloids I get $\.x(frame) = 1.5706$ $pixels / frame$ $==$ $2.1899$ $\mu m /s$.

So the average magnetic moment is $2.64 \cdot 10^{-8} \times 2.1899 \cdot 10^{-6} \over 1.28$ $=4.52 \cdot 10^{-14}$ $A m^2$

## Magnetic Susceptibility

From Colins thesis [Eq. 2.10], the magnetic moment is realted to the magnetic susceptibility, $\chi_v$ by $\mu_x = {V_p \chi_v B \over \mu_0},$

$\therefore \chi_v = {\mu_x \mu_o \over V_p B}$ $= 4.52 \cdot 10^{-14} $,

where $\mu_0 = 1.2566 \cdot 10^{−6} N A^{-2}$ is the vacuum permeability.

$\therefore \chi_v = {4.52 \cdot 10^{-14} \times 1.26 \cdot 10^{−6}  \over 1.1494 \cdot 10^{-17}  \times 19.35 \cdot 10^{-3} }$ $ = 0.25$

Significantly lower than Miranda's result where $\chi_v = 1.03$.

## Drag coefficient

The drag coefficient, $\gamma$ is the drag on a sphere in flow and not the drag on a sphere being pushed along a surface, through a static solvent.

### Faxen's Correction

Faxen states that the drag coefficient needs to be scaled when near a solid wall as follows,

$\gamma_f = {\gamma \over 1 - (9/16)(a/s) + (1/8)(a/s)^3}$.

In our case $s=a$ so $\gamma_f = \gamma {16 \over 5}$.

$\therefore$ the average magnetic moment is $16 \times 2.64 \cdot 10^{-8} \times 2.1899 \cdot 10^{-6} \over 5 \times 1.28$ $=14.448 \cdot 10^{-14}$ 

This corrected value give us $\chi_v =0.82$.

### Miranda's Correction

Miranda's thesis states the drag coefficient is $6.14 \times 10^{−8}$.

>"measured from the MSD of particles in a typical sample cell"

This value of $\gamma$ gives $\chi_v =0.59$.

