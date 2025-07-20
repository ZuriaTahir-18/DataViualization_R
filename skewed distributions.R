library(dplyr)
library(ggplot2)
library(hrbrthemes)

data <- data.frame(
  type = c(rep("trimodal", 1500), rep("skewed", 1500)),
  value = c(rnorm(500, 2), rnorm(500, 6), rnorm(500, 10),
            abs(log(rnorm(1500))))
)
View(data)
data %>%
  ggplot(aes(x = value)) +
  geom_histogram(fill = "#69b3a2", color = "black", alpha = 0.9) +
  facet_wrap(~type) +
  theme_ipsum() + ggtitle("Distributions")
