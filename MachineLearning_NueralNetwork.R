data(iris)
summary(iris)
head(iris)
help(sample)
ind <- sample(2, nrow(iris), replace=TRUE, prob=c(0.7, 0.3))
summary(ind)
trainset <- iris[ind==1,]
testset <- iris[ind==2,]
testset
colnames(iris)
iris$Species
unique(iris$Species)
trainset$setosa <- trainset$Species == 'setosa'
trainset$versicolor <- trainset$Species == 'versicolor'
trainset$virginica <- trainset$Species == 'virginica'

network<- neuralnet(versicolor+virginica+setosa~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,trainset, hidden = 3)
network
network$result.matrix
network$generalized
plot(network)
plot(network)
gwplot(network, selected.covariate = "Petal.Width")
gwplot(network, selected.covariate = "Sepal.Width")
gwplot(network, selected.covariate = "Petal.Length")
