require 'pry'

class Song

attr_accessor :name, :artist, :genre  
@@count=0
@@artists=[]
@@genres=[]
@@genre_count={}
@@artist_count={}


  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@artists<< artist
    @@genres<< genre
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

  def self.artist_count
    counted_artists={}
    @@artists.each do |artist|
      counted_artists[artist]
      if counted_artists[artist]
        counted_artists[artist]+=1
      else
        counted_artists[artist]=1
      end
    end
    counted_artists
  end
  
  def self.genre_count
    counted_genres={}
    @@genres.each do |genre|
      counted_genres[genre]
      if counted_genres[genre]
        counted_genres[genre]+=1
      else
        counted_genres[genre]=1
      end
    end
    counted_genres
  end
  
end