tracks_per_year <- read.csv("~/Dropbox/ad2/ad2-problema2/tracks_per_year.txt", header=FALSE)


i_decade <- 1920;
f_decade <- 1930;
h <- hash();
while( i_decade < 2010 ){
  
  dec_tracks <- subset(tracks_per_year, strtoi(tracks_per_year$V1) < f_decade & 
                                        strtoi(tracks_per_year$V1) >= i_decade);
  
  print(i_decade);
  
    if(!has.key(toString(i_decade), h)){
        .set(h, toString(i_decade), nrow(dec_tracks));
    }
  
  i_decade <- i_decade + 10;
  f_decade <- f_decade + 10;
  
}






print(h);






