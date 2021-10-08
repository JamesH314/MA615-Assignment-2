library('tidyverse', 'ggplot2')
hiv <- read.csv('~/Desktop/adults_with_hiv_percent_age_15_49.csv', header = T)
school <- read.csv('~/Desktop/mean_years_in_school_men_25_years_and_older.csv', header = T)
hiv2008 <- t(hiv[5, c(24:32)])
hiv2008
school2008 <- t(school[8, c(33:41)])
school2008
newdata <- data.frame(hiv2008, school2008)
colnames(newdata) <- c('hiv', 'school')

#Here I use the ggplot function to draw a fitted line between two variables.
plot <- function(dat, xh, ys){
  p <- ggplot(data = newdata, aes(x = hiv, y = school))+
    geom_point()+
    geom_smooth(formula = y ~ x, method = "lm")
  return(p)
}
plot1 <- plot(dat = newdata, xh = newdata$hiv, ys = newdata$school)
print(plot1)

