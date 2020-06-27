class Genre 
    attr_accessor :name, :genre, :artist
    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end     
    
    def self.all
        @@all
    end 

    def songs 
        Song.all.find_all do |element|
            element.genre = self 
        end     
    end 
    
    def artists
        self.songs.map do |element|
            element.artist
        end 
    end 
end             
