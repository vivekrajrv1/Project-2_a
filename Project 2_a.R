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

# Eliminating "plays".
model4 <- lm(sales ~ advertise, data = Sales_data)

summary(model4)

plot(model4)

model5 <- lm(sales ~ attractiveness, data = Sales_data)

summary(model5)
