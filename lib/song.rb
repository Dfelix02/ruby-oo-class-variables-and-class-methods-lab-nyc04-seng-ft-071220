require "pry"
class Song
    @@count = 0
    @@artists = []
    @@genres = []
    attr_reader :name, :artist, :genre
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count+=1
        @@artists << artist
        @@genres << genre
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
        genre_hash = {}
        @@genres.each do |genre|
            counter = @@genres.count(genre)
           if !genre_hash.key?(genre) 
                genre_hash[genre] = counter
           end
        end
        genre_hash
    end 

    
    def self.artist_count
        artists_hash = {}
        @@artists.each do |artist|
            counter = @@artists.count(artist)
           if !artists_hash.key?(artist) 
                artists_hash[artist] = counter
           end
        end
        artists_hash
    end

end