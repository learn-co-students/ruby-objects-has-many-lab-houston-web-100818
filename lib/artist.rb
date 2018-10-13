class Artist
    
    attr_accessor :name, :songs

    def initialize(name)
        self.name = name 
        @songs = []
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
        @songs << song
    end

    def self.song_count
        Song.all.length
    end

end 