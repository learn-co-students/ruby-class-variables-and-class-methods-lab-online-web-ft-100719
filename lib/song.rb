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
    x=0
    y=0
    @@genres.each do |k, v|
      while x!=@@genres.length
        if @@genres[k]!=@@genres[x]
        genrehash[k] << @@genres[k]
        y += 1
        genrehash[k][v] << y
        else
        genrehash[k][v] += 1
        end
      end
    end
    return genrehash
  end
end