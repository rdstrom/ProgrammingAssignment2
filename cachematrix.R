## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  set <- function(y) {
    x <<- y
    inv_matrix <<- NULL
  }
  get <- function() x
  set_invMatrix <- function(inv_matrix) inv_matrix <<- inv_matrix
  get_invMatrix <- function() inv_matrix
  
  list(set = set, get = get,
       setmean = set_invMatrix,
       getmean = get_invMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$get_invMatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- <INSERT INV MATRIX HERE>(data, ...)
  x$set_invMatrix(m)
  m
}
