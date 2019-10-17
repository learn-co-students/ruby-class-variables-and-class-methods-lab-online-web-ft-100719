class Song

attr_accessor :name, :artist, :genre

@@count=0
@@genres=[]
@@artists=[]

  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@genres<<@genre
    @@artists<<@artist
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists=[]
    @@artists.uniq.each do |artist|
      unique_artists<<artist #found .uniq method which is so much cooler than this: #unless unique_artists.include?(artist)
    end
    unique_artists
  end

  def self.genres
    unique_genres=[]
    @@genres.uniq.each do |genre|
      unique_genres<< genre #see the note above, yo! #unless unique_genres.include?(genre)
    end
    unique_genres
  end


  def self.genre_count
    genreshash={}
    @@genres.uniq.each do |genre|
      genreshash[genre]= @@genres.count{|g| g == genre} #.count with block will return with number of times the code evaluates to true
    end
    genreshash
  end

  def self.artist_count
    artists_hash={}
    @@artists.each do |artist|
      artists_hash[artist]= @@artists.count{|a| a== artist}
    end
    artists_hash
  end



end
