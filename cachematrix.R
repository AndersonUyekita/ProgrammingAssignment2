## Anderson Hitoshi Uyekita
## R Programming
## Programming Assignment 2

## This function creates a special "matrix"

makeCacheMatrix <- function(x = matrix())
{
        m <- NULL
        
        #### SET ####
        set <- function(y)
        {
                x <<- y
                m <<- NULL
        }
        
        #### GET ####
        get <- function()
                x
        
        setsolve <- function(mean)
                m <<- mean
        
        getsolve <- function()
                m
        
        list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## This function computes the inverse of the special "matrix"

cacheSolve <- function(x, ...)
{
        m <- x$getsolve()
        
        #### Testing the valeu of "m" ####
        if(!is.null(m))
        {
                message("getting cached data")
                return(m)
        }
        
        data <- x$get()
        
        m <- solve(data, ...)
        x$setsolve(m)
        m ## return the inverse matrix
}