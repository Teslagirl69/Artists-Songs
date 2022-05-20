#Создаем класс Артиста
class Artist
#Создаем атрибуты класса Артист
attr_reader :name, :albums
	#конструктор
	def initialize (name) 
		@name = name
		@albums = []
	end
	#Создаем метод добавления альбома к артисту
	def add_album (album)
		@albums << album
	end

end

#Создаем класс музыкальный альбом
class Album
attr_reader :name, :songs
	#конструктор
	def initialize (name) 
		@name = name
		@songs = []
	end
	#Создаем метод добавления песни в альбом
	def add_song (song)
		songs << song
	end
end
#Создаем класс песни
class Song
attr_reader :name, :duration
	#конструктор
	def initialize (name, duration)
		@name = name
		@duration = duration
	end
	
end

#Создаем артистов, добавляем их в массив артистов artists
artists = []

arist_Adele = Artist.new ('Adele')
arist_Gaga = Artist.new ('Lady Gaga')
arist_ACDC = Artist.new ('AC/DC')

artists << arist_Adele
artists << arist_Gaga
artists << arist_ACDC


#Создаем альбомы

album1_adele = Album.new ('25')
album2_adele = Album.new ('30')

album1_gaga = Album.new ('The Fame')
album2_gaga = Album.new ('Born This Way')

album1_acdc = Album.new ('Highway to Hell')
album2_acdc = Album.new ('Back in Black')

#Добавляем альбомы

arist_Adele.add_album album1_adele
arist_Adele.add_album album2_adele

arist_Gaga.add_album album1_gaga
arist_Gaga.add_album album2_gaga

arist_ACDC.add_album album1_acdc
arist_ACDC.add_album album2_acdc

#Создаем песни

song1_adele = Song.new('Hello', 6.06)
song2_adele = Song.new 'When We Were Young', 5.43
song3_adele = Song.new 'Easy On Me', 3.44
song4_adele = Song.new 'Woman Like Me',  5.00


song1_gaga = Song.new('Just Dance', 4.01)
song2_gaga = Song.new('Poker Face', 3.58)
song3_gaga = Song.new('Born This Way', 4.20)


song1_acdc = Song.new('Highway to Hell', 3.28)
song2_acdc = Song.new('Touch Too Much', 4.26)
song3_acdc = Song.new('Back in Black', 4.14)
song4_acdc = Song.new('You Shook Me All Night Long', 3.32)
song5_acdc = Song.new('Shoot to Thrill', 5.18)


#Добавляем песни в альбомы

album1_adele.add_song song1_adele 
album1_adele.add_song song2_adele
album2_adele.add_song song3_adele
album2_adele.add_song song4_adele


album1_gaga.add_song song1_gaga
album1_gaga.add_song song2_gaga
album2_gaga.add_song song3_gaga


album1_acdc.add_song song1_acdc
album1_acdc.add_song song2_acdc
album2_acdc.add_song song3_acdc
album2_acdc.add_song song4_acdc
album2_acdc.add_song song5_acdc

#Цикл
artists.each do |artist|
	puts ""
	puts "========================"
	puts "Artist: #{artist.name}"
	puts "========================"



artist.albums.each do |album|
	puts "------------------------"
	puts "Album: #{album.name}"
	puts "________________________"

album.songs.each do |song|
	puts "Song: #{song.name}"

	
end
end
end
