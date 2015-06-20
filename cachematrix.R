## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse_matrix <- function(inverse) i <<- inverse
    getinverse_matrix <- function() i
    list(set=set, get=get, setinverse_matrix=setinverse_matrix, getinverse_matrix=getinverse_matrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse_matrix()
    if(!is.null(i)) {
        message("retrieving cached data.")
        return(i)
    }
    d <- x$get()
    i <- solve(d)
    x$setinverse_matrix(i)
    i
}
