#문제1
grade <- sample(1:6,1)
if(grade>=1 & grade<=3){
  cat(grade,"학년은 저학년입니다.")
}else{
  cat(grade,"학년은 고학년입니다.")
}

#문제2
choice <- sample(1:5,1);choice
if(choice == 1){
  print(300+50)
}else if(choice == 2){
  print(300-50)
}else if(choice == 3){
  print(300*50)
}else if(choice == 4){
  print(300/50)
}else{
  print(300%%50)
}

#문제3
count <- sample(3:10,1);count
deco <- sample(1:3,1);deco
for (num in 1:count){
  if(deco == 1){
    cat('*',"")
  }else if(deco == 2){
    cat('$',"")
  }else{
    cat('#',"")
  }
}


#문제4
score <- sample(0:100,1);score
if (score >= 90){
  level <- "a"
}else if (score >= 80){
  level <- "b"
}else if (score >= 70){
  level <- "c"
}else if (score >= 60){
  level <- "d"
}else {
  level <- "f"
}
result <-switch(EXPR = level,"a"="A","b"="B","c"="C","d"="D","f"="F")
cat(score,"점은",result,"등급입니다.")

#문제5
al <- LETTERS
for (i in 1:26){
  cat('"',al[i],tolower(al[i]),'"'," ",sep="")
}

L <- LETTERS
l <- letters
alpha <- paste(L,l,sep="")
print(alpha)
