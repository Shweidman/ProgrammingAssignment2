## Put comments here that give an overall description of what your
## functions do

## This function takes as input a matrix "x" and returns as output a list of four things:
## 1. A function "set" which simply sets the vale of the matrix and the value of the inverse to "NULL".
## 2. A function "get" which simply 'gets' the matrix.
## 3. 

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        ## This function just sets the value of the matrix equal to x and the inverse equal to 'NULL'.
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        ## This function doesn't do anything, just returns x
        get <- function() x
        ## This function sets i equal to the inverse of x
        setinverse <- function(solve) i <<- solve
        ## This function calculated the inverse of x and 
        getinverse <- function() i
        ## This function just gets the inverse of x, labelled i
        list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)
}
  
  
  ## Write a short comment describing this function
  
cacheinverse <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting dat $cache$ data")
                return(i)
        }
                data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
  }
