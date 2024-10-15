# Masterthesis

This is the repository for my Masters Thesis with the title "Spaces of positive scalar curvature metrics on nonorientable manifolds".

## Abstract

In two groundbreaking papers by Gromov-Lawson and Schoen-Yau, they reduce the question whether a Manifold admits a Metric of Positive scalar curvature to surgery theory and bordism. This approach has been further strengthened since, with a peak in the 2022 paper by Ebert and Wiemeler showing that for a spin Manifold of high enough dimension, the space of metrics of positive scalar curvature is homotopy equivalent to this space of the sphere. 
This work obtains a similar result in a nonorientable case.

## Structure

The thesis is mainly structured into three blocks:
 
 -[ ] Introduction to manifolds with extra Structure (so called theta-structures)
 -[ ] Description of the bordism with thetastructure
 -[ ] Proof of the above mentioned Result


## Repository Structure

There is a main.tex file which should be built via the building path

> pdflatex -shell--escape main.tex
> biber main
> pdflatex -shell--escape main.tex
> pdflatex -shell--escape main.tex

to result in complete and correct interlinking, as well as the references section.
