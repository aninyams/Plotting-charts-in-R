
#install the libraries 

install.packages("tidyverse")
install.packages("ggplot2")

#calling the libraries 
library(tidyverse)
library(ggplot2)

#this is the dataset we will be using

library(MASS)
search()
#faithful is in the MASS oackage 
faithful

#viewing the data set
View(faithful)


#viewing the first couple of lines of the dataset Uusually 6 lines)
head(faithful)


#viewing the last 12 rows in the dataset 
tail(faithful,12) # Shows the last 10 rows




#viewing summary statistics of the faithful 
summary(faithful)



#viewing the sequence of the numberes between 0 and 1 and the difference should be 0.2 
#between the numbers 
seq(0, 1, by=.2)


#using ggplot package to plot a scallterplot
ggplot(faithful,aes(x=waiting,y=eruptions))+
  geom_point()

#displaying the same graph as before but we are setting the size of the 'dots=3.7',
#fillcolor =red and circle periperal =black
# We use geom function arguments
# to change aesthetic constants.

ggplot(faithful2,aes(x=waiting,y=eruptions))+
  geom_point(shape=21, size=3.7,
             fill="red", color="black")


#adding a smmoth line..you will need to use the geom smooth function

ggplot(faithful,aes(x=waiting,y=eruptions)) +
  geom_point() +
  geom_smooth(method=loess, color="blue",size=.2)




#using the linear regression data fitting method and we do this by calling the lm function

ggplot(faithful,aes(x=waiting,y=eruptions)) +
  geom_smooth(method=lm, color="red",size=1)+
  geom_point()




# When the graphics are in the class project report, the
# labeling can appear in figure caption.

ggplot(faithful,aes(x=waiting,y=eruptions)) +
  geom_point(shape=21, size=2, fill="green", color="black")+
  geom_smooth(method=loess, size=1.2) +
  labs(x="Waiting Time Btwn Eruptions in Mins",
       y="Eruption Length in Mins",
       title=" Eruptions")


# Plotting a histogram, specifying the binwidth, and adding color
ggplot(faithful,aes(x=waiting)) +
  geom_histogram(binwidth=2,
                 fill="cyan",color="black")+
  labs(x="Waiting Time Btwn Eruptions In Mins",
       y="Counts",
       title="Eruptions")

# Adding a frequency polygon
histPlot+ geom_freqpoly(binwidth=2,color="red",size=1.5)


# Add a computed kernel density, extend the x axis and plot
histPlot+ geom_line(stat="density",color="red",size=1.2)+
  xlim(33,104)


#The plots below show bivariate density 
ggplot(faithful,aes(x=waiting,y=eruptions))+
  geom_point(shape=16, size = 1.5, color ='red')+
  stat_density2d(aes()) +
  labs(x="Waiting Time Betwn Eruptions in Mins",
       y="Eruption Duration in Minutes",
       title=paste("Old Faithful Geyser Eruptions:",
                   "Bivariate Density"))


ggplot(faithful,aes(x=waiting,y=eruptions))+
  geom_point(shape=16, color='red')+
  stat_density2d(aes(size=1.5, color=..level..)) +
  labs(x="Waiting Time Betn Eruptions in Mins",
       y="Eruption Duration in Mins",
       title=paste("Old Faithful Geyser Eruptions:",
                   "Bivariate Density"))


