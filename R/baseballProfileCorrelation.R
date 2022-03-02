library(dbplyr)
library(ggplot2)
library(ggpubr)

data1 <- read.csv("~/Downloads/2021ALHittersHeightandWeight.csv", header=TRUE, stringsAsFactors = FALSE)

data1 %>%
  ggplot(aes(HEIGHT, oWARPG)) +
  geom_point(color = "black") +
  geom_smooth(color = "green") +
  ggtitle('2021 AL Hitters Height/oWARPG')

data1 %>%
  ggplot(aes(PPI, oWARPG)) +
  geom_point(color = "black") +
  geom_smooth(color = "red") +
  ggtitle('2021 AL Hitters PoundsPerInch/oWARPG')

data1 %>%
  ggplot(aes(WEIGHT, oWARPG)) +
  geom_point(color = "black") +
  geom_smooth(color = "blue") +
  ggtitle('2021 AL Hitters Weight/oWARPG')
