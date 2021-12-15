library(Lahman)
library(dplyr)
library(ggplot2)
library(caret)

teams <- Teams
head(teams)

## Exploring the data
## Calculating runs per game per team
teams <- teams %>%
  mutate(runs_game = R/(W+L))

head(teams)

## Calculating runs per game per year
teams_year <- teams %>%
  group_by(yearID) %>%
  summarize(mean_runs = mean(runs_game, na.rm=TRUE))

##Graphing out historical run data
teams_year %>%
  ggplot(aes(x=yearID, y=mean_runs)) +
  geom_line() +
  geom_point() +
  ggtitle('Average MLB Runs Per Year')

head(teams_year) 

## Simple preditive model for wins by team
df_clean <- teams %>%
  select(name, yearID, W, L, R, H, X2B, X3B, HR, SO, RA) %>%
  filter(yearID >= 2010)

lm1 <- lm(W ~ R + H + X2B + X3B + HR + SO + RA,
          data = df_clean)
summary(lm1)

## Training model based on significant variables
lm2 <- lm(W ~ R + H + X3B + SO + RA,
          data = df_clean)
summary(lm2)

## Prediction model
preds <- predict(lm2, df_clean)

## Comparing pred vs actual
preddif <- (preds - df_clean$W)

## Cleaning model to get readable output
df_clean$pred <- preds
df_clean$preddif <- preddif
head(df_clean)

## Testing effectiveness of model
RMSE(df_clean$pred, df_clean$W)

## Plot resutls of model versus actual values
df_clean %>%
  ggplot(aes(pred, W)) +
  geom_point() +
  geom_smooth() +
  ggtitle('Predicted Wins vs Actual')
