library(devtools)
install_github("BillPetti/baseballr")
library(tidyverse)
library(RSQLite)
library(DBI)

# Scrape savant data week-by-week for each season
# Importing all of 2017
date40240917 = baseballr::scrape_statcast_savant(start_date = '2017-04-02',
                                                 end_date = '2017-04-09', player_type = 'batter')

date41041617 = baseballr::scrape_statcast_savant(start_date = '2017-04-10',
                                                 end_date = '2017-04-16', player_type = 'batter')

date41742317 = baseballr::scrape_statcast_savant(start_date = '2017-04-17',
                                                 end_date = '2017-04-23', player_type = 'batter')

date42443017 = baseballr::scrape_statcast_savant(start_date = '2017-04-24',
                                                 end_date = '2017-04-30', player_type = 'batter')

date50150717 = baseballr::scrape_statcast_savant(start_date = '2017-05-01',
                                                 end_date = '2017-05-07', player_type = 'batter')

date50851417 = baseballr::scrape_statcast_savant(start_date = '2017-05-08',
                                                 end_date = '2017-05-14', player_type = 'batter')

date51552117 = baseballr::scrape_statcast_savant(start_date = '2017-05-15',
                                                 end_date = '2017-05-21', player_type = 'batter')

date52252817 = baseballr::scrape_statcast_savant(start_date = '2017-05-22',
                                                 end_date = '2017-05-28', player_type = 'batter')

date52960417 = baseballr::scrape_statcast_savant(start_date = '2017-05-29',
                                                 end_date = '2017-06-04', player_type = 'batter')

date60561117 = baseballr::scrape_statcast_savant(start_date = '2017-06-05',
                                                 end_date = '2017-06-11', player_type = 'batter')

date61261817 = baseballr::scrape_statcast_savant(start_date = '2017-06-12',
                                                 end_date = '2017-06-18', player_type = 'batter')

date61962517 = baseballr::scrape_statcast_savant(start_date = '2017-06-19',
                                                 end_date = '2017-06-25', player_type = 'batter')

date62670217 = baseballr::scrape_statcast_savant(start_date = '2017-06-26',
                                                 end_date = '2017-07-02', player_type = 'batter')

date70370917 = baseballr::scrape_statcast_savant(start_date = '2017-07-03',
                                                 end_date = '2017-07-09', player_type = 'batter')

date71071617 = baseballr::scrape_statcast_savant(start_date = '2017-07-10',
                                                 end_date = '2017-07-16', player_type = 'batter')

date71772317 = baseballr::scrape_statcast_savant(start_date = '2017-07-17',
                                                 end_date = '2017-07-23', player_type = 'batter')

date72473017 = baseballr::scrape_statcast_savant(start_date = '2017-07-24',
                                                 end_date = '2017-07-30', player_type = 'batter')

date73180617 = baseballr::scrape_statcast_savant(start_date = '2017-07-31',
                                                 end_date = '2017-08-06', player_type = 'batter')

date80781317 = baseballr::scrape_statcast_savant(start_date = '2017-08-07',
                                                 end_date = '2017-08-13', player_type = 'batter')

date81482017 = baseballr::scrape_statcast_savant(start_date = '2017-08-14',
                                                 end_date = '2017-08-20', player_type = 'batter')

date82182717 = baseballr::scrape_statcast_savant(start_date = '2017-08-21',
                                                 end_date = '2017-08-27', player_type = 'batter')

date82890317 = baseballr::scrape_statcast_savant(start_date = '2017-08-28',
                                                 end_date = '2017-09-03', player_type = 'batter')

date90491017 = baseballr::scrape_statcast_savant(start_date = '2017-09-04',
                                                 end_date = '2017-09-10', player_type = 'batter')

date91191717 = baseballr::scrape_statcast_savant(start_date = '2017-09-11',
                                                 end_date = '2017-09-17', player_type = 'batter')

date91892417 = baseballr::scrape_statcast_savant(start_date = '2017-09-18',
                                                 end_date = '2017-09-24', player_type = 'batter')

date92510117 = baseballr::scrape_statcast_savant(start_date = '2017-09-25',
                                                 end_date = '2017-10-01', player_type = 'batter')


