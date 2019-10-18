class Song
  attr_accessor :name, :artist, :genre
  @@artists = []
  @@genres = []
  @@count = 0
  
  def initialize(song_name, song_artist, song_genre)
    @name = song_name
    @artist = song_artist
    @genre = song_genre
    @@count += 1
    @@artists << song_artist
    @@genres << song_genre

  end
  
  def self.count
    @@count
  end
  
  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      if(!unique_artists.include?(artist))
        unique_artists << artist
      end
    end
    unique_artists
  end
  
  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      if(!unique_genres.include?(genre))
        unique_genres << genre
      end
    end
    unique_genres
  end
  
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      
      if(genre_hash.has_key?(genre))
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
      
    end
    genre_hash
  end
  
    def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      
      if(artist_hash.has_key?(artist))
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
      
    end
    artist_hash
  end
  
end












