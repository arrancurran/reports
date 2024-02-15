# Susceptibility of Dynabeads M-270

## Magnetic Gradient

According to Langevin, a paramagnetic colloid will experience a continuous force $F$ due to a magnetic gradient $\.B_x$.

$m\"x(t) = \mu_x \.B_x - \gamma \.x(t) + \xi$

Where $\gamma$ is the viscous drag and is equal to $6 \pi \nu a = 2.64\cdot10^{-8}$

Neglecting $m\"x(t)$ and $\xi$ and rearranging for the magnetic moment, $\mu_x$,

$\mu_x = {\gamma \.x(t) \over \.B_x} $.

## Measurments

Setting the coil driver to $1.954 A$ with one cored coil and one empty coil we get $27.3$ and $11.4$ $mT$ on either side of a Hellma cell. So $\.B=1.28mT/mm$ and $B(x=0) = 19.35 mT$, taking $x=0$ to be the centre of the Hellma cell.

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

$\therefore \chi_v = {4.52 \cdot 10^{-14} \times 1.26 \cdot 10^{−6}  \over 1.1494 \cdot 10^{-17}  \times 19.35 \cdot 10^{-3} }$ $= 0.25$

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


## Repeat High Field Analysis with Gaussian fit to velocities

For the third colloid to enter the field of view we track it across the entire FoV.

Fit Name: High Field Fit

Gaussian Curve Fit (gauss1)

$f(x) = a1*exp(-((x-b1)/c1)^2)$

### Coefficients and 95% Confidence Bounds
        Value   Lower   Upper
    a1  0.0270  0.0254  0.0286
    b1  1.5774  1.5182  1.6366
    c1  1.2401  1.1553  1.3249

### Goodness of Fit
                Value  
    SSE         0.0009 
    R-square    0.8905 
    DFE         81.0000
    Adj R-sq    0.8878 
    RMSE        0.0033 

$\therefore \.x(frame) = 1.5774$ $pixels / frame$ $==$ $2.1993$ $\mu m /s$.

$m_p=1.0550 \cdot 10^{-13}$ $Am^2$ and,

$\chi_v = 0.5961$

## Repeat with lower field at 1Hz

## Measurments

Setting the coil driver to $0.192 A$ with one cored coil and one empty coil we get $2.085$ and $0.995$ $mT$ on either side of a Hellma cell. So $\.B=0.0879mT/mm$ and $B(x=0) =  1.540 mT$, taking $x=0$ to be the centre of the Hellma cell.

Two hours of data was taken at $1 Hz$.

For the only colloid in the field of view the particles positions are binned and normalised to give the probability distrubtion of the velocities. A Gaussian fit reveals the average velocity to be $\.x(t) = 0.0226$ $\mu m /s$.

So the magnetic moment is $1.5787 \cdot 10^{-14}$ $A m^2$

## Magnetic Susceptibility

Using Miranda's measured drag coefficient we get $\chi_v =1.1207$ $cf$ $1.03$.

### Matlab Fit

Fit Name: Gaussian Fit

Gaussian Curve Fit

$f(x) = a*exp(-((x-b)/c)^2)$

### Coefficients and 95% Confidence Bounds

          Value      Lower     Upper  

    a     0.0240    0.0225     0.0255

    b     0.0226    -0.0070    0.0522

    c     0.5681    0.5253     0.6108

### Goodness of Fit

                Value  
    SSE         0.0010 
    R-square    0.8528 
    DFE         84.0000
    Adj R-sq    0.8493 
    RMSE        0.0034 


# Summary

$m\"x(t) = m_p \nabla B(x) - \gamma \.x(t) + \xi$

$\gamma v_p - m_p \.B + \xi = 0$

$m_p = {\gamma v_p \over \.B}$

$\chi_v={m_p \mu_0 \over V_p B}$

$\chi_v={\gamma v_p \over \.B}{\mu_0 \over V_p B}$


## Appendix C: Measuring magnetic susceptibility using field gradients

Within this appendix we describe a simple approach to estimate the volume magnetic susceptibility of a single paramagnetic particle in a magnetic field gradient, $\nabla B(x)$. Whilst this method is not as robust as reported in this paper, it serves as a comparison for our reported magnetic susceptibility, $\chi_v=1.03$

