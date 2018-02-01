test1 <- c('M','M','F','F','M','F')
class(test1)
length(test1)
testFactor <- factor(test1)

class(testFactor)
levels(testFactor)

testFactor2 <- factor(test1, levels = c('M', 'F', 'ND'), labels = c('Male', 'Female', 'Other'))
class(testFactor2)
levels(testFactor2)

table(testFactor)
table(testFactor2)

