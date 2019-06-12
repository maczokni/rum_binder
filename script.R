library(ggplot2) ; library(babynames) ; library(dplyr)

babynames %>%
  filter(name == "Reka") %>%
  ggplot(data = ., aes(x = year, y = n)) +
  geom_line(aes(color = sex), size = 2) +
  scale_color_manual(values = c("#66c2a5", "#ff7f00"),
                     labels = c("Female", "Male")) +
  labs(title = "Babies named Reka between 1880 and 2015",
       x = "Year", 
       y = "Frequency",
       caption = "Source: Social Security Administration",
       color = "") +
  theme_minimal()  +
  theme(legend.position = "top")