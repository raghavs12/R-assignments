#t chis DOF 1
#f distribution DOF 2
#n-1 = DOF
#Q1
z =rt(100,99)
hist(z)
#Q2
df = c(2,10,25)
rchisq(100,df[1])
rchisq(100,df[2])
rchisq(100,df[3])
#Q3
x =seq(-6,6,length =100)
df1 = c(1,4,10,30)
a=dt(x,df1[1])
b=dt(x,df1[2])
c=dt(x,df1[3])
d=dt(x,df1[4])
plot(x,d,col='red',type = 'l')
for (i in 1:3){
lines(x,dt(x,df1[i]))
}
#Q4
#(i)
qf(0.95,10,20)
#(iii)
qf(0.25,10,20)
qf(0.5,10,20)
qf(0.75,10,20)
qf(0.99,10,20)
#ii
pf(1.5,10,20)
pf(1.5,10,20,lower.tail = FALSE)
#iv
x = rf(1000,10,20)
hist(x)