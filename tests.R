data <- data.frame(x=c(30, 200, 37, 83, 142, 421, 321, 382, 401),
                   y=c(30, 200, 84, 103, 121, 333, 231, 292, 342))

m <- lm(y ~ x, data=data)

coef(m)

resid(m)

rstandard(m)

rstudent(m)

cooks.distance(m)

lm.influence(m)$hat

# Probit function
qnorm(0.5)
qnorm(0.7)
qnorm(0.99)

# Rankit function
qnorm(ppoints(9)[1])
qnorm(ppoints(9)[4])

# makeResidData for qqnorm
qqnorm(rstandard(m), plot.it=FALSE)$x

# R^2
summary(m)$r.squared

# F test of coefficients
summary(m)$fstatistic
anova(m)[[1,"Pr(>F)"]]

# F distribution tests
pf(10, 1, 7, lower.tail=FALSE)
pf(10, 4, 7, lower.tail=FALSE)
pf(30, 1, 4, lower.tail=FALSE)

# t quantiles
qt(0.95, 7)
qt(0.01, 4)
qt(0.99, 24)
