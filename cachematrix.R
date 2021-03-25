makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
    x<<-y
    inv <<- NULL
  }
  get <- function() {x}
  setInverse  <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set=set,get=get, setInverse =setInverse,getInverse=getInverse)
}

cachesolve <- function(x,...){
  inv <- x$getInverse()
  if(! is.null(inv)){
    message("getting cached data")
    return(inv)
  } 
  mat <- x$get()
  inv <- solve(mat,...)
  x$setInverse(inv)
  inv
}
## makeCacheMatrix is a function that creates a special "matrix object which can cache its inverse

## then cachesolve  computes the inverse of the special "matrix" returned by makeCacheMatrix above

makeCacheMatrix <- function(x = matrix()) {
  
  
}

##"cachesolve" should retrieve the inverse from the cache

cacheSolve <- function(X,..){
  
  ## Return a matrix that is the inverse of 'x'
}



