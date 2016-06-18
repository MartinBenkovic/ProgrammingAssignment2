## Following 2 functions are for caching the inverse of matrix

## Short description by steps:

## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of inverse of the matrix
## 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## This function returns the inverse matrix by following steps
## 1. checks if the inverse matrix is already computed
## 2. If yes, it gets the result and skips the computation
## 3. If no, it computes the inverse and sets the value in the cache by setinverse function 

## We assume that matrix is invertible

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("get cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
