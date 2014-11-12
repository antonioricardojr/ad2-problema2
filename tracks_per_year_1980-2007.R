tracks_per_year_1980.2007 <- read.csv("~/Dropbox/ad2/ad2-problema2/dados/tracks_per_year/tracks_per_year_1980-2007.txt", quote="")

summary(tracks_per_year_1980.2007)

track_n <- 1:nrow(tracks_per_year_1980.2007)
years <- levels(factor(tracks_per_year_1980.2007$year))
count_track_years <- count(tracks_per_year_1980.2007, vars = "year")

d <- ggplot(data=count_track_years, aes(year,freq))+ geom_line(size = 2)
d
