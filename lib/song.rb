require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []
  @songs = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist= (artist)
    @artist = artist
    artist.songs << self
  end
  
  def songs
    @songs << self
  end
  
  def self.new_by_filename(filename)
    
    @name = filename.split("-")
    song = Song.new(name[1].strip)
    #song.artist= (Artist.new(name[0].strip))
#binding.pry
  end
  
  # def artist_name=(name)
  #   @artist_name = artist_name
  # end
  
  def self.all
    @@all
  end
end