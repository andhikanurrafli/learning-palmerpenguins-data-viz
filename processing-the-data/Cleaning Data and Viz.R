# Select and filtering dataset

library(tidyverse)
library(palmerpenguins)

# diliat dulu datanya

data("penguins")
view(penguins)

# baru lakukan cleaning

penguins_with_no_species <- penguins %>% 
  select(-species) %>% rename(island_new=island)

penguins %>% 
  rename(island_new=island)

rename_with(penguins,toupper)


# arranging and filtering

big_penguins <- penguins %>% 
  select(species,island, body_mass_g, year) %>% 
  filter(penguins$body_mass_g >= 4000)

# analyzing

big_penguins %>% summarise(sd(body_mass_g))

# visualisation

ggplot(data = big_penguins) + 
  geom_bar(mapping = aes(x=species, color=species, fill= species)) + 
  labs(title= "Big Penguins", subtitle = "penguin species in palmer's penguins data that has body mass over 4000 grams",
       caption = "Data Collected by Dr. Kristen Gorman")+
  annotate("text", x = 1.5, y = 78, label = "Gentoos are the largest")

# saving your viz

ggsave("Palmer Penguins size.png")
