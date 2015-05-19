## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Assignment: Caching the Inverse of a Matrix
# Two Functions are created
# makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
# cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above
#
# xInverse is the inverse matrix
# xvalues is the matrix of values to be inverted
# Matinverse is the inverted matrix passed to xInverse
# data is also the matrix of values to be inverted that is passed

# function sets and gets the matrix inverse

makeCacheMatrix <- function( x = matrix() ) {
    xInverse <- NULL 
    set <- function( xvalues ) {
        x <<- xvalues
        xInverse <<- NULL
    }
    get <- function() {x}
    setinverse <- function( Matinverse) {xInverse <<- Matinverse}
    getinverse <- function( ) {xInverse}
    list( set = set, get = get, 
        setinverse = setinverse, getinverse = getinverse)
}


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    message( 'Underway')
    
    xInverse <- x$getinverse()
    # if the xInverse matrix exists then the cached value is retrieved 
    if ( !is.null( xInverse)) {
        message( 'Getting Saved Inverse')
        return( xInverse)
    }
    message( 'Inverse Does Not Exist so getting the matrix, inverting the matrix, & saving')
    data <- x$get()
    xInverse <- solve( data, ...)
    x$setinverse(xInverse )
    xInverse
}
