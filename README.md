# rEDP
An R package to analyze radially-averaged polycrystalline electron diffraction profiles that were generated after the ring pattern was corrected for elliptical (barrel) distortion.

This is a re-write of the R-package `edp` described in Microscopy and Microanalysis, Volume 19, Supplement S2, pp 784-785 (August 2013). `edp` was written before the tools provided by roxygen/devtools, and there were problems with `R-3.2.0`, so rEDP was written as a successor.
The original is available [here](https://github.com/jrminter/edp).

## Building

`rEdp` uses my update of the `Peaks`, `rPeaks`, which is available [here](https://github.com/jrminter/rPeaks)

This works well with R-Studio. I currently use version `0.99.431`.

I build with:

1. ``Build > Document``
2. ``Build > Build and Reload``
3. ``Build > Check Package``.

I could do this from the command line but the RStudio tools are convenient...

## Use

Use cases are described in the coming vignettes.

