require 'pry'

class Artist

    attr_accessor :name
    @@all = []

    def initialize(name)
        self.name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        @songs
    end

    def add_song(song) #song = the instance of a song, not title
    #    s = Song.new(song)
       song.artist = self
       @songs << song
       #binding.pry
       #song.artist = self #you are in the "ARTIST" class, so use SELF instance to associate
    end
   # binding.pry

    def add_song_by_name(title)
        s = Song.new(title)
        s.artist = self
        @songs << s
       # song.artist = self
    end

    def self.song_count
        count = 0
        @@all.each do |artist|
            artist.songs.each do |song|
                count += 1
            end
        end
        count
   
        # binding.pry
    end







end