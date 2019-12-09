library(geofacet)
library(ggplot2)
library(tidyverse)

honeyprod <- read_csv("honeyproduction.csv")

# barchart of state rankings in total coloney honey production

ggplot(honeyprod, aes(year, totalprod, fill = year)) +
  geom_col() +
  coord_flip() +
  facet_geo(~ state) +
  theme_bw() + 
  ggtitle("Honey Production By US State 2000-2012")

