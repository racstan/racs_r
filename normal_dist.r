# Generating the data x
x=seq(0,40)
x
## [1] 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22
23 24
## [26] 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40
# find the density function of x
y=dnorm(x,mean=20,sd=5)
y
## [1] 2.676605e-05 5.838939e-05 1.223804e-04 2.464438e-04 4.768176e-04
## [6] 8.863697e-04 1.583090e-03 2.716594e-03 4.478906e-03 7.094919e-03
## [11] 1.079819e-02 1.579003e-02 2.218417e-02 2.994549e-02 3.883721e-02
## [16] 4.839414e-02 5.793831e-02 6.664492e-02 7.365403e-02 7.820854e-02
## [21] 7.978846e-02 7.820854e-02 7.365403e-02 6.664492e-02 5.793831e-02
## [26] 4.839414e-02 3.883721e-02 2.994549e-02 2.218417e-02 1.579003e-02
## [31] 1.079819e-02 7.094919e-03 4.478906e-03 2.716594e-03 1.583090e-03
## [36] 8.863697e-04 4.768176e-04 2.464438e-04 1.223804e-04 5.838939e-05
## [41] 2.676605e-05
# plot the normal distribution curve
plot(x,y,type='l')
# Proportion of jobs take less than 15 minutes
p1=pnorm(15,mean=20,sd=5)
p1
## [1] 0.1586553
x2=seq(0,15)
x2
## [1] 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
y2=dnorm(x2,mean=20,sd=5)
y2
## [1] 2.676605e-05 5.838939e-05 1.223804e-04 2.464438e-04 4.768176e-04
## [6] 8.863697e-04 1.583090e-03 2.716594e-03 4.478906e-03 7.094919e-03
## [11] 1.079819e-02 1.579003e-02 2.218417e-02 2.994549e-02 3.883721e-02
## [16] 4.839414e-02
polygon(c(0,x2,15),c(0,y2,0),col='yellow')
#Proportion of jobs take more than 25 minutes
p2=pnorm(40,mean=20,sd=5)-pnorm(25,mean=20,sd=5)
p2
## [1] 0.1586236
x1=seq(25,40)
x1
## [1] 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40
y1=dnorm(x1,mean=20,sd=5)
y1
## [1] 4.839414e-02 3.883721e-02 2.994549e-02 2.218417e-02 1.579003e-02
## [6] 1.079819e-02 7.094919e-03 4.478906e-03 2.716594e-03 1.583090e-03
## [11] 8.863697e-04 4.768176e-04 2.464438e-04 1.223804e-04 5.838939e-05
## [16] 2.676605e-05
polygon(c(25,x1,40),c(0,y1,0),col='red')
#Proportion of jobs take between 15 and 25 minutes
p3=pnorm(25,mean=20,sd=5)-pnorm(15,mean=20,sd=5)
p3
## [1] 0.6826895
x3=seq(15,25)
x3
## [1] 15 16 17 18 19 20 21 22 23 24 25
y3=dnorm(x3,mean=20,sd=5)
y3
## [1] 0.04839414 0.05793831 0.06664492 0.07365403 0.07820854 0.07978846
## [7] 0.07820854 0.07365403 0.06664492 0.05793831 0.04839414
polygon(c(15,x3,25),c(0,y3,0),col='green')
# Probability distribution
data.frame(p1,p2,p3)
## p1 p2 p3
## 1 0.1586553 0.1586236 0.6826895
