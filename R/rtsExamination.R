library(dplyr)
library(ggplot2)

data1 <- read.csv("~/Downloads/FanGraphsLeaderboard.csv", header=TRUE, stringsAsFactors = FALSE)
rts_year <- data1 %>%
  group_by(Season) %>%
  filter(Season != 2006, Season != 2007, Season != 2008, Season != 2009) %>%
  summarize(sum_rts=sum(rTS, na.rm = TRUE))

rts_team <- data1 %>%
  group_by(Team) %>%
  summarize(total_rts=sum(rTS, na.rm = TRUE))

rts_year %>%
  if(Season = 2020) {
    sum_rts*2.7
  }

rts_year %>%
  ggplot(aes(Season,sum_rts)) +
  geom_smooth() +
  ggtitle("League rTS per year 2010-2021")
print(rts_year)

rts_team %>%
  ggplot(aes(reorder(Team, total_rts), total_rts, fill=Team)) +
  coord_flip() +
  geom_bar(stat = "identity") +
  xlab("Team") +
  ylab("Total rTS") +
  scale_fill_manual(values = c("#BA0021", "#EB6E1F", "#003831", "blue",
                                "#13274F", "#B6922E", "#C41E3A", "white", 
                                "blue", "white", "#A71930", "#4169e1",
                                "#FD5A1E", "#E31937", "#005C5C", "light blue",
                                "#FD5A1E", "#A71930", "orange", "#B8922E",
                                "red", "yellow", "blue", "#8FBCE6",
                                "#BD3039", "#C6011F", "purple", "#4169e1",
                                "#FA4616", "#002B5C", "black", "#003087"))
print(rts_team)
