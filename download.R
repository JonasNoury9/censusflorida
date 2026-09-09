library(tidycensus)
library(tidyverse)

# Download 2020 Decennial Census race and ethnicity data (Table P2) by tract
sarasota_race <- get_decennial(
  geography = "tract",
  state = "FL",
  county = "Sarasota",
  table = "P2",
  year = 2020
)

# Save the downloaded data for analysis
write_rds(sarasota_race, "data/sarasota_race.rds")
