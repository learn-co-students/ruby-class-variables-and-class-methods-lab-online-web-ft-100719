class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def name= (name)
    @name = name
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
  def self.array_counter(array)
    array.reduce({})do |memo, item|
      if memo.has_key?(item)
        memo[item] += 1
      else
        memo[item] = 1
      end
      memo
    end
  end

  def self.genre_count
    self.array_counter(@@genres)
  end

  def self.artist_count
    self.array_counter(@@artists)
  end

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    @@artists << artist
    self.genre = genre
    @@genres << genre
    @@count += 1
  end
end
