class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = [] #This should only contain unique artists
  @@genres = [] #this should only contain unique genres

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  #Returns an array of all of the genres of existing songs
  def self.genres
    @@genres.uniq!
  end
  #Returns an array of all of the artists of the existing songs
  def self.artists
    @@artists.uniq!
  end

  #That returns a histogram similar to genre_count, but for artists rather than genres.
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

  #Returns a hash in which the keys are the names of each genre. Each genre name
  #key should point to a value that is the number of songs that have that genre.
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end


end
