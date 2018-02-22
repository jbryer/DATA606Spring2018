library(ggplot2)
data(mtcars)
str(mtcars)

ggplot(mtcars, aes(mpg)) + geom_histogram(binwidth = 2)
ggplot(mtcars, aes(mpg)) + geom_density()

qqnorm(mtcars$mpg, main = 'Actual Data'); qqline(mtcars$mpg)

mpg.sim1 <- rnorm(length(mtcars$mpg),
				   mean = mean(mtcars$mpg),
				  sd = sd(mtcars$mpg))

hist(mpg.sim1)
qqnorm(mpg.sim1, main = 'Simulated'); qqline(mpg.sim1)

par(mfrow = c(3, 3))
qqnorm(mtcars$mpg, main = 'Actual Data'); qqline(mtcars$mpg)
for(i in 1:8) {
	mpg.sim1 <- rnorm(length(mtcars$mpg),
					  mean = mean(mtcars$mpg),
					  sd = sd(mtcars$mpg))
	qqnorm(mpg.sim1, main = 'Simulated'); qqline(mpg.sim1)

}

set.seed(2112); sample(letters, 1)

random.nums <- integer(100)
for(i in 1:length(random.nums)) {
	set.seed(i); random.nums[i] <- sample(1:100, 1)
}
random.nums

plot(1:length(random.nums), random.nums)