# Importing all of 2018
date32940818 = baseballr::scrape_statcast_savant(start_date = '2018-03-29',
                                                 end_date = '2018-04-08', player_type = 'batter')

date40941518 = baseballr::scrape_statcast_savant(start_date = '2018-04-09',
                                                 end_date = '2018-04-15', player_type = 'batter')

date41642218 = baseballr::scrape_statcast_savant(start_date = '2018-04-16',
                                                 end_date = '2018-04-22', player_type = 'batter')

date42342918 = baseballr::scrape_statcast_savant(start_date = '2018-04-23',
                                                 end_date = '2018-04-29', player_type = 'batter')

date43050618 = baseballr::scrape_statcast_savant(start_date = '2018-04-30',
                                                 end_date = '2018-05-06', player_type = 'batter')

date50751318 = baseballr::scrape_statcast_savant(start_date = '2018-05-07',
                                                 end_date = '2018-05-13', player_type = 'batter')

date51452018 = baseballr::scrape_statcast_savant(start_date = '2018-05-14',
                                                 end_date = '2018-05-20', player_type = 'batter')

date52152718 = baseballr::scrape_statcast_savant(start_date = '2018-05-21',
                                                 end_date = '2018-05-27', player_type = 'batter')

date52860318 = baseballr::scrape_statcast_savant(start_date = '2018-05-28',
                                                 end_date = '2018-06-03', player_type = 'batter')

date60461018 = baseballr::scrape_statcast_savant(start_date = '2018-06-04',
                                                 end_date = '2018-06-10', player_type = 'batter')

date61161718 = baseballr::scrape_statcast_savant(start_date = '2018-06-11',
                                                 end_date = '2018-06-17', player_type = 'batter')

date61862418 = baseballr::scrape_statcast_savant(start_date = '2018-06-18',
                                                 end_date = '2018-06-24', player_type = 'batter')

date62570118 = baseballr::scrape_statcast_savant(start_date = '2018-06-25',
                                                 end_date = '2018-07-01', player_type = 'batter')

date70270818 = baseballr::scrape_statcast_savant(start_date = '2018-07-02',
                                                 end_date = '2018-07-08', player_type = 'batter')

date70971518 = baseballr::scrape_statcast_savant(start_date = '2018-07-09',
                                                 end_date = '2018-07-15', player_type = 'batter')

date71672218 = baseballr::scrape_statcast_savant(start_date = '2018-07-16',
                                                 end_date = '2018-07-22', player_type = 'batter')

date72372918 = baseballr::scrape_statcast_savant(start_date = '2018-07-23',
                                                 end_date = '2018-07-29', player_type = 'batter')

date73080518 = baseballr::scrape_statcast_savant(start_date = '2018-07-30',
                                                 end_date = '2018-08-05', player_type = 'batter')

date80681218 = baseballr::scrape_statcast_savant(start_date = '2018-08-06',
                                                 end_date = '2018-08-12', player_type = 'batter')

date81381918 = baseballr::scrape_statcast_savant(start_date = '2018-08-13',
                                                 end_date = '2018-08-19', player_type = 'batter')

date82082618 = baseballr::scrape_statcast_savant(start_date = '2018-08-20',
                                                 end_date = '2018-08-26', player_type = 'batter')

date82790218 = baseballr::scrape_statcast_savant(start_date = '2018-08-27',
                                                 end_date = '2018-09-02', player_type = 'batter')

date90390918 = baseballr::scrape_statcast_savant(start_date = '2018-09-03',
                                                 end_date = '2018-09-09', player_type = 'batter')

date91091618 = baseballr::scrape_statcast_savant(start_date = '2018-09-10',
                                                 end_date = '2018-09-16', player_type = 'batter')

date91792318 = baseballr::scrape_statcast_savant(start_date = '2018-09-17',
                                                 end_date = '2018-09-23', player_type = 'batter')

date92493018 = baseballr::scrape_statcast_savant(start_date = '2018-09-24',
                                                 end_date = '2018-09-30', player_type = 'batter')


