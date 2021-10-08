library('tidyverse')
hiv <- read.csv('~/Desktop/adults_with_hiv_percent_age_15_49.csv', header = T)
school <- read.csv('~/Desktop/mean_years_in_school_men_25_years_and_older.csv', header = T)
#The steps above mean that I import data from my laptop.
hiv2008 <- t(hiv[5, c(24:32)])
school2008 <- t(school[8, c(33:41)])
#The two steps means that I choose the data of Australia from 2000 to 2008 in the huge database of all countries and times.
newdata <- data.frame(hiv2008, school2008)
#This step is to combine the two data frames into one data frame.
colnames(newdata) <- c('hiv', 'school')
print(newdata)
