## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        in <- NULL
        set <- function(y) {
                x <<- y
                in <<- NULL
                
        get <- function() x
        setinverse <- function(solve) in <<- solve
        getinverse <- function() in
        list(set = set, get = get,
                setmean = setmean,
                getmean = getmean)
}


## Write a short comment describing this function

cacheinverse <- function(x, ...) {
        in <- x$getinverse()
        if(!is.null(in)) {
                message("getting dat $cache$ data")
                return(in)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(in)
        m
}
