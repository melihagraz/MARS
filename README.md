# MARS

The Gaussian graphical model (GGM) is one of the well-known modelling
approaches to describe biological networks under the steadystate
condition via the precision matrix of data. In literature there
are different methods to infer model parameters based on GGM. The
neighbourhood selection with the lasso regression and the graphical
lasso method are the most common techniques among these
alternative estimation methods. But they can be computationally
demanding when the system’s dimension increases. Here, in this code, we suggest
a non-parametric statistical approach, called the multivariate
adaptive regression splines (MARS) as an alternative of GGM. To
compare the performance of both models, we evaluate the findings
of normal and non-normal data via the specificity, precision,
F-measures and their computational costs. From the outputs, we
see that MARS performs well, resulting in, a plausible alternative
approach with respect to GGM in the construction of complex biological
systems.

In this study, we propose to unravel the challenge in the estimation of the precision matrix
via the MARS model. To the best of our knowledge, this approach has not been performed
yet in deterministic inference of biochemical pathways and has not been considered as
an alternative method for the GGM results. Hence, in MARS, similar to the lasso-based
approaches in the estimation of GGM, we construct a regression model for each node
against all remaining nodes by checking forward and backward steps in the detection of
the final model. In the forward step, we obtain a large model which may cause the overfitting
problem in the end. Whereas, in the backward step, this large model is reduced and
only the terms that contribute to the model remain. The underlying procedure continues
throughout the inference until the optimal model is obtained. The coefficients of this final
model give the conditionally dependent structure.

To prove our idea we have used real dataset which is obtained from BDgraph package in R.

