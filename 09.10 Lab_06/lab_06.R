#문제1
exam1 <- function(){
  a <- LETTERS
  b <- letters
  alpha <- paste(a,b,sep="")
  return (alpha)
}

exam1()

#문제2
exam2 <- function(x){
  sum = 0
  for (i in 1:x){
    sum = sum + i
  }
  return (sum)
}

exam2(3)

#문제3
exam3 <- function(x,y){
  if (x>y){
    return (x-y)
  }else{
    return (y-x)
  }
}

exam3(10,5)
exam3(10,20)

#문제4
exam4 <- function(x,y,z){
  if (y=='%/%'|y=='%%'){
    if(x==0){
      return (print("오류1"))
    }
    else if (z==0){
      return(print("오류2"))
    }
  }
  result <- switch(EXPR = y,"+"=x+z,"-"=x-z,"*"=x*z,
                   "%/%"=x%/%z,"%%"=x%%z,"규격의 연산자만 전달하세요")
  return (result)
}
  
exam4(5,'*',3)
exam4(2,'+',3)
exam4(5,'-',3)
exam4(10,'%%',2)
exam4(10,'%/%',5)
exam4(0,'%%',5)

#문제5
exam5 <- function(x,y='#'){
  if (x<0){
    return ()
  }else{
    for (num in 1:x){
    cat(y)
    }
  }
  return()
}

exam5(6,'%')
exam5(3)
exam5(-4)

#문제6
exam6 <- function(...){
  vec <- c(...)
  for (score in vec){
    if (is.na(score)){
      print("NA는 처리불가")
    }else{
      if (score >= 85){
        level == "상"
      }else if (score >= 70){
        level == "중"
      }else{level == "하"} 
    print(paste(score,'점은',level,'등급입니다.')) 
    }
  }
}

exam6(c(80,50,70,66,NA,35))



  