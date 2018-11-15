library(matlib)
analyticalSolution <- function(x,y)
{
  x <- cbind(1,x)
  theta <- inv(t(x)%*%x)%*%t(x)%*%y
  return(theta)
}
x<-runif(50, min = -2, max = 2)
x<- matrix(x)
error <- rnorm(50, 0, 4)
error<- matrix(error)
y <- 2+3*x + error
analyticalSolution(x,y)