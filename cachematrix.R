## This function takes as input a matrix "x" and returns as output a list of four functions:
## 1. A function "set" which simply sets the vale of the matrix and the value of the inverse to "NULL".
## 2. A function "get" which simply 'gets' the matrix.
## 3. A function "setinverse" which just sets i equal to the inverse of x
## 4. A function "getinverse" which just gets the inverse of x and labels it i

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        ## This function just sets the value of the matrix equal to x and the inverse equal to 'NULL'.
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        ## This function doesn't do anything, just returns x:
        get <- function() x
        ## This function sets i equal to the inverse of x:
        setinverse <- function(solve) i <<- solve
        ## This function just gets the inverse of x, labelled i:
        getinverse <- function() i
        ## Finally, the function returns a list of these four functions:
        list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)
}
  
  
  ## This function checks whether an inverse has been calculated, and if not, calculates it.
  
cacheinverse <- function(x, ...) {
        ## First get the inverse of a matrix if it already exists
        i <- x$getinverse()
        ## if it exists, return the inverse
        if(!is.null(i)) {
                message("getting that $cache$ data")
                return(i)
        }
        ## if it does not exist, calculate the inverse and return it        
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
  }
