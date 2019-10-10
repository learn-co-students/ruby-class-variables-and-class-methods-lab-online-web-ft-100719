class Song
  attr_accessor :name
  attr_reader :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def name= (name)
    @name = name
  end

  def self.count
    @@count
  end

  def artist=(artist)
    if @artist != nil
      @@artist_count[artist] -= 1
      if @@artist_count[artist] <= 0
        @@artists = @@artists.reject{|included_artist| included_artist == artist}
      end
    end
    @artist = artist
    @@artists << artist
    if !@@artist_count.has_key?(artist)
      @@artist_count[artist] = 1
    else
      @@artist_count[artist] += 1
    end
  end

  def genre=(genre)
    if @genre != nil
      @@genre_count[genre] -= 1
      if @@genre_count[genre] <= 0
        @@genres = @@genres.reject{|included_genre| included_genre == genre}
      end
    end
    @genre = genre
    @@genres << genre
    if !@@genre_count.has_key?(genre)
      @@genre_count[genre] = 1
    else
      @@genre_count[genre] += 1
    end
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    @@count += 1
  end
end
