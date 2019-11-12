class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@genres=[]
  @@artists=[]
  def initialize(name,artist,genre)
    @@count+=1
    @name=name
    @artist=artist
    @genre=genre
    @@artists<<@artist
    @@genres<<@genre
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
    genre_count={}
    @@genres.each do |x|
      if genre_count[x]
        genre_count[x]+=1
      else genre_count[x]=1
      end
    end
    genre_count
  end
  def self.artist_count
    artist_count={}
    @@artists.each do |art|
      if artist_count[art]
        artist_count[art]+=1
      else
        artist_count[art]=1
      end
    end
    artist_count
  end
end
