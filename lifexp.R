## Clean work environment
rm(list=ls())

## tidyverse and ggplot
library(tidyverse)
library(idbr)
idb_api_key('insert your api key from the database')
#library(plotly)
ssr_df <- idb5(c("Spain", "France", "Germany", "Italy", "Portugal", "Greece"), 1990:2016, 
               variables = "E0", country_name = TRUE)
head(ssr_df)
length(ssr_df)
colnames(ssr_df)

ggplot(ssr_df, aes(x = time, y = E0, color = NAME)) +
  facet_wrap(~NAME) +
  geom_line() +
  geom_point() +
  xlab("Year") +
  ylab("Life Expectation (in years)") +
  theme(legend.position = "none")
