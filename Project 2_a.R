# Snaps attached in the solution.

getwd()

Sales_data <- read.csv(file.choose())
head(Sales_data)

plot(Sales_data)

# By observing the plots, we can infer that sales is the dependent variable and 
# advertise, plays and attractiveness are independent variable.

model1 <- lm(sales ~ . , data = Sales_data)

summary(model1)

plot(model1)

# Backward elimination. Eliminating attractiveness as it has the highest P Value.
model2 <- lm(sales ~ advertise + plays, data = Sales_data)

summary(model2)

plot(model2)


# Eliminating "advertise".
model3 <- lm(sales ~ plays, data = Sales_data)

summary(model3)

plot(model3)

#Multiple R-squared:  0.3587,	Adjusted R-squared:  0.3555
#F-statistic: 110.7 on 1 and 198 DF,  p-value: < 2.2e-16

# Eliminating "plays".
model4 <- lm(sales ~ advertise, data = Sales_data)

summary(model4)

plot(model4)

#Multiple R-squared:  0.3284,	Adjusted R-squared:  0.325 
#F-statistic: 96.81 on 1 and 198 DF,  p-value: < 2.2e-16


# :: As we can see that the R-Square value for model3 is greater than that of
# model4, so model3 is a better model and number of times the song is played 
# in the Radio Mirchi per week affects the sales.

?AIC

AIC(model3)
AIC(model4)

# The AIC output is also lower for the model3. Hence,
# lower the value, better the fit. Attached snaps in the solution.
