require 'pry'

class Artist

    attr_accessor :name, :song

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs 
        Song.all.select do |song_instance|
            song_instance.artist == self
        end
    end

    def add_song song
        song.artist = self 
    end

    def add_song_by_name song
        new_song = Song.new(song)
        add_song(new_song)
    end

    def self.song_count
        Song.all.length
    end

    


   


end

# binding.pry