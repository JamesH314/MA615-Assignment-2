library('tidyverse')
hiv <- read.csv('~/Desktop/adults_with_hiv_percent_age_15_49.csv', header = T)
school <- read.csv('~/Desktop/mean_years_in_school_men_25_years_and_older.csv', header = T)
hiv2008 <- t(hiv[5, c(24:32)])
hiv2008
school2008 <- t(school[8, c(33:41)])
school2008
newdata <- data.frame(hiv2008, school2008)
colnames(newdata) <- c('hiv', 'school')
print(newdata)

