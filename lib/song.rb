class Song 
 
 attr_accessor :name, :artist, :genre
 
 @@count = 0
 @@artist = []
 @@genres = []
 
 def initailize(song_name,artist,genre)
 @name = song_name
 @genre = genre
 @count += 1
 @@artist << artist
 @@genre << genre
 end

 def self.count
   @@count
 end

 def self.artest
  @@artist.uniq
 end

 def self.genre
   @@genre.uniq
 end
 
 def self.genre_count
    genre_count = {}.new(0)
    @@genre.each {|genre| genre_count[genre] += 1}
    genre_coun
 end   

 def self.artist_count
    artist_count = {}.new(0)
    @@artist.each {|artist| artist_count[artist] += 1}
    art_count
 end   
end

  