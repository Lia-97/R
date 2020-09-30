#문제1

countEvenOdd <- function(vec){
  sum <- 0
  for (i in vec){
    if (is.numeric(i)){
      if (i %% 2 ==0) {
        sum <- sum + 1
      }
    }else{
      return (NULL)
    }
  }return (sum)
}
  
#문제2

vmSum <- function(x){
  sum <- 0
  if(is.vector(x)){
    for (item in x){
      if (is.numeric(item)){
        sum <- sum + item
      }else{
        print("숫자 벡터를 전달하숑!")
        return (0)
      }
    }
    return (sum)
  }else{
    return (print("벡터만 전달하숑!"))
  }
}

vmSum(c(3,7,9))

#문제4

mySum <- function(X){
  if (is.vector(x)){
    if (is.null(x)){
      return (NULL)
    }else if (any(is.na(x))){
      na <- min(x)
      warning("NA를 최저값으로 변경하여 처리함!!")
      sum = 0
      for (i in 1:length(x)){
        sum = sum + x[2*i]
      }
      return (list(oddSum=sum(x)-sum, evenSum=sum))
    }else{
      return (list(oddSum=sum(x)-sum, evenSum=sum))
    }
  }else{
    stop("벡터만 처리 가능!!")
  }
}

mySum(c(1,2,3,4))
mySum(1,2,3)

