
class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        #@genre = genre
        @@all << self
    end

    def self.all 
        @@all 
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def new_song(title, genre)
        Song.new(title, self, genre)
    end

    def genres
        Song.all.map do |song|
            song.genre
        end
    end



end
