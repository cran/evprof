% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exploration.R
\name{round_to_interval}
\alias{round_to_interval}
\title{Round to nearest interval}
\usage{
round_to_interval(dbl, interval)
}
\arguments{
\item{dbl}{number to round}

\item{interval}{rounding interval}
}
\value{
numeric value
}
\description{
Round to nearest interval
}
\examples{
set.seed(1)
random_vct <- rnorm(10, 5, 5)
round_to_interval(random_vct, 2.5)

}
