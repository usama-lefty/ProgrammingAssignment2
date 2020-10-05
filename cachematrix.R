## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##this function will create a list of functions to set/get the matrix 
##and get/set the value of inverse from cache.
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<-y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(z) inv <<- z
  getinv <- function() inv
  list(set=set,get=get,setinv = setinv,getinv = getinv)

}


## Write a short comment describing this function

##this function first checks the cache for existing value of inverse
##otherwise gets the matrix, calculates its inverse and sets it.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   inv <- x$getinv()
   if(!is.null(inv)){
     message("retrieving cache...")
     return(inv)
   }
   matrix_data <-x$get()
   inv <- solve(matrix_data)
   x$setinv(inv)
   inv
}
