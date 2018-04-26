poverty <- read.table("../Data/poverty.txt", h = T, sep = "\t")
names(poverty) <- c("state", "metro_res", "white", "hs_grad", "poverty", "female_house")
poverty <- poverty[,c(1,5,2,3,4,6)]
head(poverty)

lm.poverty2 <- lm(poverty ~ female_house + white, data=poverty)
lm.poverty3 <- lm(poverty ~ white + female_house, data=poverty)

# Order doesn't matter in terms of the slopes and t-statistics
summary(lm.poverty2)
summary(lm.poverty3)

# Order does matter in terms of the variance explained
anova(lm.poverty2)
anova(lm.poverty3)
