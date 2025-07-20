library(viridis)

data = read.csv("iris.csv")
View(data)
data <- data %>%
  group_by(variety) %>%
  summarize(num = n()) %>%
  left_join(data)
View(data)
ggplot(data, aes(x = paste(variety, "\n", "n =", num), y = sepal.length, fill = variety)) +
  geom_violin(color = 'black') +
  geom_boxplot(width = 0.3, color = "white") +
  scale_fill_viridis(discrete = TRUE) +
  theme_ipsum() +
  theme(legend.position = "none") +
  ggtitle("Sepal length of each variety") +
  labs(x = "variety", y = "sepal.length")
