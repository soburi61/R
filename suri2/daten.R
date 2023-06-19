d <- read.csv("daten.csv")
y <- d$daten
x1 <- d$anda
x2 <- d$tanda
x3 <- d$dasu
x4 <- d$tokuten
df <- data.frame(x1, x2, x3, x4)
r1 <- lm(y ~ ., data = df)
summary(r1)
AIC(r1)
extractAIC(r1)
step(r1)
print("---------")
r2 <- lm(y ~ .^2, data = df)
summary(r2)
AIC(r2)
extractAIC(r2)
step(r2)
