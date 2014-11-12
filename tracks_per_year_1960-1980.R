tracks_per_year_1960_1980 <- read.csv("~/Dropbox/ad2/ad2-problema2/dados/tracks_per_year/tracks_per_year_1960-1980.txt", quote="")

track_n <- 1: nrow(tracks_per_year_1960_1980)

years <- levels(factor(tracks_per_year_1960_1980$year))

count_tracks_years <- count(tracks_per_year_1960_1980, var="year")


d60_80 <- ggplot(data=count_tracks_years, aes(year, freq)) + geom_line(size=2)

#checando o numero de observacoes em 1960
num_obs_1960 <- nrow(subset(tracks_per_year_1960_1980, year == 1960))
num_obs_1960