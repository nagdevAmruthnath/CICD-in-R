# load data
data("mtcars")

# view data
head(mtcars)

# predict mileage using linear regression
mpg_model = lm(mpg~., data = mtcars[1:25,])
summary(mpg_model)

# predict data
pds = predict(mpg_model, mtcars[26:32, ])

# Function for Root Mean Squared Error
RMSE = function(m, o){
  sqrt(mean((m - o)^2))
}

# calculate RMSE
RMSE(pds, mtcars$mpg[26:32] )

# view actual vs predicted
data.frame(Actual = mtcars$mpg[26:32], prediction = pds )
