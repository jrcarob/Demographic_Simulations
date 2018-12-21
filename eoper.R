# Asignamos un objeto a la tabla y a la vez la leemos con read_csv2 que permite leer datos
# separados por ;
library(tidyverse)

dat <- read_csv2("eoper.csv")
colnames(dat)
head(dat)

dat %>% mutate(Female = Female/100, Male = Male/100, Total = Total/100) -> dat

summary(dat)

gather(dat, sexo, esp_vida, Female:Male) %>% 
  arrange(Year) %>% 
  select(Year, sexo, esp_vida, Total) %>% 
  ggplot(aes(x = Year, y = esp_vida, col = sexo)) +
  geom_line() 
#gghighlight(min(esp_vida) > 30)