# ujian akhir coursera data analtik

# loading the data

bars_df <- read.csv("flavors_of_cacao.csv")

# view the data and get to know the columns

colnames(bars_df)

#filtering the data

bars_df %>% rename(maker = Company...Maker.if.known.)

trimmed_flavors_df <- bars_df %>% select(Rating, Cocoa.Percent, Company...Maker.if.known.)

trimmed_flavors_df %>% 
  group_by(Company...Maker.if.known.) %>% 
  summarize(sd(Rating))

# atau

trimmed_flavors_df %>% summarise(sd(Rating
                                    ))
# lalu membuat variable baru

best_trimmed_flavors_df <- trimmed_flavors_df %>% 
  filter(trimmed_flavors_df$Cocoa.Percent >= "75%" & Rating > 3.9)

best_trimmed_flavors_df2 <- bars_df %>% 
  filter(trimmed_flavors_df$Cocoa.Percent >= "75%" & Rating > 3.9)

# analyzing and visualization

ggplot(data = best_trimmed_flavors_df) + geom_bar(mapping = aes(x=Company...Maker.if.known.))

ggplot(data = best_trimmed_flavors_df2) +
  
  geom_bar(mapping = aes(x = Company.Location, color=Rating, fill = Cocoa.Percent))


