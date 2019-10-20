class Song 
  attr_accessor :name ,:artist ,:song

    @@count = 0
  @@artists = []
  @@genres = []      
  
  def initialize (name , artist , genre)
    
    @name = name
    @genre = genre
    @artist = artist
    @@count +=1
    @@genres << genre
    @@artists << artist
  end 
  
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

  def self.genres
    @@genres.uniq
  end