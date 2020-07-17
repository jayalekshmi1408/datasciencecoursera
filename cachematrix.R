## Put comments here that give an overall description of what your
## functions do

#In this assignment we want to create a function that returns 
#the inverse of a matrix. Let A be a matrix then B is its iverse
#if and only if AB=BA=I, where I is the identity matrix.
#To find inverse the given matrix must be invertible. Therefore 
#we assume that the matrix is invertible. 

## Write a short comment describing this function

#For producing inverse we use the following steps.
#1.set the matrix
#2.get the matrix
#3.set the inverse
#4.get the inverse

makeCacheMatrix <- function(x = matrix()) {j <- NULL
set <- function(y){
  x <<- y
  j <<- NULL
}
get <- function()x
setInverse <- function(inverse) j <<- inverse
getInverse <- function() j 
list(set = set, get = get, 
     setInverse = setInverse, 
     getInverse = getInverse)

}


## Write a short comment describing this function

#The following function computes the inverse of the special 
#"matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}
