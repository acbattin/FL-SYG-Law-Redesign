# FL-SYG-Law-Redesign
Redesign the Reuters "Gun deaths in Florida" plot in order to more accurately portray information regarding the efficacy of the 2005 passage of the Stand Your Ground law in Florida and the 2017 amendment. 
* Code Author: Andie Battin
* Last updated: 12/13/2023
# Background Context
The Stand Your Ground (SYG) law was introduced as a senate bill in the Florida (FL) legislature in 2005 and was enacted that same year making Florida (FL) the first state with a SYG law. The SYG law was presented as a self-defense law that removes the duty to retreat and was aimed to shift the balance of power in favor of the victims. The legal repercussions of this law have played out on the national news with critics of this expansion on traditional common law principal of the castle doctrine and there have been few amendments made since the law’s passage in 2005.

# Original Plot from Reuters
<p align="center">
<img src="https://github.com/acbattin/FL-SYG-Law-Redesign/blob/main/Reuters2014.png?raw=true" width="1000" height="600"/>
</p>

# Methods
* I pulled the Florida Uniform Crime Reports from the official Florida Department of Law Enforcement’s (FDLE) publicly accessible online database linked on their department’s website. These are annually updated reports. I downloaded the reports from 1990 to the most recently available report, 2020, and compiled the data into an Excel file and properly formatted the data types.
* I used R and R packages including ggplot2, tidyverse and lattice to generate visualizations that illustrate how firearm violence has changed in the context of the passage and amendment to the SYG law in Florida. 

# Visualizations
<p align="center">
<img src="https://github.com/acbattin/FL-SYG-Law-Redesign/blob/main/TotalMurdersScatter.jpg?raw=true" width="1000" height="600"/>
</p>

* This plot presents the total number of people murdered by firearm according to the data provided by the Florida Department of Law Enforcement’s Uniform        Crime reports.

* The plot shows a large increase in the number of murders committed by firearm in Florida immediately following the passage of the SYG law and the numbers      have never reached those of 2015, where there were 521 reported gun murders in Florida.

* The purpose of this plot is to show the immediate reaction to the passage of the SYG law in Florida which has been indicated with the first red reference line at 2005.

* I decided to also indicate the passage of an amendment to the SYG law from 2017 that shifted the burden of proof to from the defense to the prosecution.

<p align="center">
<img src="https://github.com/acbattin/FL-SYG-Law-Redesign/blob/main/FLBar.png?raw=true" width="1000" height="600"/>
</p>

* This vertical bar plot displays the total number of people murdered by firearms in Florida from 1990 to 2020.

* The plot uses color and a corresponding legend and caption with a font of the same color to create two groups using the years of the data and indicated these in the “SYG FL Passage” legend as “After SYG” and “Before SYG”. This is an example of perceptual grouping.

* The plot shows that after the SYG law was passed in Florida by Jeb Bush in 2005, the number of people murdered using firearms in the “After SYG” shows an      increasing trend while the “Before SYG” shows a decreasing trend.

<p align="center">
<img src="https://github.com/acbattin/FL-SYG-Law-Redesign/blob/main/SYGJustifiedLine.png?raw=true" width="1000" height="600"/>
</p>

* Since Florida does not track their justifiable homicide data, I used the crime report firearm homicide data and the firearm murder data to illustrate the number of justifiable homicides because a homicide committed under the SYG law is categorized as such, a justifiable homicide.

* There is a simultaneous decrease in the number of justifiable homicides and increase in the number of murders. This is the reverse of what the SYG law is supposed to be doing to the firearm murder trends and means that people may be hiding behind this law and unjustly murdering people because of the freedom that it provides to the “defense”.

<p align="center">
<img src="https://github.com/acbattin/FL-SYG-Law-Redesign/blob/main/MurderRateScatter.png?raw=true" width="1000" height="600"/>
</p>

* I computed the population adjusted firearm murder rates for Florida using the state’s reported population from the CDC for the years 1990-2020 and express this as the rate of firearm murders in the state of Florida per 100,000 FL residents. This allows for the plot to show 15 years prior to the passage of the SYG law in Florida in addition to 15 years after, which just so happens to be the most recent data available.

* This is the murder rate per 100,000 Florida residents. The year that the SYG law was implemented, 2005, we see that the population-adjusted murder rate in Florida was 4.9 per 100,000 Florida residents and in 2006 the murder-rate in Florida rose to a rate of 6.2 per 100,000 Florida residents. The population-adjusted murder rate for Florida has not reached a rate as low as that of 2005 since SYG’s passage.

* Similarly, we see that the year that the first amendment was made to the SYG law in Florida, 2017, the murder rate was 5.2 per 100,000 Floridians (which is the second ratio in red to aid in readability and draw in the reader to the patterns of interest) and in 2018 the murder-rate in Florida rose to a rate of 5.3 per 100,000 Florida residents. The population-adjusted murder rate for Florida has not reached a rate as low as that of 2017 since the SYG amendment.

# Findings
These results are incredibly powerful and concerning because they are showing that the laws establishment and its amendment may be doing exactly the opposite of what they were supposed to be established to do. We should do further analysis and compare the SYG law efficacy in other states, to do this, the population-adjusted murder rate will need to be used, instead of the total number of victims because this will allow for comparisons across states.
