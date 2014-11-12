#tracks_per_year$decade <- cut(tracks_per_year$V1, breaks = seq(from = 1920, to = 2010, by=10), include.lowest = TRUE);
#tracks_per_year$decade
#tracks_per_year_sub <- subset(tracks_per_year, as.integer(year) < 1960)
#edit(tracks_per_year)
#tracks_per_year_sub <- tracks_per_year[1:5000,]
#summary(tracks_per_year_sub)

#18028 observacoes.Numero de observacoes correto.
#tracks_per_year_filtered_before1970 <- read.csv("~/Dropbox/ad2/ad2-problema2/dados/tracks_per_year_filtered_before1970.txt", quote="")

f <- factor(tracks_per_year_1922_1960$track_artist)
artists <- levels(f)

count_artists <- count(tracks_per_year_1922_1960, vars="track_artist")


#importate!!
#df <- subset(tracks_per_year_1922_1960, summary(tracks_per_year_1922_1960$track_artist))

df <- as.data.frame(count_artists)
df <- df[order(df$freq, decreasing=TRUE),]
head_df <- head(df)

df_julie <- subset(tracks_per_year_1922_1960, track_artist == head_df$track_artist[1])
df_elvis <- subset(tracks_per_year_1922_1960, track_artist == head_df$track_artist[2])
df_frank <- subset(tracks_per_year_1922_1960, track_artist == head_df$track_artist[3])
df_johnny <- subset(tracks_per_year_1922_1960, track_artist == head_df$track_artist[4])
df_tom <- subset(tracks_per_year_1922_1960, track_artist == head_df$track_artist[5])
df_thelonious <- subset(tracks_per_year_1922_1960, track_artist == head_df$track_artist[6])



d <- ggplot(data=df_elvis, aes(year, freq)) + geom_point(size=2)

#d60_80 <- ggplot(data=count_tracks_years, aes(year, freq)) + geom_line(size=2)

  
sort(count_artists)

sum(count_artists$freq)

artists_by_year

length(artists)
