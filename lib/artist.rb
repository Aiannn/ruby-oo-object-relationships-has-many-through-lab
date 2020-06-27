class Artist
    attr_accessor :name, :genre 
    @@all = []

    def initialize(name)
        @name = name 
        @@all.push(self)
    end     

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end
    
    def songs
        Song.all.find_all do |element|
            element.artist == self
        end      
    end 
    
    def genres
        self.songs.collect do |element|
            element.genre 
        end 
    end         

end 
