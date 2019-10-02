library(gapminder)
library(ggplot2)
library(tidyverse)
library(ggeconodist)
library(hrbrthemes)

gapminder %>%
  filter(year %in% c(1952, 1962, 1972, 1982, 1992, 2002)) %>%
  filter(continent != "Oceania") %>%
  ggplot(aes(x = factor(year), y = lifeExp, fill = continent)) +
  geom_econodist(
    median_point_size = 1.2,
    tenth_col = "#b07aa1",
    ninetieth_col = "#591a4f",
    show.legend = FALSE
  ) +
  ggthemes::scale_fill_tableau(name = NULL) +
  coord_flip() +
  labs(
    x = "Year", title = "Life Expectancy", y = NULL,
    caption = "Example borrowed from @cmdline_tips"
  ) +
  facet_wrap(~continent, nrow = 4) +
  theme_ipsum_rc() -> gmgg
