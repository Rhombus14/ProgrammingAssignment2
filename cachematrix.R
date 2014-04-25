##-----------------------------------------------------------------------------
# cachematrix.R - Programming Assignment 2
##-----------------------------------------------------------------------------
## Put comments here that give an overall description of what your
## functions do:

##-----------------------------------------------------------------------------
#
##-----------------------------------------------------------------------------

## 1st FUNCTION:
## Write a short comment describing this function:
# This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

}

##-----------------------------------------------------------------------------
## 2nd FUNCTION:
## Write a short comment describing this function:
# This function computes the inverse of the special "matrix" returned by 
# makeCacheMatrix above. If the inverse has already been calculated (and the 
# matrix has not changed), then the cachesolve should retrieve the inverse from
# the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ## Don't need to worry about a case where matrix is NOT invertible

  solve(X) finds the inverse of a square matrix

}
##-----------------------------------------------------------------------------
#
##-----------------------------------------------------------------------------

# Call the function:

myMat=matrix(c(1,1,1,3,4,3,3,3,4),3,3)
solve(myMat)
cacheSolve(makeCacheMatrix(myMat))
# Answer should be:
matrix(c(7,-1,-1,-3,1,0,-3,0,1),3,3)
