
library(tidyverse)
library(readr)
library(ggplot2)

col_defs <- cols(location_name = col_character(),
                 site_name = col_character(),
                 trip_code = col_character(),
                 trip_year = col_integer(),
                 reef_name = col_character(),
                 reef_type = col_character(),
                 set_code = col_character(),
                 maxn = col_integer(),
                 common_name = col_character(),
                 genus = col_character(),
                 species = col_character(),
                 species_group = col_character(),
                 family = col_character(),
                 event_time_mil = col_integer(),
                 event_time_mins = col_character(),
                 set_lat = col_double(),
                 set_long = col_double(),
                 visibility = col_integer(),
                 depth = col_double(),
                 bait = col_character(),
                 current_flow_estimated = col_character())

BRUVS_data <- read_csv("data/FLkeys_maxn_obs.csv", 
                       col_types = col_defs)


ggplot(data = BRUVS_data) + 
  geom_point(aes(x = set_long, y = set_lat, color = trip_year)) +
  theme(legend.position = "none")

BRUVS_data %>% filter(trip_year == 2016) -> data_2016

ggplot(data = data_2016) + 
  geom_point(aes(x = set_long, y = set_lat)) 
#  theme(legend.position = "none")


head(too.south) %>% data.frame()

FL1_004 <- BRUVS_data %>% filter(set_code == "FL1_004")
summary(FL1_004)
