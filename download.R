library(tidycensus)
library(tidyverse)

# Download 2020 Decennial Census race and ethnicity data (Table P2) by tract
sarasota_race <- get_decennial(
  geography = "tract",
  state = "FL",
  county = "Sarasota",
  table = "P2",
  year = 2020,
  geometry = TRUE
)

# Save the downloaded data for analysis
write_rds(sarasota_race, "data/sarasota_race.rds")

# Download 2020 Decennial Census race data for Florida Panhandle counties
panhandle_counties <- c(
  "Escambia", "Santa Rosa", "Okaloosa", "Walton", "Holmes",
  "Washington", "Bay", "Jackson", "Calhoun", "Gulf",
  "Liberty", "Franklin", "Gadsden", "Leon", "Wakulla", "Jefferson"
)

panhandle_race <- get_decennial(
  geography = "tract",
  state = "FL",
  county = panhandle_counties,
  table = "P2",
  year = 2020,
  geometry = TRUE
)

write_rds(panhandle_race, "data/panhandle_race.rds")
