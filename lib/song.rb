class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1 
    self.name = name 
    self.artist = artist 
    self.genre = genre
    @@genres << genre 
    @@artists << artist 
  end 
  
  def self.count
    @@count 
  end 
  
  def self.genres
    @@genres.uniq
  end 
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count 
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] != nil ? genre_count[genre] += 1 : genre_count[genre] = 1
    end
    genre_count
  end 
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] != nil ? artist_count[artist] += 1 : artist_count[artist] = 1
    end
    artist_count
  end
end 