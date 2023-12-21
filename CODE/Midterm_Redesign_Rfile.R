# initialize working directory and read data file
setwd('C:/Users/andie/Documents/R')
FL_data <- read_excel('Midterm_Redesign_Data.xlsx')
# load packages
library(readxl)
library(ggplot2)
library(lattice)
source("hw.r")

# Summary of initial data
summary(FL_data)

# scatter plot with y = Total_Firearm_Murders, X = Year (1990-2020)
total_firearm_murders <- as.factor(FL_data$Total_Firearm_Murders)
ggplot(FL_data, aes(x=Year, y=Total_Firearm_Murders, label=Total_Firearm_Murders), xmin=1990, xmax=2020) + 
  geom_point() + geom_line() + geom_text(data=subset(FL_data, Year == 1990 | Year == 1993 | Year == 1999 | Year == 2003 | Year == 2007 | Year == 2010 | Year == 2012 | Year == 2014 | Year == 2016 | Year == 2017 | Year == 2018 | Year == 2020),hjust = -0.5) +
  labs(title = "Total Murders by Firearm in Florida", subtitle = "From 1990 to 2020 as of 2022", x = "Year", y = "Number of People Murdered with a Gun", caption = "Stand Your Ground (SYG) law passed in Florida in 2005 \n SYG law Burden of Proof Amendment in 2017") +
  geom_vline(mapping = NULL, data=NULL,xintercept = 2005, na.rm = FALSE, show.legend = NA, color='red') +
  geom_vline(mapping = NULL, data=NULL,xintercept = 2017, na.rm = FALSE, show.legend = NA, color='red') +
  scale_x_continuous(limits = c(1990, 2020), breaks = seq(1990, 2020, by = 5)) +
  geom_point(data = FL_data[FL_data$Year == 2005,], color = 'red') +
  geom_point(data = FL_data[FL_data$Year == 2017,], color = 'red') + 
  geom_text(data = subset(FL_data, Year == 2005 | Year == 2017), color = "red", hjust = -0.5) +
  theme(plot.caption = element_text(size = 12, color = "red"), axis.ticks.x = element_blank(), axis.ticks.y = element_blank()) #+ hw

# Generate justifiable homicide variable for plot
# scatter plot with counts homicide vs. murders and justified homicides (1990-2020)
difference = FL_data$Counts_Firearm_Homicide - FL_data$Total_Firearm_Murders
ggplot(FL_data, aes(x=Year, y=Total_Firearm_Murders, col = 'Murders'), xmin=1990, xmax=2020) +
  labs(title = "Total Firearm Homicides and Murders in Florida", subtitle = "From 1990 to 2020 as of 2022",x = "Year", y = "Total Number of Victims", caption = "Stand Your Ground (SYG) law passed in Florida in 2005 \n SYG law Burden of Proof Amendment in 2017") +
  geom_vline(mapping = NULL, data=NULL,xintercept = 2005, na.rm = FALSE, show.legend = NA, color='red') +
  geom_vline(mapping = NULL, data=NULL,xintercept = 2017, na.rm = FALSE, show.legend = NA, color='red') +
  theme(plot.caption = element_text(size = 12, color = "red"), axis.ticks.x = element_blank(), axis.ticks.y = element_blank()) + 
  geom_line() +
  geom_line(aes(y=Counts_Firearm_Homicide, col = "Homicides")) +
  geom_line(aes(y=difference, col='Justified Homicides')) +
  scale_color_manual(values = c("violet", "darkgoldenrod1", "aquamarine3")) +
  guides(col=guide_legend(title="Classifications")) #+ hw
  
# scatter plot with counts homicide vs. murders and justified homicides (until 2012)
ggplot(FL_data, aes(x=Year, y=Total_Firearm_Murders, col = 'Murders'), xmin=1990, xmax=2012) +
  labs(title = "Total Firearm Homicides and Murders in Florida", subtitle = "From 1990 to 2012 as of 2022",x = "Year", y = "Total Number of Victims", caption = "Stand Your Ground passed in Florida in 2005") +
  geom_vline(mapping = NULL, data=NULL,xintercept = 2005, na.rm = FALSE, show.legend = NA, color='red') +
  geom_line() +
  geom_line(aes(y=Counts_Firearm_Homicide, col = "Homicides")) +
  geom_line(aes(y=difference, col='Justified Homicides')) +
  guides(col=guide_legend(title="Classifications")) +
  scale_x_continuous(limits = c(1990, 2012), breaks = seq(1990, 2012, by = 5)) + 
  theme(plot.caption = element_text(size = 12, color = "red")) #+ hw

# bar chart with a key (before stand ground law one color vs after in another color)
ggplot(FL_data, aes(x = Year, y = Total_Firearm_Murders, col = 'Before SYG')) +
  geom_bar(stat = "identity", data=FL_data[FL_data$Year < 2005,], aes(col = 'Before SYG')) + 
  geom_bar(stat = "identity", data=FL_data[FL_data$Year >= 2005,], aes(col = 'After SYG')) +
  scale_color_manual(name = "SYG FL Passage", values = c("red","grey")) + hw +
  labs(title = "Total Firearm Murders in Florida", subtitle = "From 1990 to 2020 as of 2022", y = "Number of People Murdered by a Firearm", caption = "Stand Your Ground Law was passed in Florida in 2005") +
  theme(plot.caption = element_text(size = 12, color = "red", hjust = 1))

# only population adjusted
ggplot(FL_data, aes(x=Year, y=Pop_Adjusted_Firearm_Murders, label = Pop_Adjusted_Firearm_Murders)) +
  geom_line() + geom_point() + geom_point(data = subset(FL_data, Year == 2005 | Year == 2017), color = "red")  +
  geom_text(data=subset(FL_data, Year == 2004 | Year == 2006 | Year == 2016 | Year == 2018), vjust = -0.5) +
  geom_text(data=subset(FL_data, Year == 2005 | Year == 2017), hjust = 1, vjust = 1, color = 'red') +
  labs(title = "Population Adjusted Firearm Murder Rate in Florida per 100,000 Floridians", subtitle = "From 1990 to 2020 as of 2022", caption = "Stand Your Ground (SYG) law passed in Florida in 2005 \n SYG law Burden of Proof Amendment in 2017", y = "Murder Rate per 100,000 FL residents") +
  geom_vline(mapping = NULL, data=NULL,xintercept = 2005, na.rm = FALSE, show.legend = NA, color='red') +
  geom_vline(mapping = NULL, data=NULL,xintercept = 2017, na.rm = FALSE, show.legend = NA, color='red') +
  theme(plot.caption = element_text(size = 12, color = 'red'), axis.ticks = element_blank())