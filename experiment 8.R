data <- read.csv(file.choose())
head(data,10)
dim(data)
z = mean(data$Wall.Thickness)
z
hist(data$Wall.Thickness)
abline(v=12.8,col='red',lty=2)
#lty for dotted line


s = c()
for(i in 1:9000){
s[i] =mean(sample(data$Wall.Thickness,10,replace = TRUE))
}
par(mfrow=c(1,4))
#par will divide the graph area in 4 parts
hist(s)

r = c()
for(i in 1:9000){
  r[i] =mean(sample(data$Wall.Thickness,50,replace = TRUE))
}
hist(r)

t = c()
for(i in 1:9000){
  t[i] =mean(sample(data$Wall.Thickness,500,replace = TRUE))
}
hist(t)

hist(mean(data$Wall.Thickness))
