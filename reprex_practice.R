# --- Practice Reprexes

# making a git repo thru terminal
# 1. navigate to the project you want to make a repo
# "git init"
# then git add -A
# git commit -m "message"
# go and create a repo on github with the same name as the one created here (in terminal) 
# then do "git remote add origin 'paste url here'" 
# then do "git push -u origin main" 
# after that, 


library(tidyverse)
library(palmerpenguins)

# OG data/code (NOT a reprex)
penguins |> 
  select(species, body_mass_g, flipper_length_mm, year) |>
  filter(species == "Chinstrap") |> 
  str_to_lower(species) |> 
  group_by(islands) |> 
  summarize(mean(body_mass_g, na.rm = TRUE), 
            mean(flipper_length_mm, na.rm = TRUE))

# Reprex
library(tidyverse)
library(reprex)

# 1. use base R data set that is similar to your data (has character data, etc.)
View(warpbreaks)

warpbreaks |> 
  str_to_lower(wool)


# Fixing reprex

library(tidyverse)

lower_wool_warpbreaks <- warpbreaks |>
  mutate(wool = str_to_lower(wool))

View(lower_wool_warpbreaks)


# Reprex with synthesized data

library(tidyverse)

example_data <- data.frame(island = c("Torgerson", "Torgerson"), 
                           species = c("Adelie", "Chinstrap"), 
                           body_mass_g = c(3500, 3700))
example_data |> 
  mutate(species = str_to_lower(species))


