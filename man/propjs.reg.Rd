\name{Jensen-Shannon divergence and Hellinger distance based univariate regression for proportions}
\alias{propjs.reg}
\alias{prophelling.reg}
\title{
Jensen-Shannon divergence and Hellinger distance based univariate regression for proportions
}

\description{
Jensen-Shannon divergence and Hellinger distance based univariate regression for proportions.
}

\usage{
propjs.reg(y, x, tol = 1e-07, maxiters = 100) 
prophelling.reg(y, x, tol = 1e-07, maxiters = 100) 
}

\arguments{
\item{y}{
The dependent variable, a numerical vector with percentages. 
}
\item{x}{
A numerical matrix with the indendent variables. We add, internally, the first column of ones.
}
\item{tol}{
The tolerance value to terminate the Newton-Raphson algorithm. 
}
\item{maxiters}{
The max number of iterations that can take place in each regression. 
}
}

\details{
We minimise the Jensen-Shannon divergence instead of the ordinarily used divergence, the Kullback-Leibler. 
Both of them fall under the \eqn{\phi}-divergence class models and hance this one produces asympottically 
normal regression coefficients as well.
}

\value{
A list including:
\item{be}{
The regression coefficients.
}
\item{der2}{
The observed Hessian matrix.
}
\item{js}{
The final Jensen-Shannon divergence.
}
\item{H}{
The final Hellinger distance.
}
\item{iters}{
The number of iterations required by Newton-Raphson.
}
}

\references{
Tsagris, Michail (2015). A novel, divergence based, regression for compositional data. 
Proceedings of the 28th Panhellenic Statistics Conference, 15-18/4/2015, Athens, Greece.
https://arxiv.org/pdf/1511.07600.pdf 
}

\author{
Michail Tsagris

R implementation and documentation: Michail Tsagris <mtsagris@uoc.gr>
}

%\note{
%%  ~~further notes~~
%}

\seealso{
\code{ \link{propols.reg}, \link{simplex.mle}, \link{kumar.mle} }
}

\examples{
y <- rbeta(150, 3, 4)
x <- iris
a <- propjs.reg(y, x)
}

