## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL

  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  setinvers <- function(solve) m <<- solve
  getinvers <- function() m
  

  
  list(set=set, get=get, setinvers=setinvers, getinvers=getinvers)
}


## return cached data if exsist.  
cacheSolve <- function(x, ...) {

## Return a matrix that is the inverse of 'x'..
  m <- x$getinvers()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }

  data <- x$get()
  m <- solve(data, ...)
  x$setinvers(m)
  m
}
