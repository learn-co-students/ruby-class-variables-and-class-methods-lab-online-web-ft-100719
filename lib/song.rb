require 'pry'
class Song
  attr_accessor :name,:artist,:genre
  @@count = 0 
  @@genres = Array.new
  @@artists = Array.new
  
  def initialize(name,artist,genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @genre=genre
    @artist=artist
    @name=name
  end
 
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genrehash={}
    @@genres.each do |k|
      #binding.pry
      genrehash[k]=@@genres.count(k)
    end
    return genrehash
  end
  
  def self.artist_count
    artisthash={}
    @@artists.each do |k|
      #binding.pry
      artisthash[k]=@@artists.count(k)
    end
    return artisthash
  end
end