# Importing all of 2019
date32840719 = baseballr::scrape_statcast_savant(start_date = '2019-03-28',
                                                 end_date = '2019-04-07', player_type = 'batter')

date40841419 = baseballr::scrape_statcast_savant(start_date = '2019-04-08',
                                                 end_date = '2019-04-14', player_type = 'batter')

date41542119 = baseballr::scrape_statcast_savant(start_date = '2019-04-15',
                                                 end_date = '2019-04-21', player_type = 'batter')

date42242819 = baseballr::scrape_statcast_savant(start_date = '2019-04-22',
                                                 end_date = '2019-04-28', player_type = 'batter')

date42950519 = baseballr::scrape_statcast_savant(start_date = '2019-04-29',
                                                 end_date = '2019-05-05', player_type = 'batter')

date50651219 = baseballr::scrape_statcast_savant(start_date = '2019-05-06',
                                                 end_date = '2019-05-12', player_type = 'batter')

date51351919 = baseballr::scrape_statcast_savant(start_date = '2019-05-13',
                                                 end_date = '2019-05-19', player_type = 'batter')

date52052619 = baseballr::scrape_statcast_savant(start_date = '2019-05-20',
                                                 end_date = '2019-05-26', player_type = 'batter')

date52760219 = baseballr::scrape_statcast_savant(start_date = '2019-05-27',
                                                 end_date = '2019-06-02', player_type = 'batter')

date60360919 = baseballr::scrape_statcast_savant(start_date = '2019-06-03',
                                                 end_date = '2019-06-09', player_type = 'batter')

date61061619 = baseballr::scrape_statcast_savant(start_date = '2019-06-10',
                                                 end_date = '2019-06-16', player_type = 'batter')

date61762319 = baseballr::scrape_statcast_savant(start_date = '2019-06-17',
                                                 end_date = '2019-06-23', player_type = 'batter')

date62463019 = baseballr::scrape_statcast_savant(start_date = '2019-06-24',
                                                 end_date = '2019-06-30', player_type = 'batter')

date70170719 = baseballr::scrape_statcast_savant(start_date = '2019-07-01',
                                                 end_date = '2019-07-07', player_type = 'batter')

date70871419 = baseballr::scrape_statcast_savant(start_date = '2019-07-08',
                                                 end_date = '2019-07-14', player_type = 'batter')

date71572119 = baseballr::scrape_statcast_savant(start_date = '2019-07-15',
                                                 end_date = '2019-07-21', player_type = 'batter')

date72272819 = baseballr::scrape_statcast_savant(start_date = '2019-07-22',
                                                 end_date = '2019-07-28', player_type = 'batter')

date72980419 = baseballr::scrape_statcast_savant(start_date = '2019-07-29',
                                                 end_date = '2019-08-04', player_type = 'batter')

date80581119 = baseballr::scrape_statcast_savant(start_date = '2019-08-05',
                                                 end_date = '2019-08-11', player_type = 'batter')

date81281819 = baseballr::scrape_statcast_savant(start_date = '2019-08-12',
                                                 end_date = '2019-08-18', player_type = 'batter')

date81982519 = baseballr::scrape_statcast_savant(start_date = '2019-08-19',
                                                 end_date = '2019-08-25', player_type = 'batter')

date82690119 = baseballr::scrape_statcast_savant(start_date = '2019-08-26',
                                                 end_date = '2019-09-01', player_type = 'batter')

date90290819 = baseballr::scrape_statcast_savant(start_date = '2019-09-02',
                                                 end_date = '2019-09-08', player_type = 'batter')

date90991519 = baseballr::scrape_statcast_savant(start_date = '2019-09-09',
                                                 end_date = '2019-09-15', player_type = 'batter')

date91692219 = baseballr::scrape_statcast_savant(start_date = '2019-09-16',
                                                 end_date = '2019-09-22', player_type = 'batter')

date92392919 = baseballr::scrape_statcast_savant(start_date = '2019-09-23',
                                                 end_date = '2019-09-29', player_type = 'batter')


# Importing all of 2020
date72380220 = baseballr::scrape_statcast_savant(start_date = '2020-07-23',
                                                 end_date = '2020-08-02', player_type = 'batter')

