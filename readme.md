Gmiips
========================================

Gmiips is a matlab class for simulating femtosecond laser pulse
compression using
[Multiphoton Intrapulse Interference Phase Scan](https://en.wikipedia.org/wiki/Multiphoton_intrapulse_interference_phase_scan)
(MIIPS). Gmiips is based on the matlab
[LaserPulse](https://github.com/albeco/LaserPulseClass) class.

MIIPS is a pulse characterization technique based on
[Second Harmonic Generation](https://en.wikipedia.org/wiki/Second-harmonic_generation)
(SHG) and femtosecond pulse-shaping. Gated-MIIPS, or simply
[G-MIIPS](https://www.osapublishing.org/josab/fulltext.cfm?uri=josab-31-5-1118&id=283564),
is a more accurate version of MIIPS, suitable for broadband and highly
distorted pulses.

Introduction to MIIPS
----------------------------------------

MIIPS is based on the idea is that the SHG intensity at a certain
frequency is maximum if, at that frequency, the second derivative of
the spectral phase is null.

The second derivative of the spectral phase with respect to the
angular frequency is also called
[group delay dispersion](http://www.rp-photonics.com/group_delay_dispersion.html)
or simply GDD.

A MIIPS measurements consists of modulating the spectral phase of
the laser pulse while simultaneously recording SHG spectra. The
modulation function is typically a sinusoid which is scanned across
the laser spectrum. By stacking together all the measured spectra
one obtains a map with on one axes the frequency and on the other
axes a scanning parameter. These kind of data are known as "MIIPS
traces" because they contain well defined traces where the SHG is
maximum. The analysis of the position of the MIIPS traces gives an
estimate of the GDD for each spectral component of the laser pulse.

The modulation function can be written as:

$\varphi_{\mathrm{mod}}(\omega) = \Phi_0 \sin\left(\tau (\omega-\omega_0)
- \psi\right)$

where $\Phi_0$ is the modulation amplitude, $\tau$ is the
modulation frequency (expressed in units of time) and $\psi$ is a
scanning parameter. The sin function can be optionally replaced with a
pseudosinusoid, which gives more accurate results (see A.Comin, Applied
Physics B, 2015).

Introduction to G-MIIPS
----------------------------------------
G-MIIPS is based on the observation that MIIPS is not very accurate
when measuring broad-band pulses. The accuracy can improved by
reducing the bandwidth of the laser using an amplitude 'gate', which
is scanned across the laser specrum, alongside the phase
modulation.

The most common choice for the scanning gate is the Gaussian function:

$\exp\left[-\left(\tau (\omega-\omega_0) - \psi\right)^2 /
\sigma^2\right]$


Software Requirements:
----------------------------------------

The [LaserPulse](https://github.com/albeco/LaserPulseClass) class must
be present in the matlab search path. The Laser class is open source
and can be downloaded on
[GitHub](https://github.com/albeco/LaserPulseClass).

Installation:
----------------------------------------

 * **Automatic Installation:**
    From matlab: go to the folder where the Gmiips class is located
    (for example: 'cd GmiipsClass') and run the installer script 'install_Gmiips.m'.
 * **Manual Installation:** For installing the **Gmiips** class, just
     include its parent folder in the matlab search path or,
     alternatively, copy the '@Gmiips' folder into a folder which is
     in the matlab search path.  If the manual for the Gmiips class is
     missing, you can generate it using the matlab 'publish'
     function. See 'install_Gmiips.m' for an example.
