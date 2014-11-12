#tracks_per_year_1922_1960 <- read.csv("~/Dropbox/ad2/ad2-problema2/dados/tracks_per_year/tracks_per_year_1922-1960.txt", quote="")


track_n <- 1:nrow(tracks_per_year_1922_1960)

years <- levels(factor(tracks_per_year_1922_1960$year))

count_track_years <- count(tracks_per_year_1922_1960, vars = "year")  

d22_60 <- ggplot(data=count_track_years, aes(year,freq))+ geom_line(size=2)

