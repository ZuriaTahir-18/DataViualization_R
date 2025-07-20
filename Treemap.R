#Data
dataset = read.csv("Dataset.csv")
View(dataset)
library(magrittr)
library(dplyr)
data = dataset %>%
  filter(!is.na(Count)) %>%
  arrange(Count) %>%
  tail(10) 
View(data)
library(treemap)
treemap(data,
        index = "Country",
        vSize = "Count",
        title = "Top 10 Countries",
        palette = "Dark2",
        border.col = "black",
        border.lwds = 1,
        fontsize.labels = 14,
        fontface.labels = 1,
        fontcolor.labels = "white",
        align.labels = c("left", "top")
)