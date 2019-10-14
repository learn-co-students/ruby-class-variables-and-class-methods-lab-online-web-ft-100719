class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1

        @@artists.push(artist)
        @@genres.push(genre)
    end

    def self.count
        @@count
    end

    def self.genres
        unique_genres = []

        @@genres.each { |genre|
            if unique_genres.include?(genre) == false
                unique_genres.push(genre)
            end
        }
        unique_genres
    end

    def self.artists
        unique_artists = []

        @@artists.each { |artist|
            if unique_artists.include?(artist) == false
                unique_artists.push(artist)
            end
        }
        unique_artists
    end

    def self.genre_count
        genre_count = {}

        @@genres.each { |genre|
            if genre_count.key?(genre)
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        }
        genre_count
    end

    def self.artist_count
        artist_count = {}

        @@artists.each { |artist|
            if artist_count.key?(artist)
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        }
        artist_count      
    end

end