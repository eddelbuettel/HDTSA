% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Tools_martingale.R
\name{MartG_test}
\alias{MartG_test}
\title{Testing for martingale difference hypothesis in high dimension}
\usage{
MartG_test(
  X,
  lag.k = 2,
  B = 1000,
  type = c("Linear", "Quad"),
  alpha = 0.05,
  kernel.type = c("QS", "Par", "Bart")
)
}
\arguments{
\item{X}{\eqn{{\bf X} = \{{\bf x}_1, \dots , {\bf x}_n \}'}, an \eqn{n\times
p} sample matrix, where \eqn{n} is the sample size and \eqn{p} is the 
dimension of \eqn{{\bf x}_t}.}

\item{lag.k}{Time lag \eqn{K}, a positive integer, used to calculate the test
statistic. Default is \code{lag.k} \eqn{=2}.}

\item{B}{Bootstrap times for generating multivariate normal distributed 
random vectors in calculating the critical value. 
Default is \code{B} \eqn{=2000}.}

\item{type}{String, a map is chosen by the \proglang{R} users, such as the
default option is \code{'Linear'} means linear identity 
map (\eqn{\boldsymbol \phi({\bf x})={\bf x}}). Also including another 
option \code{'Quad'} (Both linear and quadratic terms 
\eqn{\boldsymbol \phi({\bf x})=\{{\bf x}',({\bf x}^2)'\}'}). 
See Section 2.1 in Chang, Jiang and Shao (2021) for more information.}

\item{alpha}{The prescribed significance level. Default is 0.05.}

\item{kernel.type}{String, an option for choosing the symmetric kernel 
used in the estimation of long-run covariance matrix, 
for example, \code{'QS'} (Quadratic spectral kernel), 
\code{'Par'} (Parzen kernel) and \code{'Bart'} 
(Bartlett kernel), see Andrews (1991) for more 
information. Default option is \code{kernel.type = 'QS'}.}
}
\value{
An object of class "MartG_test" is a list containing the following
  components:

  \item{reject}{Logical value. If \code{TRUE}, it means rejecting the null
  hypothesis, otherwise it means not rejecting the null hypothesis. }
  \item{p.value}{Numerical value which represents the p-value of the test.}
}
\description{
\code{MartG_test()} implements a new test proposed in
 Chang, Jiang and Shao (2021) for the following hypothesis testing problem: 
\deqn{H_0:\{{\bf x}_t\}_{t=1}^n\mathrm{\ is\ a\ MDS\ \ versus\ \ }H_1:
\{{\bf x}_t\}_{t=1}^n\mathrm{\ is\ not\ a\ MDS,} } where 
MDS is the abbreviation of "martingale difference sequence".
}
\examples{
n <- 200
p <- 150
X <- matrix(rnorm(n*p),n,p)
res <- MartG_test(X)
Pvalue <- res$p.value
rej <- res$reject
}
\references{
Chang, J., Jiang, Q. & Shao, X. (2021). \emph{Testing the
  martingale difference hypothesis in high dimension}.
}
