class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1
    
    unless @@genres.include?(genre)
      @@genre_count[genre] = 1
    else
      temp_count = @@genre_count[genre]
      temp_count += 1
      @@genre_count[genre] = temp_count
    end

    unless @@artists.include?(artist)
      @@artist_count[artist] = 1
    else
      temp_count = @@artist_count[artist]
      temp_count += 1
      @@artist_count[artist] = temp_count
    end
    
    @@genres << genre
    @@artists << artist
    
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists = @@artists.uniq
    @@artists
  end
  
  def self.genres 
    @@genres = @@genres.uniq
    @@genres
  end
  
  def self.genre_count
    @@genre_count
  end
  
  def self.artist_count
    @@artist_count
  end
end