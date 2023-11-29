#iss sheet m se 1 ques zrur ayega

#Q1(i)
install.packages("pracma")
library("pracma")
func<-function(x,y){
  return(2*(2*x+3*y)/5);
}
a<-integral2(func,0,1,0,1)
print(a)
print(a$Q)
#answer is 1 means it is joint dnesity func

#(ii)
f2 <- function(y)func(1,y)
integral(f2,0,1)

#iii
f3 <- function(x)func(x,0)
integral(f3,0,1)

#iv

f4 <- function(x,y){
  return(x*y*func(x,y))
}
b <-integral2(f4,0,1,0,1)
b$Q



#Q2
f5 <-function(x,y){
  return((x+y)/30)
}

#i
m1 <-matrix(c(f5(0:3,0),f5(0:3,1),f5(0:3,2)),4,3)
print(m1)



#ii
if(sum(m1)==1){
  print("yes")
}else{
  print("no")
}


#iii
gx2 <- apply(m1,1,sum)
print(gx2)


#iv
hy2 <- apply(m1,2,sum)
print(hy2)
hy2[2]


#v
c <- f5(0,1)
f7 <-function(x)f5(x,1)
d = c/sum(f7(0:3))
print(d)


#vi

#cov=E(xy)-E(x)E(y)
#corr cofficent  = cov/var(x)^1/2*var(y)^1/2

x_val <- 0:3
y_val <- 0:2

Ex2 <- sum(x_val * gx2)
Ex2
Ey2 <- sum(y_val * hy2)
Ey2

E_xy2 <- sum(outer(x_val, y_val, function(x, y) x * y * f5(x, y)))
E_xy2


var_x <- sum(x_val *x_val* gx2) - (Ex2^2)
var_x

var_y <- sum(y_val *y_val* hy2) - (Ey2^2)
var_y


Cov_XY2 <- E_xy2 - Ex2*Ey2
Cov_XY2
Corr_Coefficient2 <- Cov_XY2 / (sqrt(var_x) * sqrt(var_y))
Corr_Coefficient2

