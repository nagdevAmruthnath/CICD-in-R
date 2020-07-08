# read data
data("mtcars")

# load saved model
mpg_model = readRDS("mpg_model.RDS")

# score some new data
data.frame(predicted = predict(mpg_model, mtcars), actual = mtcars$mpg)
