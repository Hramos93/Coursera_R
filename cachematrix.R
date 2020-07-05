## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL 
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
get <- function() x 
if (det(x) != 0){
  setinv <- function(solve) m <<- solve(x)
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}
else {
  print(' det is 0, it is a matrix singular, is not invertible')
}

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <-x$getinv()
  if(!is.null(m)){
    message("getting cached data")
    return (m)
  
  }
data <- x$get()
if (det(data) != 0){
  m <- solve(data, ...)
  x$setinv(m)
  m
}
else{
  print(' det is 0, it is a matrix singular, is not invertible')
}
          ## Return a matrix that is the inverse of 'x'
}

#Matrix test
#a <- c(-24, -18, 5)
#b <- c(-20, -15, 4)
#c <- c(-5, -4, 1)

#matrix <- as.matrix(cbind(a,b,c))
