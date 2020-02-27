install.packages('e1071')
install.packages('caret')
library(caret)
library(e1071)
data(iris)
summary(iris)
model <- svm(Species ~ ., data=iris, kernel='linear')
predict <- fitted(model)
cm <- table(iris$Species, predict)
cm
result <- confusionMatrix(predict, iris$Species)
result
plot(model,iris,Petal.Width ~ Petal.Length)