date80380920 = baseballr::scrape_statcast_savant(start_date = '2020-08-03',
                                                 end_date = '2020-08-09', player_type = 'batter')

date81081620 = baseballr::scrape_statcast_savant(start_date = '2020-08-10',
                                                 end_date = '2020-08-16', player_type = 'batter')

date81782320 = baseballr::scrape_statcast_savant(start_date = '2020-08-17',
                                                 end_date = '2020-08-23', player_type = 'batter')

date82483020 = baseballr::scrape_statcast_savant(start_date = '2020-08-24',
                                                 end_date = '2020-08-30', player_type = 'batter')

date83190620 = baseballr::scrape_statcast_savant(start_date = '2020-08-31',
                                                 end_date = '2020-09-06', player_type = 'batter')

date90791320 = baseballr::scrape_statcast_savant(start_date = '2020-09-07',
                                                 end_date = '2020-09-13', player_type = 'batter')

date91492020 = baseballr::scrape_statcast_savant(start_date = '2020-09-14',
                                                 end_date = '2020-09-20', player_type = 'batter')

date92192720 = baseballr::scrape_statcast_savant(start_date = '2020-09-21',
                                                 end_date = '2020-09-27', player_type = 'batter')

date92892920 = baseballr::scrape_statcast_savant(start_date = '2020-09-28',
                                                 end_date = '2020-09-29', player_type = 'batter')


# Importing all of 2021
date40141121 = baseballr::scrape_statcast_savant(start_date = '2021-04-01',
                                                 end_date = '2021-04-11', player_type = 'batter')

date41241821 = baseballr::scrape_statcast_savant(start_date = '2021-04-12',
                                                 end_date = '2021-04-18', player_type = 'batter')

date41942521 = baseballr::scrape_statcast_savant(start_date = '2021-04-19',
                                                 end_date = '2021-04-25', player_type = 'batter')

date42650221 = baseballr::scrape_statcast_savant(start_date = '2021-04-26',
                                                 end_date = '2021-05-02', player_type = 'batter')

date50350921 = baseballr::scrape_statcast_savant(start_date = '2021-05-03',
                                                 end_date = '2021-05-09', player_type = 'batter')

date51051621 = baseballr::scrape_statcast_savant(start_date = '2021-05-10',
                                                 end_date = '2021-05-16', player_type = 'batter')

date51752321 = baseballr::scrape_statcast_savant(start_date = '2021-05-17',
                                                 end_date = '2021-05-23', player_type = 'batter')

date52453021 = baseballr::scrape_statcast_savant(start_date = '2021-05-24',
                                                 end_date = '2021-05-30', player_type = 'batter')

date53160621 = baseballr::scrape_statcast_savant(start_date = '2021-05-31',
                                                 end_date = '2021-06-06', player_type = 'batter')

date60761321 = baseballr::scrape_statcast_savant(start_date = '2021-06-07',
                                                 end_date = '2021-06-13', player_type = 'batter')

date61462021 = baseballr::scrape_statcast_savant(start_date = '2021-06-14',
                                                 end_date = '2021-06-20', player_type = 'batter')

date62162721 = baseballr::scrape_statcast_savant(start_date = '2021-06-21',
                                                 end_date = '2021-06-27', player_type = 'batter')

date62870421 = baseballr::scrape_statcast_savant(start_date = '2021-06-28',
                                                 end_date = '2021-07-04', player_type = 'batter')

date70571121 = baseballr::scrape_statcast_savant(start_date = '2021-07-05',
                                                 end_date = '2021-07-11', player_type = 'batter')

date71271821 = baseballr::scrape_statcast_savant(start_date = '2021-07-12',
                                                 end_date = '2021-07-18', player_type = 'batter')

date71972521 = baseballr::scrape_statcast_savant(start_date = '2021-07-19',
                                                 end_date = '2021-07-25', player_type = 'batter')

date72680121 = baseballr::scrape_statcast_savant(start_date = '2021-07-26',
                                                 end_date = '2021-08-01', player_type = 'batter')

date80280821 = baseballr::scrape_statcast_savant(start_date = '2021-08-02',
                                                 end_date = '2021-08-08', player_type = 'batter')

