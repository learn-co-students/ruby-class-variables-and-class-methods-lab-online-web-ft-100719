class Song
  attr_accessor :name, :artist, :genre
  @@SONG_HASH = {
    @@COUNT => 0,
    @@ARTISTS => [],
    @@GENRES => []
  }
  
  def initialize (name, artist_name, genre_name)
    self.name = name
    self.artist = artist_name
    self.genre = genre_name
    @@SONG_HASH[@@COUNT] += 1
    @@SONG_HASH[@@ARTIST] << artist_name
    @@SONG_HASH[@@GENRES] << genre_name
  end
  
  def self.count
    @@SONG_HASH[@@COUNT]
  end
  
  def self.artists
    @@SONG_HASH[@@ARTISTS].uniq
  end
  
  def self.genres
    @@SONG_HASH[@@GENRES].uniq
  end
  
  def self.genre_count
    genre_count_hash = {}
    @@SONG_HASH[@@GENRES].each do |genre|
      genre_count_hash[:"#{genre}"] = 1 if genre_count_hash[genres] == nil
      genre_count_hash[:"#{genre}"] += 1
    end
    genre_count_hash
  end
  
   def self.artist_count
    artist_count_hash = {}
    @@SONG_HASH[@@ARTISTS].each do |artist|
      artist_count_hash[:"#{artist}"] = 1 if artist_count_hash[artists] == nil
      artist_count_hash[:"#{artist}"] += 1
    end
    artist_count_hash
  end
  
end