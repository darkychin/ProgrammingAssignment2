## Put comments here that give an overall description of what your
## functions do

##1. Description: a list of functions that aimed to return an inverse matrix of a provided matrix data


## Write a short comment describing this function

##2. Instantiate cached matrix object "x" and inverse matrix object "im", 
## getters and setters function for the mentioned objects

makeCacheMatrix <- function(x = matrix()) {
  im <- NULL ## Inverse Matrix
  set<- function (y){
    x <<- y
    im <<- NULL
  }
  get <- function () x
  setIM <- function(inverseMatrix) im <<- inverseMatrix
  getIM <- function() im
  list(set = set, get = get, setIM = setIM, getIM = getIM)
  
}


## Write a short comment describing this function

##3. return cached object "im" in function object "x" is available, 
## else calculate inverse matrix "im" from cached matrix "data" and return it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  im <- x$getIM()
  if(!is.null(im)){
    message("Getting cached Inverse Matrix")
    return(im)
  }
  data <- x$get()
  im <- solve(data,...)
  x$setIM(im)
  im
}