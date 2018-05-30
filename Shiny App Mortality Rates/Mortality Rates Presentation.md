Mortality Rates Presentation
========================================================
author: 
date: 5/27/2018
autosize: true

First Slide
========================================================

Mortality rates by demographics and year

- Mortality rates by all causes of death are decreasing in the US
- There is still a gap between genders and racial backgrounds in terms of longevity
- Understanding what populations have these gaps can help organizations provide necessary resources to underserved communitities. 

Slide With Code
========================================================


```{r}
mortalityDF<-read.csv("https://data.cdc.gov/api/views/w9j2-ggv5/rows.csv?accessType=DOWNLOAD")
mortalityDFYear<-mortalityDF
library(UsingR)
library(ggplot2)


     p<- ggplot(mortalityDFYear,aes(x=Year, y=Average.Life.Expectancy..Years., color=Race, shape=Sex))+
         geom_jitter()+
         ylab("Average Life Expectancy in Years")+
         theme_bw()
         
      print(p)

```
File Link here: https://mlauden.shinyapps.io/mortality_rate_test/

Slide With Plot
========================================================

