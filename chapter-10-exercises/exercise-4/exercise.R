# Exercise 4: external data sets: Gates Foundation Educational Grants

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as 
# factors!
grants <- read.csv('data/gates_money.csv', stringsAsFactors = FALSE)

suvival <- male_filter[male_filter$Survived ==  "Yes", ]
sum(suvival$Freq)

suvival
















# Use the View function to look at the loaded data
View(grants)


# Create a variable `organization` that contains the `organization` column of 
# the dataset


# Confirm that the "organization" column is a vector using the `is.vector()` 
# function. 
# This is a useful debugging tip if you hit errors later!


## Now you can ask some interesting questions about the dataset

# What was the mean grant value?
#interested in total amount. 
#filter which rows we care about. No filtering that we need to do in this case. 

mean(grants$total_amount)

# What was the dollar amount of the largest grant?


# What was the dollar amount of the smallest grant?


# Which organization received the largest grant?
grants[grants$total_amount == max(grants$total_amount), "organization"]
grants$organization

# Which organization received the smallest grant?
grants[grants$total_amount == min(grants$total_amount), "organization"]

#how much was that?
grants[grants$total_amount == min(grants$total_amount), c("organization", "total_amount")]


# How many grants were awarded in 2010
grants[grants$start_year == "2010", ]

# How much was awarded in 2010.

sum(grants[grants$start_year == "2010", "total_amount"])




















