# FL-SYG-Law-Redesign
Redesign the Reuters "Gun deaths in Florida" plot in order to more accurately portray information regarding the efficacy of the 2005 passage of the Stand Your Ground law in Florida and the 2017 amendment. 
* Code Author: Andie Battin
* Last updated: 12/13/2023
# Background Context
The Stand Your Ground (SYG) law was introduced as a senate bill in the Florida (FL) legislature in 2005 and was enacted that same year making Florida (FL) the first state with a SYG law. The SYG law was presented as a self-defense law that removes the duty to retreat and was aimed to shift the balance of power in favor of the victims. The legal repercussions of this law have played out on the national news with critics of this expansion on traditional common law principal of the castle doctrine and there have been few amendments made since the law’s passage in 2005.

# Methods
* I pulled the Florida Uniform Crime Reports from the official Florida Department of Law Enforcement’s (FDLE) publicly accessible online database linked on their department’s website. These are annually updated reports. I downloaded the reports from 1990 to the most recently available report, 2020, and compiled the data into an Excel file and properly formatted the data types.
* I used R and R packages including ggplot2, tidyverse and lattice to generate visualizations that illustrate how firearm violence has changed in the context of the passage and amendment to the SYG law in Florida. 

# Visualizations
<p align="center">
<img src="https://github.com/acbattin/FL-SYG-Law-Redesign/blob/main/TotalMurdersScatter.png?raw=true" width="1000" height="600"/>
</p>
* This plot presents the total number of people murdered by firearm according to the data provided by the Florida Department of Law Enforcement’s Uniform        Crime reports.
* The plot shows a large increase in the number of murders committed by firearm in Florida immediately following the passage of the SYG law and the numbers      have never reached those of 2015, where there were 521 reported gun murders in Florida.
* The purpose of this plot is to show the immediate reaction to the passage of the SYG law in Florida which has been indicated with the first red reference line at 2005. I decided to also indicate the passage of an amendment to the SYG law from 2017 that shifted the burden of proof to from the defense to the prosecution.

<p align="center">
<img src="https://github.com/acbattin/FL-SYG-Law-Redesign/blob/main/FLBar.png?raw=true" width="1000" height="600"/>
</p>
* This vertical bar plot displays the total number of people murdered by firearms in Florida from 1990 to 2020.

* The plot uses color and a corresponding legend and caption with a font of the same color to create two groups using the years of my data and indicated these    in the “SYG FL Passage” legend as “After SYG” and “Before SYG”. This is an example of perceptual grouping.

* The plot shows that after the SYG law was passed in Florida by Jeb Bush in 2005, the number of people murdered using firearms in the “After SYG” shows an      increasing trend while the “Before SYG” shows a decreasing trend.
* Using Python, loaded the Titanic data set as a data frame and used the summary function to display specifics about the data set.
* Using the Titanic dataset, display appropriate visualizations (graphics) for these data items: Survived, Pclass, Sex, and Age.