date80981521 = baseballr::scrape_statcast_savant(start_date = '2021-08-09',
                                                 end_date = '2021-08-15', player_type = 'batter')

date81682221 = baseballr::scrape_statcast_savant(start_date = '2021-08-16',
                                                 end_date = '2021-08-22', player_type = 'batter')

date82382921 = baseballr::scrape_statcast_savant(start_date = '2021-08-23',
                                                 end_date = '2021-08-29', player_type = 'batter')

date83090521 = baseballr::scrape_statcast_savant(start_date = '2021-08-30',
                                                 end_date = '2021-09-05', player_type = 'batter')

date90691221 = baseballr::scrape_statcast_savant(start_date = '2021-09-06',
                                                 end_date = '2021-09-12', player_type = 'batter')

date91391921 = baseballr::scrape_statcast_savant(start_date = '2021-09-13',
                                                 end_date = '2021-09-19', player_type = 'batter')

date92092621 = baseballr::scrape_statcast_savant(start_date = '2021-09-20',
                                                 end_date = '2021-09-26', player_type = 'batter')

date92710421 = baseballr::scrape_statcast_savant(start_date = '2021-09-27',
                                                 end_date = '2021-10-04', player_type = 'batter')


# Creating a data frame for each year
SavantData17 = rbind(date40240917, date41041617, date41742317, date42443017, date50150717,
               date50851417, date51552117, date52252817, date52960417, date60561117,
               date61261817, date61962517, date62670217, date70370917, date71071617,
               date71772317, date72473017, date73180617, date80781317, date81482017,
               date82182717, date82890317, date90491017, date91191717, date91892417,
               date92510117)

SavantData18 = rbind(date32940818, date40941518, date41642218, date42342918, date43050618, 
               date50751318, date51452018, date52152718, date52860318, date60461018, 
               date61161718, date61862418, date62570118, date70270818, date70971518, 
               date71672218, date72372918, date73080518, date80681218, date81381918, 
               date82082618, date82790218, date90390918, date91091618, date91792318,
               date92493018)

SavantData19 = rbind(date32840719, date40841419, date41542119, date42242819, date42950519, 
               date50651219, date51351919, date52052619, date52760219, date60360919, 
               date61061619, date61762319, date62463019, date70170719, date70871419,
               date71572119, date72272819, date72980419, date80581119, date81281819,
               date81982519, date82690119, date90290819, date90991519, date91692219,
               date92392919)

SavantData20 = rbind(date72380220, date80380920, date81081620, date81782320, date82483020,
               date83190620, date90791320, date91492020, date92192720, date92892920)

SavantData21 = rbind(date40141121, date41241821, date41942521, date42650221, date50350921,
               date51051621, date51752321, date52453021, date53160621, date60761321, 
               date61462021, date62162721, date62870421, date70571121, date71271821,
               date71972521, date72680121, date80280821, date80981521, date81682221,
               date82382921, date83090521, date90691221, date91391921, date92092621,
               date92710421)

# Create one large dataframe containing the yearly data frames
SavantData = rbind(SavantData17, SavantData18, SavantData19, SavantData20, SavantData21)

# Connecting a database
db = dbConnect(SQLite(), dbname = "Savant.sqlite")

# Write savant tables to the database
dbWriteTable(conn = db, name = "Savant_Hitting", SavantData, overwrite = T, row.names = F)

#Query to ensure db is working
dbGetQuery(conn = db, "SELECT * FROM Savant_Hitting; ORDER BY launch_speed; WHERE launch_speed IS NOT NULL; LIMIT 5")

# Write the query to the dataframe
SavantData = dbGetQuery(conn = db, "SELECT * FROM Savant_Hitting")

# Query that finds pitches with the weakest hit balls
SavantData %>%
  select(player_name, launch_speed, pitch_type) %>%
  filter(launch_speed != 'NA', pitch_type != 'NA',
         pitch_type != 'PO') %>%
  group_by(pitch_type) %>%
  summarise(AvgEV = mean(launch_speed)) %>%
  arrange(desc(AvgEV))
