class Artist

    attr_accessor :name, :songs

    def initialize(name)
        self.name = name
        @songs = []
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)  #creating a new song with the arg
        @songs << song
        song.artist = self          #associating the song and the artist
    end

    def self.song_count
        Song.all.length  #ret total num of songs associated to all existing artists
    end


end