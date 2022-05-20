class Album
attr_reader :name, :songs
	def initialize (name) 
	@name = name
	@songs = []


def add_song (song)
		songs << song
	end
	end
end

class Song
attr_reader :name, :duration
	def initialize (name, duration)
		@name = name
		@duration = duration
	end
	
end

albums = []
album1 = Album.new ('25')
album2 = Album.new ('30')
albums << album1
albums << album2



song1 = Song.new('Hello', 6.06)
song2 = Song.new 'When We Were Young', 5.43
song3 = Song.new 'Easy On Me', 3.44
song4 = Song.new 'Woman Like Me',  5.00

album1.add_song song1 
album1.add_song song2

album2.add_song song3
album2.add_song song4

albums.each do |album|
		puts "========================"
	puts "Album: #{album.name}"
		puts "________________________"

album.songs.each do |song|
	puts "Song: #{song.name}"
	
end
end
