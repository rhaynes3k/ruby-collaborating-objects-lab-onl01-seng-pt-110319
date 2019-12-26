require 'pry'
class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    #binding.pry
  end
  
  def self.all
    @@all
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs << song
  end
  
  def self.find_or_create_by_name(name)
    if @@all.find {|art|art == name}
      name
    else
      artist = Artist.new(name)
    end
      #binding.pry
  end
  #binding.pry
end