library('tidyverse', 'ggplot2')
hiv <- read.csv('adults_with_hiv_percent_age_15_49.csv', header = T)
school <- read.csv('mean_years_in_school_men_25_years_and_older.csv', header = T)
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

####################
# ' two things to be noticed
# ' 1. when you read the csv or others, you should pay attention to the path. 
# ' If you write as "~/Desktop/...", even I clone your repo, I still can't read this file, since there is no data files direactly in my desktop.
# ' So 2 ways to adjust, 
# ' (1)using file's name only, like I changed above. Since your csv and R-script are in the same file, it can be read successfully
# ' (2)using url, copy the url of the csv you uploaded to GitHub. for example "https://github.com/JamesH314/MA615-Assignment-2/blob/main/adults_with_hiv_percent_age_15_49.csv"
# ' 2. Since your "newdata" only has two colunms, it's hard for me to make more visualization function at my level, sorry for can't help you more.
####################