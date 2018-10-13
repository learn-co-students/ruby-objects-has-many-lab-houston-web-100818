class Song

    attr_accessor :name, :artist, :artist_name

    @@all = []

    def initialize(name)
        self.name = name
        @@all << self 
    end

    def self.all 
        @@all 
    end 

    def artist_name
        if self.artist == nil
            return nil
        else 
            self.artist_name = self.artist.name
        end
    end

end