### Calculating magnetic susceptibility as a function of magnetic field

A particle in a magnetic gradient experiences a force, $F_B = m_p \nabla B(x)$ [REF doi.org/10.1063/1.3009686], where $m_p$ is the induced magnetic moment of the particle. We can rewrite the Langevin function for a particle of mass, $m$ in the presence of such a gradient as,

$m\"x(t) = m_p(B) \nabla B(x) - \gamma \.x(t) + \xi$,

where $\gamma$ is the viscous drag of the surrounding fluid and $\xi$ describes the stochastic Brownian force. We can simplify eq. [REF] by noting that the inertia term $m\"x(t)$ is insignificant when compared to the right hand side of eq. [REF] and by averaging over many measurements so that $\bar \xi = 0$. Rearranging for the particles magnetic moment, $m_p$,

$m_p(B) = \gamma v_p \nabla B(x)^{-1}$.

With knowledge of the particles magnetic moment, along with the particles volume, $V_p$, we can relate the magnetic moment to the volume susceptibility. To do this we consider the Langevin magnetisation equation [REF doi.org/10.1063/1.2035888] and by Taylor expansion in the limit of small magnetic fields,

<!-- $\chi_v = \mu_0 m_0 \alpha /( 3 V_p)$, where $\alpha$ is a fitting parameter.  [REF CP 80][NEED A PROPER REF FOR THIS] -->

$\chi_v={m_p \mu_0 \over V_p B(x)}$,

where $\mu_0$ is the vacuum permeability constant.


![](PosAndProb.png)


### Particle measurements in a magnetic field gradient

In this experiment we use a low concentration of the paramagnetic particles, prepared as described in Section III. A bright-field microscope with electromagnetic coils on either side of the sample cell is used to generate a magnetic field in the plane of the sedimented particles. A CMOS camera records the particles diffusion across a field of view equal to $286 \mu m$. The coils are driven in series with a tunable current supply, creating magnetic fields ranging from $B=0$ to $\sim$ $30$ $mT$. Inserting an iron core in one coil significantly enhances the generated magnetic field, resulting in a field gradient $\nabla B$ across the sample cell. The paramagnetic particles are driven toward the cored coil at a velocity, $v_p$, with a magnitude equal to $m_p \nabla B / \gamma$.

The sample is securely and precisely placed in the microscope so that the centre of the cell is aligned to the optical axis, which we define as $x=0$. Using a gaussmeter (Hirst GM07) we measure $B$ on either side of the $12.4$ $mm$ cell so as to calculate $\nabla B$. Since our cell is centred on the optical axis we can also assume knowledge of the absolute magnetic field at the centre of the cell centre, $B(0)$. Furthermore, we can assume a constant $B(x)$ across the $286$ $\mu m$ field of view.

The current driving the magnetic coils is set sufficiently low that $m_p(B)$ is well within the linear region of fig. 8 [REF] but high enough so that the force acting on the particle is discernable from $\xi$. 

With a coil current of $0.19 A$ we subject the sample to a magnetic gradient of $\.B=87.9$ $mT m^{-1}$ and $B(0) = 1.54 mT$. After recording 1000 frames at 1 frame per second the particles position is tracked and we calculate the distribution of the particles velocity. 

Fig. [REF] (a and b) shows the tracked particle positions for $\nabla B$, $(B(0))$ of $1.28$ $mT/mm$ ($15.9$ $mT$) and $0.09$ $mT/mm$ ($1.540$ $mT$), respectively. The measured distribution of the particles velocities are shown fig. [REF] (c and d). In both cases, a gaussian fit is used to find the driving velocities, $v_p=$ $2.19$ $\mu m s^{-1}$ and $22.6$ $nm s^{-1}$.

This gives a magnetic moment $m_p =$ $4.52 \times 10^{-14}$ and $1.58 \times 10^{-14}$ $A m^2$. Note that to account for the friction between the particle and the floor of the cell we use a modified drag coefficient, $\gamma = 6.14 \times 10^{−8}$, measured from the mean-squared-displacement of particles in a typical sample cell [REF?].

The magnetic susceptibility of the particle using this method was found to be $\chi_v = 1.1207$.



For comparision we repeat the experiemnt with a higher magnetic field 