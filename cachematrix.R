##-----------------------------------------------------------------------------
# cachematrix.R - Programming Assignment 2
##-----------------------------------------------------------------------------

## Put comments here that give an overall description of what your
## functions do:
# The purpose of this R script is to create two functions. The first function 
# will create a square-invertible matrix and then cache its inverse.
# The second function will do the inverse computation of the matrix.

##-----------------------------------------------------------------------------
#
##-----------------------------------------------------------------------------

## 1st FUNCTION:
## Write a short comment describing this function:
# This function creates a special "matrix" object that can cache its inverse.
# Because we have the given that our matrix will always be invertible,
# we don't need to create a special case to look for non-invertible
# matrices.

makeCacheMatrix <- function(x = matrix()) 
  {
    m <- NULL
    set <- function(y) 
      {
        x <<- y
        m <<- NULL
      }
    get <- function() 
    x
    setInverse <- function(Inverse) 
    m <<- Inverse
    getInverse <- function() 
    m
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  }

##-----------------------------------------------------------------------------
## 2nd FUNCTION:
## Write a short comment describing this function:
# This function computes the inverse of the special "matrix" returned by 
# makeCacheMatrix above. If the inverse has already been calculated (and the 
# matrix has not changed), then the cachesolve should retrieve the inverse from
# the cache. The return of this funciton is the inverse.

cacheSolve <- function(x, ...) 
  {
    m <- x$getInverse()
    if(!is.null(m)) 
      {
        message("getting cached data")
        return(m)
      }
    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(m)
    m
  }
##-----------------------------------------------------------------------------
#
##-----------------------------------------------------------------------------

# Call the function:

# Example 1:
myMat=matrix(c(1,1,1,3,4,3,3,3,4),3,3)
cacheSolve(makeCacheMatrix(myMat))
# Answer should be:
matrix(c(7,-1,-1,-3,1,0,-3,0,1),3,3)

# Example 2:
myMat=matrix(c(4,3,3,2),2,2)
cacheSolve(makeCacheMatrix(myMat))
# Answer should be:
matrix(c(-2,3,3,-4),2,2)

# Example 3:
myMat=matrix(c(4,2,7,6),2,2)
cacheSolve(makeCacheMatrix(myMat))
# Answer should be:
matrix(c(0.6,-0.2,-0.7,0.4),2,2)

# Example 4:
myMat=matrix(c(3,2,17,22,43,0,-6,14,-2,12,0,0,2,15,1,0,0,0,8,-1,0,0,0,0,5),5,5)
cacheSolve(makeCacheMatrix(myMat))
# Answer should be:
matrix(c(1/3,1/9,-65/18,847/144,-889/720,0,-1/6,7/6,-107/48,-67/240,0,0,1/2,
         -15/16,-23/80,0,0,0,1/8,1/40,0,0,0,0,1/5),5,5)

# Example 5:
myMat=matrix(rnorm(64,mean=13,sd=100),8,8)
cacheSolve(makeCacheMatrix(myMat))
# Answer should be:
solve(myMat)
