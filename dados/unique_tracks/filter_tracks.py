unique_tracks = open('unique_tracks.txt')


lines = unique_tracks.readlines()

num_lines  = sum(1 for line in lines)

unique_tracks.close()

print num_lines