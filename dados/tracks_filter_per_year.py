in_year = raw_input("year: ")

tracks_per_year= open('tracks_per_year.txt')

tracks_per_year_filtered = open('tracks_filtered' + '_in' + in_year + '.txt', 'w') 

head = "year, track_id, track_artist, track_name\n"
tracks_per_year_filtered.write(head)

in_year = int(in_year)


lines = tracks_per_year.readlines()


count_lines = 0
count_lines_filtered = 0

for line in lines:
	prefix = line[0:4]
	
	count_lines += 1
	if(prefix.isdigit()):
		
		year = int(prefix)

		if(year == in_year):
			tracks_per_year_filtered.write(line)
			count_lines_filtered += 1

tracks_per_year.close()
tracks_per_year_filtered.close()

print count_lines
print count_lines_filtered