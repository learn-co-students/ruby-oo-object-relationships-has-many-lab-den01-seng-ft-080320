class Song

    attr_accessor :artist, :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all
        @@all
    end

    #need to access the artist instance.name and set it to 
    def artist_name
        if @artist == nil
            nil
        else
            artist.name
        end

    end

end