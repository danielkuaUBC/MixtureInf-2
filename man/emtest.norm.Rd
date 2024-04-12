\name{emtest.norm}
\alias{emtest.norm}
\title{
test the order of a mixture of normals with unequal variance
}
\description{
EM-test for the order of a finite mixture of normals with unequal variance.
}
\usage{
emtest.norm(x, m0 = 1, pens = NULL, 
	    inival = NULL, len = 10, niter = 50, tol = 1e-6, k = 3, rformat = FALSE)
}
\arguments{
  \item{x}{
data, can be either a vector or a matrix with the 1st column being the the observed values and the 2nd column being the corresponding frequencies.
}
  \item{m0}{
order of the finite mixture model under the null hypothesis. default value: m0 = 1.
}
  \item{pens}{
a 2-dimensions vector with the level of penalty functions for mixing proportion and variance,
default value: pens = NULL.
(if not provided, it will be determined by the formulas described in Chen, Li and Fu, 2012)
}
  \item{inival}{
initial values for the EM-algorithm to compute the MLE under the null model, 
a 3m0-dimensions vector including m0 mixing proportions, m0 component means and m0 component variances, 
or a matrix with 3m0 columns, default value: inival = NULL. 
(if not provided, random initial values are used.)
}
  \item{len}{
number of random initial values for the EM-algorithm, default value: len = 10.
}
  \item{niter}{
number of iterations for all initial values in the EM-algorithm. 
The algorithm runs EM-iteration niter times from each initial value. 
The iteration will restart from the parameter value with the highest 
likelihood value at the point and run until convergence. default value: niter = 50.
}
  \item{tol}{
tolerance level for the convergence of the EM-algorithm, default value: tol = 1e-6.
}
  \item{k}{
number of EM iterations: default value: k = 3.
}
  \item{rformat}{
form of the digital output: default of R package is used when rformat = T; If rformat = T, the digital 
output is rounded to the 3rd dicimal place if it is larger than 0.001, keeps 3 significant digits otherwise. 
The default value of rformat is F.
}
}
\value{
Return an object of class EM-test with the following elements:

MLE of the parameters under the null hypothesis (order = m0)

Parameter estimates under the specific alternative whose order is 2m0

EM-test statistic

P-value

Level of penalty
}
\references{
Chen, J. and Li, P. (2009). Hypothesis test for normal mixture models: The EM approach. The Annals of Statistics. 37, 2523--2542.

Chen, J., Li, P. and Fu, Y. (2012). Inference on the order of a normal mixture. JASA. 107, 1096--1105.
}
\author{
Shaoting Li, Jiahua Chen and Pengfei Li
}
\seealso{
plotmix.norm, pmle.norm, rmix.norm
}
\examples{
#load the grains data set,
#conduct homogeneity test by the EM-test.
data(grains)
emtest.norm(grains)
}
\keyword{htest}
