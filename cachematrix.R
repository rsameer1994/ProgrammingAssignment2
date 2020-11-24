## Put comments here that give an overall description of what your
## functions do
## Caching the Inverse of a Matrix

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  im <- NULL
  
  setval <- function(y){
    x <<- y
    im <<- NULL
  }
  getval <- function() x
  
  setinv <- function(inv) im <<- inv
  getinv <- function() im
  
  list(setval= setval, getval= getval, setinv = setinv, getinv=getinv)
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  im <- x$getinv()
  
  if (!is.null(im)) {
    print("getting cached data")
    return(im)
  }
  else{
    
    data1 <- x$getval()
    
    im <- solve(data1)
    
    m$setinv(im)
    
    return(im)
    
  }
}
