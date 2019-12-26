require 'pry'
class Song
  attr_accessor :name, :artist
  
  @songs = []
  def initialize(name)
    @name = name
    
  end
  
  def artist= (artist)
    @artist = artist
    artist.songs << self
  end
  
  
  
end